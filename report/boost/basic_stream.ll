Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_stream?download=true
inline.NumInlined: 19842
inline.NumDeleted: 6964
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEEEE14const_iteratorppEv:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1612
  %i.aj = call i64 @llvm.usub.sat.i64(i64 %i.af, i64 %i.ai)
  br label %bb.h

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.e, %bb.b, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.l, %bb.b ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i ]
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %i.b, ptr %1, align 8, !tbaa !1636
  %i.am = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  %i.an = extractvalue { ptr, i64 } %i.am, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i
  %.pn.i = phi i64 [ %i.aj, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i ], [ %i.an, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1653
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 %.pn.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1785
  %i.as = sub i64 %i.ar, %spec.select.i
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !1785
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorppEi(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>>::const_iterator", align 16 ; 24 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1624 ; 5 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i8 0, ptr %i.f, align 8, !tbaa !1626
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1626  ; 9 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.thread
    i8 1, label %bb.c
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1634 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1634
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 16, !tbaa !1624, !alias.scope !5818
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 0, ptr %i.m, align 16, !tbaa !1626, !alias.scope !5818
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1616
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1616
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.q, align 8, !tbaa !1619
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1619  ; 2 uses
  switch i8 %i.s, label %bb.d [
    i8 0, label %bb.k
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
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !1572
  store ptr %i.t, ptr %i.o, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !1572
  store ptr %i.u, ptr %i.o, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !1572
  store ptr %i.v, ptr %i.o, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !1621
  store ptr %i.w, ptr %i.o, align 8, !tbaa !1563
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !1572
  store ptr %i.x, ptr %i.o, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.y = load i8, ptr %i.p, align 8, !tbaa !280
  store i8 %i.y, ptr %i.o, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  store i8 %i.s, ptr %i.q, align 8, !tbaa !1619
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1626
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1634 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !1634
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 16, !tbaa !1624, !alias.scope !5819
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !1616, !noalias !5820
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1616, !alias.scope !5820
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i8 0, ptr %i.ah, align 8, !tbaa !1619, !alias.scope !5820
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !1619, !noalias !5820 ; 2 uses
  switch i8 %i.aj, label %bb.l [
    i8 0, label %.sink.split.i.i.i.i.i.i.i5
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
    i8 5, label %bb.q
    i8 6, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !1572, !noalias !5820
  store ptr %i.ak, ptr %i.af, align 16, !tbaa !1572, !alias.scope !5820
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6

bb.n:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !1572, !noalias !5820
  store ptr %i.al, ptr %i.af, align 16, !tbaa !1572, !alias.scope !5820
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6

bb.o:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !1572, !noalias !5820
  store ptr %i.am, ptr %i.af, align 16, !tbaa !1572, !alias.scope !5820
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6

bb.p:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !1621, !noalias !5820
  store ptr %i.an, ptr %i.af, align 16, !tbaa !1563, !alias.scope !5820
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6

bb.q:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !1572, !noalias !5820
  store ptr %i.ao, ptr %i.af, align 16, !tbaa !1572, !alias.scope !5820
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6

bb.r:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.ag, align 8, !tbaa !280, !noalias !5820
  store i8 %i.ap, ptr %i.af, align 16, !tbaa !280, !alias.scope !5820
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6:           ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  store i8 %i.aj, ptr %i.ah, align 8, !tbaa !1619, !alias.scope !5820
  br label %.sink.split.i.i.i.i.i.i.i5

bb.s:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1626
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1634 ; 2 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !1634
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aw = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.aw, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.t:                                             ; preds = %bb.a
  %i.ax = load i8, ptr %i.e, align 8, !tbaa !280
  store i8 %i.ax, ptr %i.d, align 8, !tbaa !280
  store i8 3, ptr %i.f, align 8, !tbaa !1626
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1634 ; 2 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !1634
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5820)
  store ptr %i.c, ptr %6, align 16, !tbaa !1624, !alias.scope !5820
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bd = load i8, ptr %i.e, align 8, !tbaa !280, !noalias !5820
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !280, !alias.scope !5820
  br label %.sink.split.i.i.i.i.i.i.i5

.sink.split.i.i.i.i.i.i.i5:                       ; preds = %bb.t, %bb.s, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6, %bb.k
  %i.be = phi ptr [ %i.bc, %bb.t ], [ %i.av, %bb.s ], [ %i.ad, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6 ], [ %i.ad, %bb.k ]
  %i.bf = phi ptr [ %i.bb, %bb.t ], [ %i.au, %bb.s ], [ %i.ac, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6 ], [ %i.ac, %bb.k ]
  %i.bg = phi ptr [ %i.ba, %bb.t ], [ %i.at, %bb.s ], [ %i.ab, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i6 ], [ %i.ab, %bb.k ]
  store i8 %i.h, ptr %i.be, align 8, !tbaa !1626, !alias.scope !5820
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.thread, %.sink.split.i.i.i.i.i.i.i5
  %i.bh = phi ptr [ %i.bf, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.l, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.thread ] ; 2 uses
  %i.bi = phi ptr [ %i.bg, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.k, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.thread ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !1634, !alias.scope !5820
  %i.bk = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !5820
  store ptr %i.b, ptr %5, align 8, !tbaa !1636, !noalias !5820
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !5820
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1624
  %i.bn = icmp eq ptr %i.c, %i.bm
  br i1 %i.bn, label %bb.u, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.u:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !1626
  %.not.i.i.i = icmp eq i8 %i.h, %i.bq
  br i1 %.not.i.i.i, label %bb.v, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.v:                                             ; preds = %bb.u
  switch i8 %i.h, label %bb.w [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
    i8 1, label %bb.x
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i
    i8 3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
  ]

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !1616
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1616
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.y, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !1619 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !1619
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bx, %i.bz
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.z, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.ca = add i8 %i.bx, -1
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ca, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.z
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 16, !tbaa !314
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !314
  %i.cc = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, %i.cb
  br i1 %i.cc, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i: ; preds = %bb.v
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !1572
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !1572
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.z, %bb.v, %bb.v
  %i.cg = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %6, ptr %4, align 8, !tbaa !1636
  %i.ch = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.ci = extractvalue { ptr, i64 } %i.ch, 1
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !1634
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1612
  %i.cm = call i64 @llvm.usub.sat.i64(i64 %i.ci, i64 %i.cl)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.y, %bb.x, %bb.u
  %i.cn = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %6, ptr %3, align 8, !tbaa !1636
  %i.co = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.cp = extractvalue { ptr, i64 } %i.co, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
  %.pn.i = phi i64 [ %i.cm, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i ], [ %i.cp, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !1653
  %i.cs = sub i64 %i.cr, %.pn.i
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !1653
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEEEEC2ERKSN_m(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::decrement", align 8 ; 4 uses
  %4 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 37 uses
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !280
  %i.b = load i64, ptr %1, align 8, !tbaa !1644
  store <2 x i64> %i.a, ptr %0, align 8, !tbaa !280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1786
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1786
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5831)
  %i.g = inttoptr i64 %i.b to ptr                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5833)
  store ptr %i.g, ptr %4, align 8, !tbaa !1652, !alias.scope !5834
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1637, !noalias !5834
  store i64 %i.j, ptr %i.h, align 8, !tbaa !1653, !alias.scope !5834
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !1633, !noalias !5834, !nonnull !310, !align !313 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5835)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1624, !noalias !5835 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !1626, !noalias !5835 ; 2 uses
  switch i8 %i.q, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratorC2ERKSG_.exit.thread16.i
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratorC2ERKSG_.exit.thread16.i: ; preds = %bb.a
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1624, !alias.scope !5835
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 0, ptr %i.r, align 8, !tbaa !1626, !alias.scope !5835
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE5beginEv.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !1616, !noalias !5835 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1619, !noalias !5835 ; 2 uses
  switch i8 %i.v, label %bb.d [
    i8 0, label %.thread.i
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

.thread.i:                                        ; preds = %bb.c
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1624, !alias.scope !5835
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.x, align 8, !tbaa !1626, !alias.scope !5835
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1616, !alias.scope !5835
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.y, align 8, !tbaa !1619, !alias.scope !5835
  br label %.sink.split.i.i.i.i.i.i.i11

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS4_6detail11buffers_refINS5_IRKNS4_14buffers_suffixINS7_INS4_16buffers_cat_viewIJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEEEE4initINSO_14const_iteratorEEEvT_SS_:bb.a
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !1665 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !1616
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !1616
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.p, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i.i

._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i.i: ; preds = %bb.o
  %.pre.i.i.i = load i8, ptr %i.h, align 8, !tbaa !1619
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load i8, ptr %i.h, align 8, !tbaa !1619 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !1619
  %.not.i.i.i.i.i = icmp eq i8 %i.be, %i.bg
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bh = add i8 %i.be, -1
  %switch.i.i.i.i.i.i = icmp ult i8 %i.bh, 5
  br i1 %switch.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i: ; preds = %bb.q
  %.sink.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !314
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !314
  %i.bj = icmp eq ptr %.sink.i.i.i.i.i.i.i, %i.bi
  br i1 %i.bj, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i, %bb.q
  %i.bk = zext i8 %i.be to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %i.c, ptr %7, align 8, !tbaa !1618
  %i.bl = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !1665
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !1623
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bn) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %spec.select.i.i.i.i
  %i.bs = sub i64 %i.bn, %spec.select.i.i.i.i
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.br, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i.i, i64 %i.bs, 1
  br label %.noexc17

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i, %bb.p, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i.i
  %i.bt = phi i8 [ %.pre.i.i.i, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i.i ], [ %i.be, %bb.p ], [ %i.be, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i ]
  %i.bu = zext i8 %i.bt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 8, !tbaa !1618
  %i.bv = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.noexc17

.noexc17:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i
  %.pn.i.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i ], [ %i.bv, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i ] ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.bx = load i64, ptr %i.z, align 8, !tbaa !1814
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.bw)
  %i.by = load i64, ptr %i.aa, align 8, !tbaa !1840
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.by, i64 %spec.select.i.i) ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %.pn.i.i.i, 0
  %i.ca = load i64, ptr %i.y, align 8, !tbaa !1851
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ca ; 2 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !314
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %spec.select.i, ptr %i.cc, align 8, !tbaa !848
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !1852
  %i.ce = add i64 %i.cd, %spec.select.i
  store i64 %i.ce, ptr %i.ab, align 8, !tbaa !1852
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorppEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>::const_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 0)
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !1665 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !1616
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !1616
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.r, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i.i6

