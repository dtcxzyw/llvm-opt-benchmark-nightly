Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/websocket_2_handshaking?download=true
inline.NumInlined: 7371
inline.NumDeleted: 3125
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorppEv:bb.a
  store i8 0, ptr %i.e, align 8, !tbaa !712, !alias.scope !1974
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !712, !noalias !1974 ; 7 uses
  switch i8 %i.g, label %bb.b [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorppEi.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !620, !noalias !1974
  store ptr %i.h, ptr %i.c, align 8, !tbaa !620, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !620, !noalias !1974
  store ptr %i.i, ptr %i.c, align 8, !tbaa !620, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !620, !noalias !1974
  store ptr %i.j, ptr %i.c, align 8, !tbaa !620, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !620, !noalias !1974
  store ptr %i.k, ptr %i.c, align 8, !tbaa !620, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !620, !noalias !1974
  store ptr %i.l, ptr %i.c, align 8, !tbaa !620, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !620, !noalias !1974
  store ptr %i.m, ptr %i.c, align 8, !tbaa !620, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !620, !noalias !1974
  store ptr %i.n, ptr %i.c, align 8, !tbaa !620, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !620, !noalias !1974
  store ptr %i.o, ptr %i.c, align 8, !tbaa !620, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.d, align 8, !tbaa !84, !noalias !1974
  store i8 %i.p, ptr %i.c, align 8, !tbaa !84, !alias.scope !1974
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  store i8 %i.g, ptr %i.e, align 8, !tbaa !712, !alias.scope !1974
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorppEi.exit

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorppEi.exit: ; preds = %bb.a, %.sink.split.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !816, !noalias !1974 ; 4 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !816, !alias.scope !1974
  %i.t = zext nneg i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !1974
  store ptr %i.a, ptr %3, align 8, !tbaa !714, !noalias !1974
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !1974
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !1974
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !711
  %i.w = icmp eq ptr %i.b, %i.v
  br i1 %i.w, label %bb.l, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

bb.l:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorppEi.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.z = load i8, ptr %i.y, align 8, !tbaa !712
  %.not.i.i.i = icmp eq i8 %i.g, %i.z
  br i1 %.not.i.i.i, label %bb.m, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.aa = add nsw i8 %i.g, -1
  %switch.i.i.i.i.i = icmp ult i8 %i.aa, 8
  br i1 %switch.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i: ; preds = %bb.m
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !620
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !620
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i, %bb.m
  %i.ae = zext nneg i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store ptr %4, ptr %2, align 8, !tbaa !714
  %i.af = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !816
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !722
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 %i.aj)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorppEi.exit, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i, %bb.l
  %i.al = zext nneg i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  store ptr %4, ptr %1, align 8, !tbaa !714
  %i.am = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.an = extractvalue { ptr, i64 } %i.am, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i
  %.pn.i = phi i64 [ %i.ak, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i ], [ %i.an, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !822
  %i.aq = sub i64 %i.ap, %.pn.i
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !822
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %4 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %5 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %6 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %7 = alloca %"class.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator", align 8 ; 6 uses
  %8 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %9 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.c = load ptr, ptr %0, align 8, !tbaa !824, !nonnull !117, !align !141 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !1981
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !726, !noalias !1983
  store ptr %i.e, ptr %7, align 8, !tbaa !726, !noalias !1983
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !727, !noalias !1983
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.j = load i8, ptr %i.i, align 8, !tbaa !727, !noalias !1983
  %i.k = zext i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !1983
  store ptr %i.f, ptr %6, align 8, !tbaa !738, !noalias !1983
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.g, ptr %i.l, align 8, !tbaa !738, !noalias !1983
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc.i unwind label %bb.b, !noalias !1981

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !1983
  %i.m = load ptr, ptr %7, align 8, !tbaa !726, !noalias !1983
  store ptr %i.m, ptr %8, align 8, !tbaa !726, !alias.scope !1983
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !727, !alias.scope !1983
  %i.p = load i8, ptr %i.h, align 8, !tbaa !727, !noalias !1983
  %i.q = zext i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38, !noalias !1983
  store ptr %i.n, ptr %5, align 8, !tbaa !738, !noalias !1983
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.r, align 8, !tbaa !738, !noalias !1983
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !1983
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.u, align 8, !tbaa !740, !alias.scope !1983
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1981
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !726
  store ptr %i.w, ptr %i.v, align 8, !tbaa !726
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i8 0, ptr %i.y, align 8, !tbaa !727
  %i.z = load i8, ptr %i.o, align 8, !tbaa !727
  %i.aa = zext i8 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %i.x, ptr %4, align 8, !tbaa !738
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !738
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !740 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !740
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.ae = load ptr, ptr %0, align 8, !tbaa !824, !nonnull !117, !align !141 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40
  %11 = insertelement <2 x ptr> poison, ptr %10, i64 0
  %12 = insertelement <2 x ptr> %11, ptr %i.x, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit
  %i.ah = phi ptr [ %i.ac, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit ], [ %.pre, %bb.e ]
  %.011 = phi i64 [ %1, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit ], [ %i.au, %bb.e ] ; 4 uses
  %i.ai = icmp eq ptr %i.ah, %i.ae
  %.pre42 = load ptr, ptr %i.v, align 8, !tbaa !726 ; 2 uses
  br i1 %i.ai, label %bb.d, label %..noexc_crit_edge

..noexc_crit_edge:                                ; preds = %bb.c
  %.pre43 = load i8, ptr %i.y, align 8, !tbaa !727, !noalias !1984
  br label %.noexc

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq ptr %.pre42, %i.ae
  %.pre44 = load i8, ptr %i.y, align 8, !tbaa !727 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre44, 10
  %or.cond = select i1 %i.aj, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %.noexc

.noexc:                                           ; preds = %..noexc_crit_edge, %bb.d
  %i.ak = phi i8 [ %.pre43, %..noexc_crit_edge ], [ %.pre44, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  store ptr %.pre42, ptr %9, align 8, !tbaa !726, !alias.scope !1984
  store i8 0, ptr %i.af, align 8, !tbaa !727, !alias.scope !1984
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !1984
  store <2 x ptr> %12, ptr %3, align 16, !tbaa !738, !noalias !1984
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !1984
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !740, !noalias !1984
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !740, !alias.scope !1984
  %i.an = load i8, ptr %i.y, align 8, !tbaa !727, !noalias !1984
  %i.ao = zext i8 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !1984
  store ptr %i.v, ptr %2, align 8, !tbaa !729, !noalias !1984
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !1984
  %i.ap = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %.not = icmp ult i64 %i.aq, %.011
  br i1 %.not, label %bb.e, label %.thread37

.thread37:                                        ; preds = %.noexc
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !825
  %i.as = add i64 %i.ar, %.011
  store i64 %i.as, ptr %i.a, align 8, !tbaa !825
  %i.at = sub i64 %.011, %i.aq
  store i64 %i.at, ptr %i.b, align 8, !tbaa !826
  br label %.loopexit

bb.e:                                             ; preds = %.noexc
  %i.au = sub nuw i64 %.011, %i.aq
  %i.av = load i64, ptr %i.a, align 8, !tbaa !825
  %i.aw = add i64 %i.av, %i.aq
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !825
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !740
  br label %bb.c

.loopexit:                                        ; preds = %bb.d, %.thread37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !740  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %0, align 8, !tbaa !726
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !726
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !727
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !727   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = load i8, ptr %i.k, align 8, !tbaa !727
  %.not.i.i = icmp eq i8 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i8 %i.j, label %bb.d [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3
    i8 1, label %bb.e
    i8 2, label %.split7
    i8 3, label %.split6
    i8 4, label %.split5
    i8 5, label %.split4
    i8 6, label %.split
    i8 7, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit
    i8 8, label %.split9
    i8 9, label %.split8
    i8 10, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !658
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !658
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !659   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.u = load i8, ptr %i.t, align 8, !tbaa !659
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !246
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !246
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split7:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !620
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split6:                                          ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !620
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split5:                                          ; preds = %bb.c
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !620
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split4:                                          ; preds = %bb.c
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !620
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !620
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split9:                                          ; preds = %bb.c
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !620
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split8:                                          ; preds = %bb.c
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !620
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit: ; preds = %bb.c
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !620
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.split9, %.split8, %.split7, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit
  %i.aw = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store ptr %0, ptr %2, align 8, !tbaa !729
  %i.ax = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !740
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !736
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.az) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.i
  %i.be = sub i64 %i.az, %spec.select.i
end_hunk_0
begin_hunk_1_@_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_:bb.a
  %.fca.1.insert.i26 = insertvalue { ptr, i64 } %.fca.0.insert.i25, i64 %.sroa.2.0.copyload.i24, 1
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !1996, !nonnull !117, !align !141
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !620  ; 2 uses
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.y, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i29 = load i64, ptr %.sroa.2.0..sroa_idx.i28, align 8, !tbaa !81
  %.fca.0.insert.i30 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i27, 0
  %.fca.1.insert.i31 = insertvalue { ptr, i64 } %.fca.0.insert.i30, i64 %.sroa.2.0.copyload.i29, 1
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %1, align 8, !tbaa !1996, !nonnull !117, !align !141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !620 ; 2 uses
  %.sroa.0.0.copyload.i32 = load ptr, ptr %i.ab, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload.i34 = load i64, ptr %.sroa.2.0..sroa_idx.i33, align 8, !tbaa !81
  %.fca.0.insert.i35 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i32, 0
  %.fca.1.insert.i36 = insertvalue { ptr, i64 } %.fca.0.insert.i35, i64 %.sroa.2.0.copyload.i34, 1
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !1996, !nonnull !117, !align !141
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !620 ; 2 uses
  %.sroa.0.0.copyload.i37 = load ptr, ptr %i.ae, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.2.0.copyload.i39 = load i64, ptr %.sroa.2.0..sroa_idx.i38, align 8, !tbaa !81
  %.fca.0.insert.i40 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i37, 0
  %.fca.1.insert.i41 = insertvalue { ptr, i64 } %.fca.0.insert.i40, i64 %.sroa.2.0.copyload.i39, 1
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %1, align 8, !tbaa !1996, !nonnull !117, !align !141
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !620 ; 2 uses
  %.sroa.0.0.copyload.i42 = load ptr, ptr %i.ah, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i44 = load i64, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !81
  %.fca.0.insert.i45 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i42, 0
  %.fca.1.insert.i46 = insertvalue { ptr, i64 } %.fca.0.insert.i45, i64 %.sroa.2.0.copyload.i44, 1
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.81)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr @.str.79, ptr %3, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.80, ptr %i.ai, align 8, !tbaa !330
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 187, ptr %i.aj, align 8, !tbaa !331
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 64, ptr %i.ak, align 4, !tbaa !332
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #40
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %common.resume

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i46, %bb.n ], [ %i.j, %bb.f ], [ %.fca.1.insert.i, %bb.g ], [ %.fca.1.insert.i16, %bb.h ], [ %.fca.1.insert.i21, %bb.i ], [ %.fca.1.insert.i26, %bb.j ], [ %.fca.1.insert.i31, %bb.k ], [ %.fca.1.insert.i36, %bb.l ], [ %.fca.1.insert.i41, %bb.m ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEEC2ERKSQ_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %3 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %4 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %5 = alloca %"class.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator", align 8 ; 6 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 7 uses
  %7 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2020, !noalias !2021 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  store ptr %i.b, ptr %6, align 8, !tbaa !829, !alias.scope !2024
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !825, !noalias !2024
  store i64 %i.e, ptr %i.c, align 8, !tbaa !830, !alias.scope !2024
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !824, !noalias !2024, !nonnull !117, !align !141 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !2027
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !726, !noalias !2028
  store ptr %i.h, ptr %5, align 8, !tbaa !726, !noalias !2028
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !727, !noalias !2028
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.m = load i8, ptr %i.l, align 8, !tbaa !727, !noalias !2028
  %i.n = zext i8 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !2028
  store ptr %i.i, ptr %4, align 8, !tbaa !738, !noalias !2028
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.o, align 8, !tbaa !738, !noalias !2028
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.b, !noalias !2027

.noexc.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !2028
  %i.q = load ptr, ptr %5, align 8, !tbaa !726, !noalias !2028
  store ptr %i.q, ptr %i.p, align 8, !tbaa !726, !alias.scope !2028
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !727, !alias.scope !2028
  %i.t = load i8, ptr %i.k, align 8, !tbaa !727, !noalias !2028
  %i.u = zext i8 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !2028
  store ptr %i.r, ptr %3, align 8, !tbaa !738, !noalias !2028
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.v, align 8, !tbaa !738, !noalias !2028
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i.i.i, %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #39
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !2028
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.f, ptr %i.y, align 8, !tbaa !740, !alias.scope !2028
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !2027
  call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %i.z = load ptr, ptr %1, align 8, !tbaa !2020, !noalias !2031 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  store ptr %i.z, ptr %7, align 8, !tbaa !829, !alias.scope !2034
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !826, !noalias !2034
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !830, !alias.scope !2034
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !726, !noalias !2034
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !726, !alias.scope !2034
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.ai, align 8, !tbaa !727, !alias.scope !2034
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !727, !noalias !2034
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !2034
  store ptr %i.ag, ptr %2, align 8, !tbaa !738, !noalias !2034
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !738, !noalias !2034
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #39
  unreachable

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !2034
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !740, !noalias !2035
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !740, !alias.scope !2034
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEE4initINSP_14const_iteratorEEEvT_SU_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEE4initINSP_14const_iteratorEEEvT_SU_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %7 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !726
  store ptr %i.c, ptr %i.a, align 8, !tbaa !726
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  store i8 0, ptr %i.e, align 8, !tbaa !727
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !727
  %i.h = zext i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !738
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 11 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !738
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !740
  store ptr %i.x, ptr %i.j, align 8, !tbaa !740
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40
  %9 = insertelement <2 x ptr> poison, ptr %8, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %i.w, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.aa = load ptr, ptr %7, align 8, !tbaa !829
  %i.ab = load ptr, ptr %2, align 8, !tbaa !829
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !740
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !740
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !726
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !726
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = load i8, ptr %i.e, align 8, !tbaa !727  ; 2 uses
  %i.ak = load i8, ptr %i.o, align 8, !tbaa !727
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  switch i8 %i.aj, label %bb.g [
    i8 0, label %.critedge
    i8 1, label %bb.h
    i8 2, label %.split12
    i8 3, label %.split11
    i8 4, label %.split10
    i8 5, label %.split15
    i8 6, label %.split14
    i8 7, label %.split13
    i8 8, label %.split
    i8 9, label %bb.k
    i8 10, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !658
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !658
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.r, align 8, !tbaa !659  ; 2 uses
  %i.ap = load i8, ptr %i.s, align 8, !tbaa !659
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, %i.ap
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aq = add i8 %i.ao, -1
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aq, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %.critedge

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !246
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !246
  %i.as = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, %i.ar
  br i1 %i.as, label %.critedge, label %.thread

.split12:                                         ; preds = %bb.f
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !620
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !620
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.critedge, label %.thread

.split11:                                         ; preds = %bb.f
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !620
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !620
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %.critedge, label %.thread

.split10:                                         ; preds = %bb.f
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !620
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !620
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %.critedge, label %.thread

.split15:                                         ; preds = %bb.f
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !620
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !620
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %.critedge, label %.thread

.split14:                                         ; preds = %bb.f
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !620
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !620
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %.critedge, label %.thread

.split13:                                         ; preds = %bb.f
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !620
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !620
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %.critedge, label %.thread

.split:                                           ; preds = %bb.f
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !620
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !620
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %.critedge, label %.thread

bb.k:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !620
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !620
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %.critedge, label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %.split15, %.split14, %.split13, %.split12, %.split11, %.split10, %.split, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k
  %i.br = load i64, ptr %i.t, align 8, !tbaa !607
  %i.bs = icmp ult i64 %i.br, 64
  br i1 %i.bs, label %.noexc, label %.critedge

.noexc:                                           ; preds = %.thread
  %i.bt = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 1
  %i.bv = load i64, ptr %i.u, align 8, !tbaa !830
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bu) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bt, 0
  %i.bx = load i64, ptr %i.t, align 8, !tbaa !607
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx ; 2 uses
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !246
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %spec.select.i, ptr %i.bz, align 8, !tbaa !777
  %i.ca = load i64, ptr %i.v, align 8, !tbaa !608
  %i.cb = add i64 %i.ca, %spec.select.i
  store i64 %i.cb, ptr %i.v, align 8, !tbaa !608
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !726, !noalias !2039
  store ptr %i.cc, ptr %5, align 8, !tbaa !726, !alias.scope !2039
  store i8 0, ptr %i.y, align 8, !tbaa !727, !alias.scope !2039
  %i.cd = load i8, ptr %i.e, align 8, !tbaa !727, !noalias !2039
  %i.ce = zext i8 %i.cd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !2039
  store <2 x ptr> %10, ptr %4, align 16, !tbaa !738, !noalias !2039
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !2039
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !740, !noalias !2039
  store ptr %i.cf, ptr %i.z, align 8, !tbaa !740, !alias.scope !2039
  %i.cg = load i8, ptr %i.e, align 8, !tbaa !727, !noalias !2039
  %i.ch = zext i8 %i.cg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !2039
  store ptr %i.a, ptr %3, align 8, !tbaa !729, !noalias !2039
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !2039
  %i.ci = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.cj = extractvalue { ptr, i64 } %i.ci, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.ck = load i64, ptr %i.u, align 8, !tbaa !830
  %i.cl = sub i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.u, align 8, !tbaa !830
  %i.cm = load i64, ptr %i.t, align 8, !tbaa !607
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.t, align 8, !tbaa !607
  br label %bb.b, !llvm.loop !2038

.critedge:                                        ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %.split15, %.split14, %.split13, %.split12, %.split11, %.split10, %.split, %bb.j, %bb.f, %bb.f, %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iterator9increment4nextILm2EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !832, !nonnull !117, !align !141 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !618
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !620 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !81
  %.not = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %.not, label %bb.b, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iterator9increment4nextESt17integral_constantImLm3EE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !620
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !llvm.loop !2040

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, !prof !609

bb.c:                                             ; preds = %._crit_edge
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #38
end_hunk_1