._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i.i6: ; preds = %.noexc17
  %.pre.i.i.i8 = load i8, ptr %.phi.trans.insert.i.i.i7, align 8, !tbaa !1619
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i9

bb.r:                                             ; preds = %.noexc17
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cl = load i8, ptr %.phi.trans.insert.i.i.i7, align 8, !tbaa !1619 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !1619
  %.not.i.i.i.i.i12 = icmp eq i8 %i.cl, %i.cn
  br i1 %.not.i.i.i.i.i12, label %bb.s, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i9

bb.s:                                             ; preds = %bb.r
  %i.co = add i8 %i.cl, -1
  %switch.i.i.i.i.i.i13 = icmp ult i8 %i.co, 5
  br i1 %switch.i.i.i.i.i.i13, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i15, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i14

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i15: ; preds = %bb.s
  %.sink.i.i.i.i.i.i.i16 = load ptr, ptr %i.ae, align 8, !tbaa !314
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !314
  %i.cq = icmp eq ptr %.sink.i.i.i.i.i.i.i16, %i.cp
  br i1 %i.cq, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i14, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i9

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i14: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i15, %bb.s
  %i.cr = zext i8 %i.cl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.ac, ptr %4, align 8, !tbaa !1618
  %i.cs = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.ct = extractvalue { ptr, i64 } %i.cs, 1
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !1665
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !1623
  %i.cx = call i64 @llvm.usub.sat.i64(i64 %i.ct, i64 %i.cw)
  br label %bb.t

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i9: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i15, %bb.r, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i.i6
  %i.cy = phi i8 [ %.pre.i.i.i8, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i.i6 ], [ %i.cl, %bb.r ], [ %i.cl, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i.i15 ]
  %i.cz = zext i8 %i.cy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.ac, ptr %3, align 8, !tbaa !1618
  %i.da = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.db = extractvalue { ptr, i64 } %i.da, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i9, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i14
  %.pn.i.i.i10 = phi i64 [ %i.cx, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i.i14 ], [ %i.db, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i.i9 ]
  %i.dc = load i64, ptr %i.af, align 8, !tbaa !1814
  %spec.select.i.i11 = call i64 @llvm.umin.i64(i64 %i.dc, i64 %.pn.i.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.dd = load i64, ptr %i.aa, align 8, !tbaa !1840
  %i.de = sub i64 %i.dd, %spec.select.i.i11
  store i64 %i.de, ptr %i.aa, align 8, !tbaa !1840
  %i.df = load i64, ptr %i.y, align 8, !tbaa !1851
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.y, align 8, !tbaa !1851
  br label %bb.i, !llvm.loop !6252

.critedge:                                        ; preds = %bb.n, %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS3_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEEEE14const_iteratorneERKSN_.exit, %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS3_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEEEE14const_iteratorneERKSN_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorppEi(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>::const_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>>::const_iterator", align 16 ; 32 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1616 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1616
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  store i8 0, ptr %i.f, align 8, !tbaa !1619
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1619  ; 12 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorC2ERKSL_.exit.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorC2ERKSL_.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1665 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 16, !tbaa !1616, !alias.scope !6257
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.m, align 16, !tbaa !1619, !alias.scope !6257
  br label %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE14const_iteratorC2ERKSH_.exit.i

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1619
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1665 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.t, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.d:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.u, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1619
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1665 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.aa, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.e:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1619
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1665 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.ah, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.f:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !1621
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !1563
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1619
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1665 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.ao, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.g:                                             ; preds = %bb.a
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1619
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1665 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.av, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.h:                                             ; preds = %bb.a
  %i.aw = load i8, ptr %i.e, align 8, !tbaa !280
  store i8 %i.aw, ptr %i.d, align 8, !tbaa !280
  store i8 6, ptr %i.f, align 8, !tbaa !1619
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1665 ; 2 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6258)
  store ptr %i.c, ptr %6, align 16, !tbaa !1616, !alias.scope !6258
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load i8, ptr %i.e, align 8, !tbaa !280, !noalias !6258
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !280, !alias.scope !6258
  br label %.sink.split.i.i.i.i.i.i.i5

.sink.split.i.i.i.i.i.i.i5:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bd = phi ptr [ %i.bb, %bb.h ], [ %i.au, %bb.g ], [ %i.an, %bb.f ], [ %i.ag, %bb.e ], [ %i.z, %bb.d ], [ %i.s, %bb.c ]
  %i.be = phi ptr [ %i.ba, %bb.h ], [ %i.at, %bb.g ], [ %i.am, %bb.f ], [ %i.af, %bb.e ], [ %i.y, %bb.d ], [ %i.r, %bb.c ]
  %i.bf = phi ptr [ %i.az, %bb.h ], [ %i.as, %bb.g ], [ %i.al, %bb.f ], [ %i.ae, %bb.e ], [ %i.x, %bb.d ], [ %i.q, %bb.c ]
  store i8 %i.h, ptr %i.bd, align 8, !tbaa !1619, !alias.scope !6258
  br label %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE14const_iteratorC2ERKSH_.exit.i

_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE14const_iteratorC2ERKSH_.exit.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorC2ERKSL_.exit.thread, %.sink.split.i.i.i.i.i.i.i5
  %i.bg = phi ptr [ %i.be, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.l, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorC2ERKSL_.exit.thread ]
  %i.bh = phi ptr [ %i.bf, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.k, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorC2ERKSL_.exit.thread ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !1665, !alias.scope !6258
  %i.bj = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !6258
  store ptr %i.b, ptr %5, align 8, !tbaa !1618, !noalias !6258
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !6258
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1616
  %i.bm = icmp eq ptr %i.c, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i

bb.i:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE14const_iteratorC2ERKSH_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !1619
  %.not.i.i.i = icmp eq i8 %i.h, %i.bp
  br i1 %.not.i.i.i, label %bb.j, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bq = add nsw i8 %i.h, -1
  %switch.i.i.i.i = icmp ult i8 %i.bq, 5
  br i1 %switch.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i: ; preds = %bb.j
  %.sink.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !314
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !314
  %i.bs = icmp eq ptr %.sink.i.i.i.i.i, %i.br
  br i1 %i.bs, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i, %bb.j
  %i.bt = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %6, ptr %4, align 8, !tbaa !1618
  %i.bu = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.bv = extractvalue { ptr, i64 } %i.bu, 1
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !1665
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1623
  %i.bz = call i64 @llvm.usub.sat.i64(i64 %i.bv, i64 %i.by)
  br label %_ZNK5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE14const_iteratorC2ERKSH_.exit.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i, %bb.i
  %i.ca = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %6, ptr %3, align 8, !tbaa !1618
  %i.cb = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.cc = extractvalue { ptr, i64 } %i.cb, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i
  %.pn.i = phi i64 [ %i.bz, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i ], [ %i.cc, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1814
  %i.cf = sub i64 %i.ce, %.pn.i
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !1814
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS3_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEEEEC2ERKSM_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::decrement", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>::const_iterator", align 8 ; 10 uses
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !280
  %i.b = load i64, ptr %1, align 8, !tbaa !1809
  store <2 x i64> %i.a, ptr %0, align 8, !tbaa !280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1841
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1841
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6271)
  %i.g = inttoptr i64 %i.b to ptr                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6273)
  store ptr %i.g, ptr %6, align 8, !tbaa !1813, !alias.scope !6274
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1804, !noalias !6274
  store i64 %i.j, ptr %i.h, align 8, !tbaa !1814, !alias.scope !6274
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !1803, !noalias !6274, !nonnull !310, !align !313 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6276)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1616, !noalias !6277 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1619, !noalias !6277 ; 2 uses
  switch i8 %i.p, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1616, !alias.scope !6277
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !6277
  store <2 x ptr> %i.q, ptr %i.k, align 8, !tbaa !314, !alias.scope !6277
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !6277
  store <2 x ptr> %i.r, ptr %i.k, align 8, !tbaa !314, !alias.scope !6277
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit

bb.e:                                             ; preds = %bb.a
  %i.s = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !6277
  store <2 x ptr> %i.s, ptr %i.k, align 8, !tbaa !314, !alias.scope !6277
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit

bb.f:                                             ; preds = %bb.a
  %i.t = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !6277
  store <2 x ptr> %i.t, ptr %i.k, align 8, !tbaa !314, !alias.scope !6277
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit

bb.g:                                             ; preds = %bb.a
  %i.u = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !6277
  store <2 x ptr> %i.u, ptr %i.k, align 8, !tbaa !314, !alias.scope !6277
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !280, !noalias !6277
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1616, !alias.scope !6277
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.w, ptr %i.x, align 8, !tbaa !280, !alias.scope !6277
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit

_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store i8 %i.p, ptr %i.y, align 8, !tbaa !1619, !alias.scope !6277
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.l, ptr %i.z, align 8, !tbaa !1665, !alias.scope !6277
  %i.aa = icmp sgt i64 %2, 0
  br i1 %i.aa, label %.preheader.i, label %.preheader7.i

.preheader7.i:                                    ; preds = %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit
  %.not9.i = icmp eq i64 %2, 0
  br i1 %.not9.i, label %.noexc, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader7.i
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.noexc9

.preheader.i:                                     ; preds = %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit, %.preheader.i
  %.011.i = phi i64 [ %i.ac, %.preheader.i ], [ %2, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv.exit ]
  %i.ac = add nsw i64 %.011.i, -1                 ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(48) %6) ; 0 uses
  %.not6.i = icmp eq i64 %i.ac, 0
  br i1 %.not6.i, label %.noexc, label %.preheader.i, !llvm.loop !6269

.noexc9:                                          ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratormmEv.exit.i, %.lr.ph.i
  %.110.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ae, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratormmEv.exit.i ]
  %i.ae = add nsw i64 %.110.i, 1                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS4_6detail11buffers_refINS5_IRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_EEEEEEEEEEEE4initINSK_14const_iteratorEEEvT_SO_:bb.a
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !1703 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !1690
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !1690
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.p, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i: ; preds = %bb.o
  %.pre.i.i.i = load i8, ptr %i.h, align 8, !tbaa !1691
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bf = load i8, ptr %i.h, align 8, !tbaa !1691 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !1691
  %.not.i.i.i.i.i = icmp eq i8 %i.bf, %i.bh
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bi = add i8 %i.bf, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.bi, 5
  br i1 %switch.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i: ; preds = %bb.q
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !1572
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i, %bb.q
  %i.bm = zext i8 %i.bf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %i.c, ptr %7, align 8, !tbaa !1693
  %i.bn = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !1703
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1701
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bp) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %spec.select.i.i.i.i
  %i.bu = sub i64 %i.bp, %spec.select.i.i.i.i
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.bt, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i.i, i64 %i.bu, 1
  br label %.noexc16

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i, %bb.p, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i
  %i.bv = phi i8 [ %.pre.i.i.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i ], [ %i.bf, %bb.p ], [ %i.bf, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i ]
  %i.bw = zext i8 %i.bv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 8, !tbaa !1693
  %i.bx = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.noexc16

.noexc16:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i
  %.pn.i.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i ], [ %i.bx, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i ] ; 2 uses
  %i.by = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.bz = load i64, ptr %i.z, align 8, !tbaa !1959
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.by)
  %i.ca = load i64, ptr %i.aa, align 8, !tbaa !1985
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ca, i64 %spec.select.i.i) ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %.pn.i.i.i, 0
  %i.cc = load i64, ptr %i.y, align 8, !tbaa !1996
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cc ; 2 uses
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !314
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %spec.select.i, ptr %i.ce, align 8, !tbaa !848
  %i.cf = load i64, ptr %i.ab, align 8, !tbaa !1997
  %i.cg = add i64 %i.cf, %spec.select.i
  store i64 %i.cg, ptr %i.ab, align 8, !tbaa !1997
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorppEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 0)
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !1703 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cj = load ptr, ptr %i.ac, align 8, !tbaa !1690
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !1690
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.r, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i6

._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i6: ; preds = %.noexc16
  %.pre.i.i.i8 = load i8, ptr %.phi.trans.insert.i.i.i7, align 8, !tbaa !1691
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9

bb.r:                                             ; preds = %.noexc16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cn = load i8, ptr %.phi.trans.insert.i.i.i7, align 8, !tbaa !1691 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !1691
  %.not.i.i.i.i.i12 = icmp eq i8 %i.cn, %i.cp
  br i1 %.not.i.i.i.i.i12, label %bb.s, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9

bb.s:                                             ; preds = %bb.r
  %i.cq = add i8 %i.cn, -1
  %switch.i.i.i.i.i.i.i13 = icmp ult i8 %i.cq, 5
  br i1 %switch.i.i.i.i.i.i.i13, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15: ; preds = %bb.s
  %i.cr = load ptr, ptr %i.ae, align 8, !tbaa !1572
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !1572
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15, %bb.s
  %i.cu = zext i8 %i.cn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.ac, ptr %4, align 8, !tbaa !1693
  %i.cv = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.cw = extractvalue { ptr, i64 } %i.cv, 1
  %i.cx = load ptr, ptr %i.ad, align 8, !tbaa !1703
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1701
  %i.da = call i64 @llvm.usub.sat.i64(i64 %i.cw, i64 %i.cz)
  br label %bb.t

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15, %bb.r, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i6
  %i.db = phi i8 [ %.pre.i.i.i8, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i6 ], [ %i.cn, %bb.r ], [ %i.cn, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15 ]
  %i.dc = zext i8 %i.db to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.ac, ptr %3, align 8, !tbaa !1693
  %i.dd = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.de = extractvalue { ptr, i64 } %i.dd, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14
  %.pn.i.i.i10 = phi i64 [ %i.da, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14 ], [ %i.de, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9 ]
  %i.df = load i64, ptr %i.af, align 8, !tbaa !1959
  %spec.select.i.i11 = call i64 @llvm.umin.i64(i64 %i.df, i64 %.pn.i.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.dg = load i64, ptr %i.aa, align 8, !tbaa !1985
  %i.dh = sub i64 %i.dg, %spec.select.i.i11
  store i64 %i.dh, ptr %i.aa, align 8, !tbaa !1985
  %i.di = load i64, ptr %i.y, align 8, !tbaa !1996
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.y, align 8, !tbaa !1996
  br label %bb.i, !llvm.loop !7315

.critedge:                                        ; preds = %bb.n, %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEEEE14const_iteratorneERKSJ_.exit, %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEEEE14const_iteratorneERKSJ_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorppEi(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 16 ; 32 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1690 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1690
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  store i8 0, ptr %i.f, align 8, !tbaa !1691
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1691  ; 12 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1703 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 16, !tbaa !1690, !alias.scope !7320
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.m, align 16, !tbaa !1691, !alias.scope !7320
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE14const_iteratorC2ERKSB_.exit.i

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1691
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1703 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.t, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.d:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.u, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1691
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1703 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.aa, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.e:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1691
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1703 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.ah, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.f:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1691
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1703 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.ao, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.g:                                             ; preds = %bb.a
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1691
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1703 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.av, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.h:                                             ; preds = %bb.a
  %i.aw = load i8, ptr %i.e, align 8, !tbaa !280
  store i8 %i.aw, ptr %i.d, align 8, !tbaa !280
  store i8 6, ptr %i.f, align 8, !tbaa !1691
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1703 ; 2 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !1703
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7321)
  store ptr %i.c, ptr %6, align 16, !tbaa !1690, !alias.scope !7321
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load i8, ptr %i.e, align 8, !tbaa !280, !noalias !7321
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !280, !alias.scope !7321
  br label %.sink.split.i.i.i.i.i.i.i5

.sink.split.i.i.i.i.i.i.i5:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bd = phi ptr [ %i.bb, %bb.h ], [ %i.au, %bb.g ], [ %i.an, %bb.f ], [ %i.ag, %bb.e ], [ %i.z, %bb.d ], [ %i.s, %bb.c ]
  %i.be = phi ptr [ %i.ba, %bb.h ], [ %i.at, %bb.g ], [ %i.am, %bb.f ], [ %i.af, %bb.e ], [ %i.y, %bb.d ], [ %i.r, %bb.c ]
  %i.bf = phi ptr [ %i.az, %bb.h ], [ %i.as, %bb.g ], [ %i.al, %bb.f ], [ %i.ae, %bb.e ], [ %i.x, %bb.d ], [ %i.q, %bb.c ]
  store i8 %i.h, ptr %i.bd, align 8, !tbaa !1691, !alias.scope !7321
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE14const_iteratorC2ERKSB_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE14const_iteratorC2ERKSB_.exit.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread, %.sink.split.i.i.i.i.i.i.i5
  %i.bg = phi ptr [ %i.be, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.l, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread ]
  %i.bh = phi ptr [ %i.bf, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.k, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !1703, !alias.scope !7321
  %i.bj = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !7321
  store ptr %i.b, ptr %5, align 8, !tbaa !1693, !noalias !7321
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !7321
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1690
  %i.bm = icmp eq ptr %i.c, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

bb.i:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE14const_iteratorC2ERKSB_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !1691
  %.not.i.i.i = icmp eq i8 %i.h, %i.bp
  br i1 %.not.i.i.i, label %bb.j, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bq = add nsw i8 %i.h, -1
  %switch.i.i.i.i.i = icmp ult i8 %i.bq, 5
  br i1 %switch.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i: ; preds = %bb.j
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !1572
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !1572
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i, %bb.j
  %i.bu = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %6, ptr %4, align 8, !tbaa !1693
  %i.bv = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.bw = extractvalue { ptr, i64 } %i.bv, 1
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !1703
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !1701
  %i.ca = call i64 @llvm.usub.sat.i64(i64 %i.bw, i64 %i.bz)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE14const_iteratorC2ERKSB_.exit.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.i, %bb.i
  %i.cb = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %6, ptr %3, align 8, !tbaa !1693
  %i.cc = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.cd = extractvalue { ptr, i64 } %i.cc, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i
  %.pn.i = phi i64 [ %i.ca, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i ], [ %i.cd, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratoreqERKS9_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !1959
  %i.cg = sub i64 %i.cf, %.pn.i
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !1959
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEEEEC2ERKSI_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::decrement", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 10 uses
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !280
  %i.b = load i64, ptr %1, align 8, !tbaa !1954
  store <2 x i64> %i.a, ptr %0, align 8, !tbaa !280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1986
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1986
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7334)
  %i.g = inttoptr i64 %i.b to ptr                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7336)
  store ptr %i.g, ptr %6, align 8, !tbaa !1958, !alias.scope !7337
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1949, !noalias !7337
  store i64 %i.j, ptr %i.h, align 8, !tbaa !1959, !alias.scope !7337
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !1948, !noalias !7337, !nonnull !310, !align !313 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7339)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1690, !noalias !7340 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1691, !noalias !7340 ; 2 uses
  switch i8 %i.p, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1690, !alias.scope !7340
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7340
  store <2 x ptr> %i.q, ptr %i.k, align 8, !tbaa !314, !alias.scope !7340
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7340
  store <2 x ptr> %i.r, ptr %i.k, align 8, !tbaa !314, !alias.scope !7340
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit

bb.e:                                             ; preds = %bb.a
  %i.s = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7340
  store <2 x ptr> %i.s, ptr %i.k, align 8, !tbaa !314, !alias.scope !7340
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit

bb.f:                                             ; preds = %bb.a
  %i.t = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7340
  store <2 x ptr> %i.t, ptr %i.k, align 8, !tbaa !314, !alias.scope !7340
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit

bb.g:                                             ; preds = %bb.a
  %i.u = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7340
  store <2 x ptr> %i.u, ptr %i.k, align 8, !tbaa !314, !alias.scope !7340
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.w = load i8, ptr %i.v, align 8, !tbaa !280, !noalias !7340
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1690, !alias.scope !7340
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.w, ptr %i.x, align 8, !tbaa !280, !alias.scope !7340
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit

_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store i8 %i.p, ptr %i.y, align 8, !tbaa !1691, !alias.scope !7340
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.l, ptr %i.z, align 8, !tbaa !1703, !alias.scope !7340
  %i.aa = icmp sgt i64 %2, 0
  br i1 %i.aa, label %.preheader.i, label %.preheader7.i

.preheader7.i:                                    ; preds = %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit
  %.not9.i = icmp eq i64 %2, 0
  br i1 %.not9.i, label %.noexc, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader7.i
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.noexc9

.preheader.i:                                     ; preds = %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit, %.preheader.i
  %.011.i = phi i64 [ %i.ac, %.preheader.i ], [ %2, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv.exit ]
  %i.ac = add nsw i64 %.011.i, -1                 ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(48) %6) ; 0 uses
  %.not6.i = icmp eq i64 %i.ac, 0
  br i1 %.not6.i, label %.noexc, label %.preheader.i, !llvm.loop !7332

.noexc9:                                          ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratormmEv.exit.i, %.lr.ph.i
  %.110.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ae, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratormmEv.exit.i ]
  %i.ae = add nsw i64 %.110.i, 1                  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS4_6detail11buffers_refINS5_IRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_S3_S3_SD_EEEEEEEEEEEE4initINSK_14const_iteratorEEEvT_SO_:bb.a
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1707
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load i8, ptr %i.h, align 8, !tbaa !1708
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bi = load i8, ptr %i.h, align 8, !tbaa !1708 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !1708
  %.not.i.i.i.i.i = icmp eq i8 %i.bi, %i.bk
  br i1 %.not.i.i.i.i.i, label %bb.t, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bl = add i8 %i.bi, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.bl, 8
  br i1 %switch.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i: ; preds = %bb.t
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !1572
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i, %bb.t
  %i.bp = zext i8 %i.bi to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %i.c, ptr %7, align 8, !tbaa !1710
  %i.bq = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 2 uses
  %i.bt = load ptr, ptr %i.t, align 8, !tbaa !1740
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1718
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bs) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %spec.select.i.i.i.i
  %i.bx = sub i64 %i.bs, %spec.select.i.i.i.i
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.bw, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i.i, i64 %i.bx, 1
  br label %.noexc16

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i, %bb.s, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i
  %i.by = phi i8 [ %.pre.i.i.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i ], [ %i.bi, %bb.s ], [ %i.bi, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i ]
  %i.bz = zext i8 %i.by to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 8, !tbaa !1710
  %i.ca = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.noexc16

.noexc16:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i
  %.pn.i.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i ], [ %i.ca, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i ] ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.cc = load i64, ptr %i.ac, align 8, !tbaa !2012
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.cb)
  %i.cd = load i64, ptr %i.ad, align 8, !tbaa !2038
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.cd, i64 %spec.select.i.i) ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %.pn.i.i.i, 0
  %i.cf = load i64, ptr %i.ab, align 8, !tbaa !2049
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cf ; 2 uses
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !314
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %spec.select.i, ptr %i.ch, align 8, !tbaa !848
  %i.ci = load i64, ptr %i.ae, align 8, !tbaa !2050
  %i.cj = add i64 %i.ci, %spec.select.i
  store i64 %i.cj, ptr %i.ae, align 8, !tbaa !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorppEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 0)
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !1740 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.cm = load ptr, ptr %i.af, align 8, !tbaa !1707
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !1707
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.u, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i6

._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i6: ; preds = %.noexc16
  %.pre.i.i.i8 = load i8, ptr %.phi.trans.insert.i.i.i7, align 8, !tbaa !1708
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9

bb.u:                                             ; preds = %.noexc16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 112
  %i.cq = load i8, ptr %.phi.trans.insert.i.i.i7, align 8, !tbaa !1708 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !1708
  %.not.i.i.i.i.i12 = icmp eq i8 %i.cq, %i.cs
  br i1 %.not.i.i.i.i.i12, label %bb.v, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9

bb.v:                                             ; preds = %bb.u
  %i.ct = add i8 %i.cq, -1
  %switch.i.i.i.i.i.i.i13 = icmp ult i8 %i.ct, 8
  br i1 %switch.i.i.i.i.i.i.i13, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15: ; preds = %bb.v
  %i.cu = load ptr, ptr %i.ah, align 8, !tbaa !1572
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !1572
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15, %bb.v
  %i.cx = zext i8 %i.cq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.af, ptr %4, align 8, !tbaa !1710
  %i.cy = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.cz = extractvalue { ptr, i64 } %i.cy, 1
  %i.da = load ptr, ptr %i.ag, align 8, !tbaa !1740
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !1718
  %i.dd = call i64 @llvm.usub.sat.i64(i64 %i.cz, i64 %i.dc)
  br label %bb.w

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15, %bb.u, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i6
  %i.de = phi i8 [ %.pre.i.i.i8, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i.i6 ], [ %i.cq, %bb.u ], [ %i.cq, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i.i15 ]
  %i.df = zext i8 %i.de to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.af, ptr %3, align 8, !tbaa !1710
  %i.dg = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.dh = extractvalue { ptr, i64 } %i.dg, 1
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14
  %.pn.i.i.i10 = phi i64 [ %i.dd, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i.i14 ], [ %i.dh, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i.i9 ]
  %i.di = load i64, ptr %i.ai, align 8, !tbaa !2012
  %spec.select.i.i11 = call i64 @llvm.umin.i64(i64 %i.di, i64 %.pn.i.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.dj = load i64, ptr %i.ad, align 8, !tbaa !2038
  %i.dk = sub i64 %i.dj, %spec.select.i.i11
  store i64 %i.dk, ptr %i.ad, align 8, !tbaa !2038
  %i.dl = load i64, ptr %i.ab, align 8, !tbaa !2049
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.ab, align 8, !tbaa !2049
  br label %bb.l, !llvm.loop !7705

.critedge:                                        ; preds = %bb.q, %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_SA_SA_SB_EEEEEEEEEE14const_iteratorneERKSJ_.exit, %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_SA_SA_SB_EEEEEEEEEE14const_iteratorneERKSJ_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorppEi(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 16 ; 44 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1707 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1707
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i8 0, ptr %i.f, align 8, !tbaa !1708
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1708  ; 15 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread
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

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 16, !tbaa !1707, !alias.scope !7710
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.m, align 16, !tbaa !1708, !alias.scope !7710
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorC2ERKSB_.exit.i

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1708
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.t, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.d:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.u, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1708
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.aa, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.e:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1708
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.ah, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.f:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1708
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.ao, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.g:                                             ; preds = %bb.a
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1708
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.av, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.h:                                             ; preds = %bb.a
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1708
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.bc, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.i:                                             ; preds = %bb.a
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.bd, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1708
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.bj, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.j:                                             ; preds = %bb.a
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.bk, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1708
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bq = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.bq, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.k:                                             ; preds = %bb.a
  %i.br = load i8, ptr %i.e, align 8, !tbaa !280
  store i8 %i.br, ptr %i.d, align 8, !tbaa !280
  store i8 9, ptr %i.f, align 8, !tbaa !1708
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1740 ; 2 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7711)
  store ptr %i.c, ptr %6, align 16, !tbaa !1707, !alias.scope !7711
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i8 0, ptr %i.bw, align 16, !tbaa !1708, !alias.scope !7711
  %i.bx = load i8, ptr %i.e, align 8, !tbaa !280, !noalias !7711
  store i8 %i.bx, ptr %i.bv, align 8, !tbaa !280, !alias.scope !7711
  br label %.sink.split.i.i.i.i.i.i.i5

.sink.split.i.i.i.i.i.i.i5:                       ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.by = phi ptr [ %i.bw, %bb.k ], [ %i.bp, %bb.j ], [ %i.bi, %bb.i ], [ %i.bb, %bb.h ], [ %i.au, %bb.g ], [ %i.an, %bb.f ], [ %i.ag, %bb.e ], [ %i.z, %bb.d ], [ %i.s, %bb.c ]
  %i.bz = phi ptr [ %i.bv, %bb.k ], [ %i.bo, %bb.j ], [ %i.bh, %bb.i ], [ %i.ba, %bb.h ], [ %i.at, %bb.g ], [ %i.am, %bb.f ], [ %i.af, %bb.e ], [ %i.y, %bb.d ], [ %i.r, %bb.c ]
  %i.ca = phi ptr [ %i.bu, %bb.k ], [ %i.bn, %bb.j ], [ %i.bg, %bb.i ], [ %i.az, %bb.h ], [ %i.as, %bb.g ], [ %i.al, %bb.f ], [ %i.ae, %bb.e ], [ %i.x, %bb.d ], [ %i.q, %bb.c ]
  store i8 %i.h, ptr %i.by, align 8, !tbaa !1708, !alias.scope !7711
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorC2ERKSB_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorC2ERKSB_.exit.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread, %.sink.split.i.i.i.i.i.i.i5
  %i.cb = phi ptr [ %i.bz, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.l, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread ]
  %i.cc = phi ptr [ %i.ca, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.k, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorC2ERKSF_.exit.thread ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !1740, !alias.scope !7711
  %i.ce = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !7711
  store ptr %i.b, ptr %5, align 8, !tbaa !1710, !noalias !7711
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !7711
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1707
  %i.ch = icmp eq ptr %i.c, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

bb.l:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorC2ERKSB_.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 112
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !1708
  %.not.i.i.i = icmp eq i8 %i.h, %i.ck
  br i1 %.not.i.i.i, label %bb.m, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.cl = add nsw i8 %i.h, -1
  %switch.i.i.i.i.i = icmp ult i8 %i.cl, 8
  br i1 %switch.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i: ; preds = %bb.m
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !1572
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !1572
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i, %bb.m
  %i.cp = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %6, ptr %4, align 8, !tbaa !1710
  %i.cq = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.cr = extractvalue { ptr, i64 } %i.cq, 1
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !1740
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1718
  %i.cv = call i64 @llvm.usub.sat.i64(i64 %i.cr, i64 %i.cu)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratorC2ERKSB_.exit.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i, %bb.l
  %i.cw = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %6, ptr %3, align 8, !tbaa !1710
  %i.cx = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.cy = extractvalue { ptr, i64 } %i.cx, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i
  %.pn.i = phi i64 [ %i.cv, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i ], [ %i.cy, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !2012
  %i.db = sub i64 %i.da, %.pn.i
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !2012
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_SA_SA_SB_EEEEEEEEEEC2ERKSI_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::decrement", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 21 uses
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !280
  %i.b = load i64, ptr %1, align 8, !tbaa !2007
  store <2 x i64> %i.a, ptr %0, align 8, !tbaa !280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2039
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2039
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7724)
  %i.g = inttoptr i64 %i.b to ptr                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7726)
  store ptr %i.g, ptr %6, align 8, !tbaa !2011, !alias.scope !7727
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !2002, !noalias !7727
  store i64 %i.j, ptr %i.h, align 8, !tbaa !2012, !alias.scope !7727
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 15 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !2001, !noalias !7727, !nonnull !310, !align !313 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7729)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1707, !noalias !7730 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1708, !noalias !7730 ; 2 uses
  switch i8 %i.p, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i
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

_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1707, !alias.scope !7730
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 0, ptr %i.q, align 8, !tbaa !1708, !alias.scope !7730
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_SA_SA_SB_EEEEEEEE5beginEv.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.s = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7730
  store <2 x ptr> %i.s, ptr %i.k, align 8, !tbaa !314, !alias.scope !7730
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.u = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7730
  store <2 x ptr> %i.u, ptr %i.k, align 8, !tbaa !314, !alias.scope !7730
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.w = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7730
  store <2 x ptr> %i.w, ptr %i.k, align 8, !tbaa !314, !alias.scope !7730
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7730
  store <2 x ptr> %i.y, ptr %i.k, align 8, !tbaa !314, !alias.scope !7730
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7730
  store <2 x ptr> %i.aa, ptr %i.k, align 8, !tbaa !314, !alias.scope !7730
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ac = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7730
  store <2 x ptr> %i.ac, ptr %i.k, align 8, !tbaa !314, !alias.scope !7730
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7730
  store <2 x ptr> %i.ae, ptr %i.k, align 8, !tbaa !314, !alias.scope !7730
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !7730
  store <2 x ptr> %i.ag, ptr %i.k, align 8, !tbaa !314, !alias.scope !7730
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !280, !noalias !7730
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1707, !alias.scope !7730
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_3
begin_hunk_4_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS4_6detail11buffers_refINS5_IRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJS3_S3_NS4_4http10chunk_crlfEEEEEEEEEEEEE4initINSI_14const_iteratorEEEvT_SM_:bb.a

bb.m:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEEEE14const_iteratorneERKSH_.exit.thread
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !1738 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !1586
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !1586
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i

._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i: ; preds = %bb.m
  %.pre.i.i.i = load i8, ptr %i.h, align 8, !tbaa !1589
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bd = load i8, ptr %i.h, align 8, !tbaa !1589 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !1589
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, %i.bf
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bg = add i8 %i.bd, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.bg, 3
  br i1 %switch.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i: ; preds = %bb.o
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !1572
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i, %bb.o
  %i.bk = zext i8 %i.bd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %i.c, ptr %7, align 8, !tbaa !1588
  %i.bl = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm5EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_4http10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSE_(i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !1738
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !1598
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bn) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %spec.select.i.i.i.i
  %i.bs = sub i64 %i.bn, %spec.select.i.i.i.i
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.br, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i.i, i64 %i.bs, 1
  br label %.noexc16

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i, %bb.n, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i
  %i.bt = phi i8 [ %.pre.i.i.i, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i ], [ %i.bd, %bb.n ], [ %i.bd, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i ]
  %i.bu = zext i8 %i.bt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 8, !tbaa !1588
  %i.bv = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm5EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_4http10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSE_(i64 noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.noexc16

.noexc16:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i
  %.pn.i.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i ], [ %i.bv, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i ] ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.bx = load i64, ptr %i.x, align 8, !tbaa !2118
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.bw)
  %i.by = load i64, ptr %i.y, align 8, !tbaa !2144
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.by, i64 %spec.select.i.i) ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %.pn.i.i.i, 0
  %i.ca = load i64, ptr %i.w, align 8, !tbaa !2155
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ca ; 2 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !314
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %spec.select.i, ptr %i.cc, align 8, !tbaa !848
  %i.cd = load i64, ptr %i.z, align 8, !tbaa !2156
  %i.ce = add i64 %i.cd, %spec.select.i
  store i64 %i.ce, ptr %i.z, align 8, !tbaa !2156
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorppEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 0)
  %i.cf = load ptr, ptr %i.ab, align 8, !tbaa !1738 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.aa, align 8, !tbaa !1586
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !1586
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i6

._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i6: ; preds = %.noexc16
  %.pre.i.i.i8 = load i8, ptr %.phi.trans.insert.i.i.i7, align 8, !tbaa !1589
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i9

bb.p:                                             ; preds = %.noexc16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cl = load i8, ptr %.phi.trans.insert.i.i.i7, align 8, !tbaa !1589 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !1589
  %.not.i.i.i.i.i12 = icmp eq i8 %i.cl, %i.cn
  br i1 %.not.i.i.i.i.i12, label %bb.q, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i9

bb.q:                                             ; preds = %bb.p
  %i.co = add i8 %i.cl, -1
  %switch.i.i.i.i.i.i.i13 = icmp ult i8 %i.co, 3
  br i1 %switch.i.i.i.i.i.i.i13, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i15, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i14

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i15: ; preds = %bb.q
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !1572
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !1572
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i14, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i9

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i14: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i15, %bb.q
  %i.cs = zext i8 %i.cl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.aa, ptr %4, align 8, !tbaa !1588
  %i.ct = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm5EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_4http10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSE_(i64 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.cu = extractvalue { ptr, i64 } %i.ct, 1
  %i.cv = load ptr, ptr %i.ab, align 8, !tbaa !1738
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !1598
  %i.cy = call i64 @llvm.usub.sat.i64(i64 %i.cu, i64 %i.cx)
  br label %bb.r

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i9: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i15, %bb.p, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i6
  %i.cz = phi i8 [ %.pre.i.i.i8, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i6 ], [ %i.cl, %bb.p ], [ %i.cl, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i.i.i15 ]
  %i.da = zext i8 %i.cz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.aa, ptr %3, align 8, !tbaa !1588
  %i.db = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm5EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_4http10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSE_(i64 noundef %i.da, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.dc = extractvalue { ptr, i64 } %i.db, 1
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i9, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i14
  %.pn.i.i.i10 = phi i64 [ %i.cy, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i.i.i14 ], [ %i.dc, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i.i.i9 ]
  %i.dd = load i64, ptr %i.ad, align 8, !tbaa !2118
  %spec.select.i.i11 = call i64 @llvm.umin.i64(i64 %i.dd, i64 %.pn.i.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.de = load i64, ptr %i.y, align 8, !tbaa !2144
  %i.df = sub i64 %i.de, %spec.select.i.i11
  store i64 %i.df, ptr %i.y, align 8, !tbaa !2144
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !2155
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.w, align 8, !tbaa !2155
  br label %bb.g, !llvm.loop !8579

.critedge:                                        ; preds = %bb.l, %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEEEE14const_iteratorneERKSH_.exit, %_ZNK5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEEEE14const_iteratorneERKSH_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorppEi(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 16 ; 24 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1586 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1586
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i8 0, ptr %i.f, align 8, !tbaa !1589
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1589  ; 10 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1738 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1738
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 16, !tbaa !1586, !alias.scope !8584
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.m, align 16, !tbaa !1589, !alias.scope !8584
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_NS0_4http10chunk_crlfEEEEE14const_iteratorC2ERKS9_.exit.i

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1589
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1738 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !1738
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.t, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.d:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.u, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1589
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1738 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1738
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.aa, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.e:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !1572
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !1572
  store i8 %i.h, ptr %i.f, align 8, !tbaa !1589
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1738 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1738
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = load <2 x ptr>, ptr %i.b, align 8, !tbaa !314
  store <2 x ptr> %i.ah, ptr %6, align 16, !tbaa !314
  br label %.sink.split.i.i.i.i.i.i.i5

bb.f:                                             ; preds = %bb.a
  %i.ai = load i8, ptr %i.e, align 8, !tbaa !280
  store i8 %i.ai, ptr %i.d, align 8, !tbaa !280
  store i8 4, ptr %i.f, align 8, !tbaa !1589
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1738 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1738
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8585)
  store ptr %i.c, ptr %6, align 16, !tbaa !1586, !alias.scope !8585
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load i8, ptr %i.e, align 8, !tbaa !280, !noalias !8585
  store i8 %i.ao, ptr %i.am, align 8, !tbaa !280, !alias.scope !8585
  br label %.sink.split.i.i.i.i.i.i.i5

.sink.split.i.i.i.i.i.i.i5:                       ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ap = phi ptr [ %i.an, %bb.f ], [ %i.ag, %bb.e ], [ %i.z, %bb.d ], [ %i.s, %bb.c ]
  %i.aq = phi ptr [ %i.am, %bb.f ], [ %i.af, %bb.e ], [ %i.y, %bb.d ], [ %i.r, %bb.c ]
  %i.ar = phi ptr [ %i.al, %bb.f ], [ %i.ae, %bb.e ], [ %i.x, %bb.d ], [ %i.q, %bb.c ]
  store i8 %i.h, ptr %i.ap, align 8, !tbaa !1589, !alias.scope !8585
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_NS0_4http10chunk_crlfEEEEE14const_iteratorC2ERKS9_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_NS0_4http10chunk_crlfEEEEE14const_iteratorC2ERKS9_.exit.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit.thread, %.sink.split.i.i.i.i.i.i.i5
  %i.as = phi ptr [ %i.aq, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.l, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit.thread ]
  %i.at = phi ptr [ %i.ar, %.sink.split.i.i.i.i.i.i.i5 ], [ %i.k, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit.thread ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1738, !alias.scope !8585
  %i.av = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !8585
  store ptr %i.b, ptr %5, align 8, !tbaa !1588, !noalias !8585
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm5EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_4http10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSE_(i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !8585
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1586
  %i.ay = icmp eq ptr %i.c, %i.ax
  br i1 %i.ay, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i

bb.g:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_NS0_4http10chunk_crlfEEEEE14const_iteratorC2ERKS9_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !1589
  %.not.i.i.i = icmp eq i8 %i.h, %i.bb
  br i1 %.not.i.i.i, label %bb.h, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bc = add nsw i8 %i.h, -1
  %switch.i.i.i.i.i = icmp ult i8 %i.bc, 3
  br i1 %switch.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i: ; preds = %bb.h
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !1572
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !1572
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i, %bb.h
  %i.bg = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %6, ptr %4, align 8, !tbaa !1588
  %i.bh = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm5EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_4http10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSE_(i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.bi = extractvalue { ptr, i64 } %i.bh, 1
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !1738
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !1598
  %i.bm = call i64 @llvm.usub.sat.i64(i64 %i.bi, i64 %i.bl)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_NS0_4http10chunk_crlfEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_NS0_4http10chunk_crlfEEEEE14const_iteratorC2ERKS9_.exit.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.i, %bb.g
  %i.bn = zext nneg i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %6, ptr %3, align 8, !tbaa !1588
  %i.bo = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm5EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_4http10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSE_(i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.bp = extractvalue { ptr, i64 } %i.bo, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_NS0_4http10chunk_crlfEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_NS0_4http10chunk_crlfEEEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i
  %.pn.i = phi i64 [ %i.bm, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread2.i ], [ %i.bp, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !2118
  %i.bs = sub i64 %i.br, %.pn.i
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !2118
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEEEEC2ERKSG_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::decrement", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 10 uses
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !280
  %i.b = load i64, ptr %1, align 8, !tbaa !2113
  store <2 x i64> %i.a, ptr %0, align 8, !tbaa !280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2145
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2145
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8598)
  %i.g = inttoptr i64 %i.b to ptr                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8600)
  store ptr %i.g, ptr %6, align 8, !tbaa !2117, !alias.scope !8601
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !2108, !noalias !8601
  store i64 %i.j, ptr %i.h, align 8, !tbaa !2118, !alias.scope !8601
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !2107, !noalias !8601, !nonnull !310, !align !313 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8603)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1586, !noalias !8604 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1589, !noalias !8604 ; 2 uses
  switch i8 %i.p, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratorC2ERKS7_.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratorC2ERKS7_.exit.thread.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1586, !alias.scope !8604
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !8604
  store <2 x ptr> %i.q, ptr %i.k, align 8, !tbaa !314, !alias.scope !8604
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !8604
  store <2 x ptr> %i.r, ptr %i.k, align 8, !tbaa !314, !alias.scope !8604
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit

bb.e:                                             ; preds = %bb.a
  %i.s = load <2 x ptr>, ptr %i.m, align 8, !tbaa !314, !noalias !8604
  store <2 x ptr> %i.s, ptr %i.k, align 8, !tbaa !314, !alias.scope !8604
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = load i8, ptr %i.t, align 8, !tbaa !280, !noalias !8604
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1586, !alias.scope !8604
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.u, ptr %i.v, align 8, !tbaa !280, !alias.scope !8604
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit

_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratorC2ERKS7_.exit.thread.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store i8 %i.p, ptr %i.w, align 8, !tbaa !1589, !alias.scope !8604
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.l, ptr %i.x, align 8, !tbaa !1738, !alias.scope !8604
  %i.y = icmp sgt i64 %2, 0
  br i1 %i.y, label %.preheader.i, label %.preheader7.i

.preheader7.i:                                    ; preds = %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit
  %.not9.i = icmp eq i64 %2, 0
  br i1 %.not9.i, label %.noexc, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader7.i
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.noexc9

.preheader.i:                                     ; preds = %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %2, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_NS0_4http10chunk_crlfEEEEEEEEE5beginEv.exit ]
  %i.aa = add nsw i64 %.011.i, -1                 ; 2 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(48) %6) ; 0 uses
  %.not6.i = icmp eq i64 %i.aa, 0
  br i1 %.not6.i, label %.noexc, label %.preheader.i, !llvm.loop !8596

.noexc9:                                          ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratormmEv.exit.i, %.lr.ph.i
  %.110.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ac, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratormmEv.exit.i ]
  %i.ac = add nsw i64 %.110.i, 1                  ; 2 uses
  %i.ad = load i8, ptr %i.w, align 8, !tbaa !1589
  %i.ae = zext i8 %i.ad to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.k, ptr %5, align 8, !tbaa !1588
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm5EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_4http10chunk_crlfEEE14const_iterator9decrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSE_(i64 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !1738 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !1586
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !1586
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratoreqERKS7_.exit.thread_crit_edge.i.i.i
end_hunk_4
