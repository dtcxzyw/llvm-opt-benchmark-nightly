Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/core_snippets?download=true
inline.NumInlined: 5845
inline.NumDeleted: 2719
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5boost5beast4http6detail20write_ostream_lambdaINS1_10serializerILb0ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS7_EEEEEclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSG_INSJ_IJNS_4asio12const_bufferESL_SL_NSB_6writer11field_rangeENS1_10chunk_crlfEEEEEENS8_8subrangeILb0EEEEEEEEEEEEEEvRNS_6system10error_codeERKT_:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cy = add i8 %.sroa.55.1, -6
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cy, -5
  br label %bb.y

bb.y:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorppEi.exit.i, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS0_18basic_multi_bufferISB_E8subrangeILb0EEEEEEEEEEEEE3endEv.exit
  %i.cz = phi ptr [ %i.l, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS0_18basic_multi_bufferISB_E8subrangeILb0EEEEEEEEEEEEE3endEv.exit ], [ %.pre48, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorppEi.exit.i ]
  %i.da = phi ptr [ %i.i, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS0_18basic_multi_bufferISB_E8subrangeILb0EEEEEEEEEEEEE3endEv.exit ], [ %.pre, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorppEi.exit.i ]
  %.013 = phi i64 [ 0, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS0_18basic_multi_bufferISB_E8subrangeILb0EEEEEEEEEEEEE3endEv.exit ], [ %i.ed, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorppEi.exit.i ] ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.i
  %i.dc = icmp eq ptr %i.cz, %i.cm
  %or.cond = select i1 %i.db, i1 %i.dc, i1 false
  %i.dd = load ptr, ptr %i.cn, align 8
  %i.de = icmp eq ptr %i.dd, %i.bs
  %or.cond38 = select i1 %or.cond, i1 %i.de, i1 false
  %i.df = load i8, ptr %i.cp, align 8
  %.not.i.i.i.i.i.i = icmp eq i8 %i.df, %i.bv
  %or.cond53 = select i1 %or.cond38, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond53, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  switch i8 %i.bv, label %default.unreachable [
    i8 0, label %.thread30
    i8 1, label %bb.aa
    i8 2, label %bb.ac
    i8 3, label %.thread30
  ]

default.unreachable:                              ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dg = load ptr, ptr %i.co, align 8, !tbaa !452
  %i.dh = icmp eq ptr %i.dg, %.sroa.35.2
  %i.di = load i8, ptr %i.cr, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.di, %.sroa.55.1
  %or.cond54 = select i1 %i.dh, i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond54, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8
  %i.dj = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.46.2
  %or.cond55 = select i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.dj
  br i1 %or.cond55, label %.thread30, label %.thread

bb.ac:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr %i.co, align 8, !tbaa !406
  %i.dl = icmp eq ptr %i.dk, %.sroa.35.2
  %i.dm = load ptr, ptr %i.cq, align 8
  %i.dn = icmp eq ptr %i.dm, %.sroa.46.2
  %i.do = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %i.do, label %.thread30, label %.thread

.thread:                                          ; preds = %bb.ab, %bb.aa, %bb.y, %bb.ac
  %i.dp = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cn) ; 2 uses
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1
  %i.dr = load i64, ptr %i.cs, align 8, !tbaa !1483
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dq) ; 2 uses
  %i.ds = extractvalue { ptr, i64 } %i.dp, 0
  %i.dt = load ptr, ptr %0, align 8, !tbaa !472, !nonnull !64, !align !65
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.ds, i64 noundef %spec.select.i.i) ; 0 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !472, !nonnull !64, !align !65 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !44
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !229
  %i.ec = and i32 %i.eb, 5
  %.not39 = icmp eq i32 %i.ec, 0
  br i1 %.not39, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %.thread
  %i.ed = add i64 %spec.select.i.i, %.013
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.ee = load ptr, ptr %i.cn, align 8, !tbaa !460, !noalias !1484
  store ptr %i.ee, ptr %4, align 8, !tbaa !460, !alias.scope !1484
  store i8 0, ptr %i.cu, align 8, !tbaa !462, !alias.scope !1484
  %i.ef = load i8, ptr %i.cp, align 8, !tbaa !462, !noalias !1484 ; 3 uses
  switch i8 %i.ef, label %bb.ae [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorppEi.exit.i
    i8 1, label %bb.af
    i8 2, label %bb.an
    i8 3, label %bb.ao
  ]

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %i.co, align 8, !tbaa !452, !noalias !1484
  store ptr %i.eg, ptr %i.ct, align 8, !tbaa !452, !alias.scope !1484
  store i8 0, ptr %i.cw, align 8, !tbaa !455, !alias.scope !1484
  %i.eh = load i8, ptr %i.cr, align 8, !tbaa !455, !noalias !1484 ; 2 uses
  switch i8 %i.eh, label %bb.ag [
    i8 0, label %.sink.split.i.i.i.i.i.i.i.i
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.aj
    i8 4, label %bb.ak
    i8 5, label %bb.al
    i8 6, label %bb.am
  ]

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ei = load ptr, ptr %i.cq, align 8, !tbaa !421, !noalias !1484
  store ptr %i.ei, ptr %i.cv, align 8, !tbaa !421, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.af
  %i.ej = load ptr, ptr %i.cq, align 8, !tbaa !421, !noalias !1484
  store ptr %i.ej, ptr %i.cv, align 8, !tbaa !421, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.af
  %i.ek = load ptr, ptr %i.cq, align 8, !tbaa !421, !noalias !1484
  store ptr %i.ek, ptr %i.cv, align 8, !tbaa !421, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %i.cq, align 8, !tbaa !457, !noalias !1484
  store ptr %i.el, ptr %i.cv, align 8, !tbaa !398, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.af
  %i.em = load ptr, ptr %i.cq, align 8, !tbaa !421, !noalias !1484
  store ptr %i.em, ptr %i.cv, align 8, !tbaa !421, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.af
  %i.en = load i8, ptr %i.cq, align 8, !tbaa !53, !noalias !1484
  store i8 %i.en, ptr %i.cv, align 8, !tbaa !53, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  store i8 %i.eh, ptr %i.cw, align 8, !tbaa !455, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.ad
  %i.eo = load <2 x ptr>, ptr %i.co, align 8, !tbaa !280, !noalias !1484
  store <2 x ptr> %i.eo, ptr %i.ct, align 8, !tbaa !280, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.ad
  %i.ep = load i8, ptr %i.co, align 8, !tbaa !53, !noalias !1484
  store i8 %i.ep, ptr %i.ct, align 8, !tbaa !53, !alias.scope !1484
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.ao, %bb.an, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af
  store i8 %i.ef, ptr %i.cu, align 8, !tbaa !462, !alias.scope !1484
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorppEi.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorppEi.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.ad
  %i.eq = load ptr, ptr %i.bq, align 8, !tbaa !477, !noalias !1484
  store ptr %i.eq, ptr %i.cx, align 8, !tbaa !477, !alias.scope !1484
  %i.er = zext nneg i8 %i.ef to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !1484
  store ptr %i.cn, ptr %3, align 8, !tbaa !478, !noalias !1484
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENS5_18basic_multi_bufferISD_E8subrangeILb0EEEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !1484
  %i.es = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.et = extractvalue { ptr, i64 } %i.es, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.eu = load i64, ptr %i.cs, align 8, !tbaa !1483
  %i.ev = sub i64 %i.eu, %i.et
  store i64 %i.ev, ptr %i.cs, align 8, !tbaa !1483
  %.pre = load ptr, ptr %5, align 8, !tbaa !1485
  %.pre48 = load ptr, ptr %i.bq, align 8
  br label %bb.y

bb.ap:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.aq

.thread30:                                        ; preds = %bb.ab, %bb.z, %bb.z, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !479, !nonnull !64, !align !65
  call void @_ZN5boost5beast4http10serializerILb0ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS5_EEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(415) %i.ex, i64 noundef %.013)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread30, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS0_18basic_multi_bufferISA_E8subrangeILb0EEEEEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>>>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !476, !nonnull !64, !align !65 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !460, !noalias !1490 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.h = load i8, ptr %i.g, align 8, !tbaa !462, !noalias !1490 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS2_18basic_multi_bufferISA_E8subrangeILb0EEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread57
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS2_18basic_multi_bufferISA_E8subrangeILb0EEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread57: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !460
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !462
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !452, !noalias !1490 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.o = load i8, ptr %i.n, align 8, !tbaa !455, !noalias !1490 ; 2 uses
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
  store ptr %i.e, ptr %i.p, align 8, !tbaa !460
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !462
  store ptr %i.l, ptr %i.q, align 8, !tbaa !452
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !455
  br label %.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !421, !noalias !1490
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !460
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !462
  store ptr %i.l, ptr %i.v, align 8, !tbaa !452
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !421, !noalias !1490
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !460
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !462
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !452
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !421, !noalias !1490
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !460
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !462
  store ptr %i.l, ptr %i.af, align 8, !tbaa !452
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !457, !noalias !1490
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !460
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !462
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !452
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !398
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !421, !noalias !1490
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !460
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !462
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !452
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !53, !noalias !1490
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !460
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !462
  store ptr %i.l, ptr %i.au, align 8, !tbaa !452
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !455
  br label %.sink.split.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bb, align 8, !tbaa !460
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !462
  %i.be = load <2 x ptr>, ptr %i.f, align 8, !tbaa !280, !noalias !1490
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load i8, ptr %i.f, align 8, !tbaa !53, !noalias !1490
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !460
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !462
  store i8 %i.bf, ptr %i.bh, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %.thread, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.bi, %bb.l ], [ %i.bd, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.bk = phi ptr [ %i.bh, %bb.l ], [ %i.bc, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.bl = phi ptr [ %i.bg, %bb.l ], [ %i.bb, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bj, align 8, !tbaa !462
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS2_18basic_multi_bufferISA_E8subrangeILb0EEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread57, %.sink.split.i.i.i.i.i.i
  %i.bm = phi ptr [ %i.bj, %.sink.split.i.i.i.i.i.i ], [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS2_18basic_multi_bufferISA_E8subrangeILb0EEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread57 ] ; 2 uses
  %i.bn = phi ptr [ %i.bk, %.sink.split.i.i.i.i.i.i ], [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS2_18basic_multi_bufferISA_E8subrangeILb0EEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread57 ] ; 3 uses
  %i.bo = phi ptr [ %i.bl, %.sink.split.i.i.i.i.i.i ], [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS2_18basic_multi_bufferISA_E8subrangeILb0EEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread57 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !477
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.n

bb.n:                                             ; preds = %bb.ab, %bb.m
  %.pre46 = phi ptr [ %i.e, %bb.m ], [ %.pre46.pre, %bb.ab ] ; 2 uses
  %i.bx = phi ptr [ %i.c, %bb.m ], [ %.pre, %bb.ab ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.m ], [ %i.cq, %bb.ab ] ; 4 uses
  %i.by = icmp eq ptr %i.bx, %i.c
  br i1 %i.by, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre47 = load i8, ptr %i.bm, align 8, !tbaa !462, !noalias !1491
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %4 = icmp eq ptr %.pre46, %i.c
  %.pre48 = load i8, ptr %i.bm, align 8, !tbaa !462 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre48, 3
  %or.cond = select i1 %4, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %5 = phi i8 [ %.pre47, %._crit_edge ], [ %.pre48, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  store ptr %.pre46, ptr %3, align 8, !tbaa !460, !alias.scope !1491
  store i8 0, ptr %i.br, align 8, !tbaa !462, !alias.scope !1491
  switch i8 %5, label %bb.q [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorC2ERKSM_.exit.i
    i8 1, label %bb.r
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !452, !noalias !1491
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !452, !alias.scope !1491
  store i8 0, ptr %i.bu, align 8, !tbaa !455, !alias.scope !1491
  %i.ca = load i8, ptr %i.bv, align 8, !tbaa !455, !noalias !1491 ; 2 uses
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
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !421, !noalias !1491
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !421, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !421, !noalias !1491
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !421, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !421, !noalias !1491
  store ptr %i.cd, ptr %i.bs, align 8, !tbaa !421, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !457, !noalias !1491
  store ptr %i.ce, ptr %i.bs, align 8, !tbaa !398, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !421, !noalias !1491
  store ptr %i.cf, ptr %i.bs, align 8, !tbaa !421, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.r
  %i.cg = load i8, ptr %i.bt, align 8, !tbaa !53, !noalias !1491
  store i8 %i.cg, ptr %i.bs, align 8, !tbaa !53, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  store i8 %i.ca, ptr %i.bu, align 8, !tbaa !455, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !406, !noalias !1491
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !406, !alias.scope !1491
  %i.ci = load ptr, ptr %i.bt, align 8, !tbaa !250, !noalias !1491
  store ptr %i.ci, ptr %i.bs, align 8, !tbaa !156, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.p
  %i.cj = load i8, ptr %i.bn, align 1, !tbaa !53, !noalias !1491
  store i8 %i.cj, ptr %i.bq, align 8, !tbaa !53, !alias.scope !1491
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.aa, %bb.z, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  store i8 %5, ptr %i.br, align 8, !tbaa !462, !alias.scope !1491
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorC2ERKSM_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorC2ERKSM_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.p
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !477, !alias.scope !1491
  %i.ck = zext nneg i8 %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1491
  store ptr %i.bo, ptr %2, align 8, !tbaa !478, !noalias !1491
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENS5_18basic_multi_bufferISD_E8subrangeILb0EEEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1491
  %i.cl = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.cm = extractvalue { ptr, i64 } %i.cl, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.not = icmp ult i64 %i.cm, %.011
  br i1 %.not, label %bb.ab, label %.thread37

.thread37:                                        ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorC2ERKSM_.exit.i
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !475
  %i.co = add i64 %i.cn, %.011
  store i64 %i.co, ptr %i.a, align 8, !tbaa !475
  %i.cp = sub i64 %.011, %i.cm
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !1492
  br label %.loopexit

bb.ab:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratorC2ERKSM_.exit.i
  %i.cq = sub nuw i64 %.011, %i.cm
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !475
  %i.cs = add i64 %i.cr, %i.cm
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !475
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !477
  %.pre46.pre = load ptr, ptr %i.bo, align 8, !tbaa !460
  br label %bb.n

.loopexit:                                        ; preds = %bb.o, %.thread37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS9_E8subrangeILb0EEEEEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>>::const_iterator::dereference", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !477  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %0, align 8, !tbaa !460
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !460
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !462
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !462   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load i8, ptr %i.k, align 8, !tbaa !462
  %.not.i.i = icmp eq i8 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i8 %i.j, label %bb.d [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread3
    i8 1, label %bb.e
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit
    i8 3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread3
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !452
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !452
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !455   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = load i8, ptr %i.t, align 8, !tbaa !455
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !280
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !280
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit: ; preds = %bb.c
  %i.y = load <2 x ptr>, ptr %i.g, align 8
  %i.z = load <2 x ptr>, ptr %i.h, align 8
  %i.aa = icmp eq <2 x ptr> %i.y, %i.z            ; 2 uses
  %i.ab = extractelement <2 x i1> %i.aa, i64 0
  %i.ac = extractelement <2 x i1> %i.aa, i64 1
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit
  %i.ae = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %0, ptr %2, align 8, !tbaa !478
  %i.af = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENS5_18basic_multi_bufferISD_E8subrangeILb0EEEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !477
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !448
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.ah) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %spec.select.i
  %i.am = sub i64 %i.ah, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.al, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.am, 1
  br label %bb.h

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread: ; preds = %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread_crit_edge, %bb.f, %bb.e, %bb.b, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit
  %i.an = phi i8 [ %.pre, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread_crit_edge ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.j, %bb.b ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit ]
  %i.ao = zext i8 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %0, ptr %1, align 8, !tbaa !478
  %i.ap = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENS5_18basic_multi_bufferISD_E8subrangeILb0EEEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread3
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread3 ], [ %i.ap, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iteratoreqERKSK_.exit.thread ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENS5_18basic_multi_bufferISD_E8subrangeILb0EEEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  switch i64 %0, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.81)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr @.str.78, ptr %6, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.79, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !106
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #34
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.bc, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !468, !nonnull !64, !align !65 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !455
  %i.i = zext i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.f, ptr %4, align 8, !tbaa !454
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS0_18basic_multi_bufferIS8_E8subrangeILb0EEEEE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.g:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !468, !nonnull !64, !align !65 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !250
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129  ; 4 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !250
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !460  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !406  ; 5 uses
  %i.s = icmp eq ptr %i.r, %i.p
  %.fr.i.i = freeze i1 %i.s                       ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !250, !noalias !1497
  %i.u = icmp eq ptr %i.n, %i.t
  %i.v = select i1 %.fr.i.i, i1 %i.u, i1 false
  br i1 %i.v, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  br i1 %.fr.i.i, label %.lr.ph.split.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.i
  %i.aa = phi ptr [ %i.ak, %bb.i ], [ %i.n, %.lr.ph.i.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_S5_S5_SC_EE14const_iteratorC2ERKNS2_5tupleIJSE_SG_S5_SC_SK_SC_S5_S5_SC_EEESt17integral_constantIbLb0EE:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17: ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1856
  store i8 0, ptr %i.b, align 8, !tbaa !540
  store ptr %i.c, ptr %i.a, align 8, !tbaa !452
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !455
  br label %bb.f

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !457, !noalias !1858
  store ptr %i.n, ptr %i.d, align 8, !tbaa !398, !alias.scope !1856
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #33
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %5, align 8, !tbaa !452   ; 8 uses
  %.pre14 = load i8, ptr %i.e, align 8, !tbaa !455 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1856
  store ptr %.pre, ptr %i.a, align 8, !tbaa !452
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store i8 0, ptr %i.r, align 8, !tbaa !455
  switch i8 %.pre14, label %bb.c [
    i8 0, label %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_NS0_18basic_multi_bufferIS8_E8subrangeILb0EE14const_iteratorESG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit
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
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !421
  store ptr %i.v, ptr %i.t, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.w = phi ptr [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16 ], [ %i.r, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.x = phi ptr [ %i.h, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16 ], [ %i.q, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.y = phi ptr [ %i.c, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16 ], [ %.pre, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !421
  store ptr %i.z, ptr %i.x, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.aa = phi ptr [ %i.l, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17 ], [ %i.r, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.ab = phi ptr [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17 ], [ %i.q, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.ac = phi ptr [ %i.c, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17 ], [ %.pre, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !421
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !457
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !398
  br label %.sink.split.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !421
  store ptr %i.af, ptr %i.q, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.ag = load i8, ptr %i.d, align 8, !tbaa !53
  store i8 %i.ag, ptr %i.q, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ah = phi ptr [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ %i.r, %bb.g ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.ai = phi ptr [ %.pre, %bb.i ], [ %.pre, %bb.h ], [ %.pre, %bb.g ], [ %i.ac, %bb.f ], [ %i.y, %bb.e ], [ %i.u, %bb.d ]
  %i.aj = phi i8 [ 6, %bb.i ], [ 5, %bb.h ], [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ] ; 2 uses
  store i8 %i.aj, ptr %i.ah, align 8, !tbaa !455
  br label %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_NS0_18basic_multi_bufferIS8_E8subrangeILb0EE14const_iteratorESG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit

_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_NS0_18basic_multi_bufferIS8_E8subrangeILb0EE14const_iteratorESG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit, %.sink.split.i.i.i.i.i.i
  %i.ak = phi ptr [ %i.r, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ], [ %i.ah, %.sink.split.i.i.i.i.i.i ] ; 2 uses
  %i.al = phi ptr [ %.pre, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ], [ %i.ai, %.sink.split.i.i.i.i.i.i ]
  %.pre14.i8 = phi i8 [ %.pre14, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ], [ %i.aj, %.sink.split.i.i.i.i.i.i ] ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !540
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %0, ptr %6, align 8, !tbaa !542
  %i.am = load ptr, ptr %0, align 8, !tbaa !539   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !461, !noalias !1859
  %i.ao = icmp eq ptr %i.al, %i.an
  %.not.i.i.i9 = icmp eq i8 %.pre14.i8, 6
  %or.cond.i10 = and i1 %i.ao, %.not.i.i.i9
  br i1 %or.cond.i10, label %.lr.ph.i.i, label %.noexc

.noexc:                                           ; preds = %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_NS0_18basic_multi_bufferIS8_E8subrangeILb0EE14const_iteratorESG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit, %.noexc3
  %.pre14.i11 = phi i8 [ %.pre14.i, %.noexc3 ], [ %.pre14.i8, %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_NS0_18basic_multi_bufferIS8_E8subrangeILb0EE14const_iteratorESG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit ]
  %i.ap = zext i8 %.pre14.i11 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.a, ptr %3, align 8, !tbaa !454
  %i.aq = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ar = extractvalue { ptr, i64 } %i.aq, 1
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %.noexc3, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

.noexc3:                                          ; preds = %.noexc
  %i.as = load i8, ptr %i.ak, align 8, !tbaa !455
  %i.at = zext i8 %i.as to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.a, ptr %2, align 8, !tbaa !454
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.au = load ptr, ptr %0, align 8, !tbaa !539   ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !461, !noalias !1859
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !452
  %i.ax = icmp eq ptr %i.aw, %i.av
  %.pre14.i = load i8, ptr %i.ak, align 8, !tbaa !455 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.pre14.i, 6
  %or.cond.i = select i1 %i.ax, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i.i, label %.noexc, !llvm.loop !30

.lr.ph.i.i:                                       ; preds = %.noexc3, %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_NS0_18basic_multi_bufferIS8_E8subrangeILb0EE14const_iteratorESG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit
  %.lcssa = phi ptr [ %i.am, %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_NS0_18basic_multi_bufferIS8_E8subrangeILb0EE14const_iteratorESG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit ], [ %i.au, %.noexc3 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !560 ; 2 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !421
  store i8 2, ptr %i.b, align 8, !tbaa !540
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !50
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !421
  store i8 3, ptr %i.b, align 8, !tbaa !540
  call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_S5_S5_SC_EE14const_iterator9increment4nextILm3EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %.noexc, %._crit_edge.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost5beast4http6detail20write_ostream_lambdaINS1_10serializerILb0ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS7_EEEEEclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSG_INSJ_IJNS_4asio12const_bufferESL_SL_NSB_6writer11field_rangeENS1_10chunk_crlfEEEEEENS2_10chunk_sizeESL_SO_NS8_8subrangeILb0EEESO_EEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::beast::detail::buffers_range_adaptor<const boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>, boost::beast::http::chunk_crlf>> &>> &>::const_iterator", align 8 ; 89 uses
  %4 = alloca %"class.boost::beast::detail::buffers_range_adaptor<const boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>, boost::beast::http::chunk_crlf>> &>> &>::const_iterator", align 8 ; 87 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !472, !nonnull !64, !align !65 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !229
  %i.h = and i32 %i.g, 5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.i = load ptr, ptr %2, align 8, !tbaa !1883, !noalias !1884 ; 52 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !584, !noalias !1885 ; 14 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !585, !noalias !1885, !nonnull !64, !align !65 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !485, !noalias !1886 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.q = load i8, ptr %i.p, align 8, !tbaa !486, !noalias !1886 ; 2 uses
  switch i8 %i.q, label %bb.c [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS2_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSW_PKNS0_14mutable_bufferEEE5valueEiE4typeENSY_IXntsr14is_convertibleISZ_PKS8_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S10_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S8_EE5valueEiE4typeE.exit.thread20.i
    i8 1, label %bb.d
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
    i8 7, label %bb.q
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS2_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSW_PKNS0_14mutable_bufferEEE5valueEiE4typeENSY_IXntsr14is_convertibleISZ_PKS8_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S10_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S8_EE5valueEiE4typeE.exit.thread20.i: ; preds = %bb.b
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx24.i, align 8, !alias.scope !1887
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.r, align 8, !tbaa !485, !alias.scope !1887
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !486, !alias.scope !1887
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !452, !noalias !1886 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.w = load i8, ptr %i.v, align 8, !tbaa !455, !noalias !1886 ; 2 uses
  switch i8 %i.w, label %bb.e [
    i8 0, label %.thread.i
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
  ]

.thread.i:                                        ; preds = %bb.d
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx1658.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx1658.i, align 8, !alias.scope !1887
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.x, align 8, !tbaa !485, !alias.scope !1887
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.t, ptr %i.y, align 8, !tbaa !452, !alias.scope !1887
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.aa, align 8, !tbaa !455, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !421, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx1662.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx1662.i, align 8, !alias.scope !1887
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !485, !alias.scope !1887
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !452, !alias.scope !1887
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !421, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !421, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx1669.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx1669.i, align 8, !alias.scope !1887
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !485, !alias.scope !1887
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.aj, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !452, !alias.scope !1887
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !421, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !421, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx1675.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx1675.i, align 8, !alias.scope !1887
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.am, align 8, !tbaa !485, !alias.scope !1887
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.ao, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.t, ptr %i.an, align 8, !tbaa !452, !alias.scope !1887
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !421, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !457, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx1681.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx1681.i, align 8, !alias.scope !1887
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.ar, align 8, !tbaa !485, !alias.scope !1887
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.t, ptr %i.as, align 8, !tbaa !452, !alias.scope !1887
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !398, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !421, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx1687.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx1687.i, align 8, !alias.scope !1887
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.aw, align 8, !tbaa !485, !alias.scope !1887
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.t, ptr %i.ax, align 8, !tbaa !452, !alias.scope !1887
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.av, ptr %i.az, align 8, !tbaa !421, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.d
  %i.ba = load i8, ptr %i.u, align 8, !tbaa !53, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx16.i, align 8, !alias.scope !1887
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.bb, align 8, !tbaa !485, !alias.scope !1887
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.t, ptr %i.bc, align 8, !tbaa !452, !alias.scope !1887
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %i.ba, ptr %i.be, align 8, !tbaa !53, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.bf = phi ptr [ %i.bd, %bb.k ], [ %i.ay, %bb.j ], [ %i.at, %bb.i ], [ %i.ao, %bb.h ], [ %i.aj, %bb.g ], [ %i.ae, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.w, ptr %i.bg, align 8, !tbaa !455, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.b
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !421, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx29.i, align 8, !alias.scope !1887
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.bi, align 8, !tbaa !485, !alias.scope !1887
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.bk, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !421, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.b
  %i.bl = load ptr, ptr %i.o, align 8, !tbaa !421, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx35.i, align 8, !alias.scope !1887
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.bm, align 8, !tbaa !485, !alias.scope !1887
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.bo, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !421, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.b
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !421, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx41.i, align 8, !alias.scope !1887
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.bq, align 8, !tbaa !485, !alias.scope !1887
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.bs, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !421, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.b
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx47.i, align 8, !alias.scope !1887
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.bt, align 8, !tbaa !485, !alias.scope !1887
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.bv, align 8, !tbaa !486, !alias.scope !1887
  %i.bw = load <2 x ptr>, ptr %i.o, align 8, !tbaa !280, !noalias !1886
  store <2 x ptr> %i.bw, ptr %i.bu, align 8, !tbaa !280, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.b
  %i.bx = load ptr, ptr %i.o, align 8, !tbaa !421, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx54.i, align 8, !alias.scope !1887
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.by, align 8, !tbaa !485, !alias.scope !1887
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.ca, align 8, !tbaa !486, !alias.scope !1887
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !421, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.b
  %i.cb = load i8, ptr %i.o, align 8, !tbaa !53, !noalias !1886
  store ptr %i.i, ptr %3, align 8, !alias.scope !1887
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1887
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.cc, align 8, !tbaa !485, !alias.scope !1887
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.ce, align 8, !tbaa !486, !alias.scope !1887
  store i8 %i.cb, ptr %i.cd, align 8, !tbaa !53, !alias.scope !1887
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i
  %i.cf = phi ptr [ %i.ce, %bb.q ], [ %i.ca, %bb.p ], [ %i.bv, %bb.o ], [ %i.bs, %bb.n ], [ %i.bo, %bb.m ], [ %i.bk, %bb.l ], [ %i.bf, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %.thread.i ]
  store i8 %i.q, ptr %i.cf, align 8, !tbaa !486, !alias.scope !1887
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS2_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSW_PKNS0_14mutable_bufferEEE5valueEiE4typeENSY_IXntsr14is_convertibleISZ_PKS8_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S10_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S8_EE5valueEiE4typeE.exit.thread20.i, %.sink.split.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.l, ptr %i.cg, align 8, !tbaa !562, !alias.scope !1887
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !586, !noalias !1888 ; 14 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !485 ; 14 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !486 ; 2 uses
  switch i8 %i.cn, label %bb.r [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS2_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSW_PKNS0_14mutable_bufferEEE5valueEiE4typeENSY_IXntsr14is_convertibleISZ_PKS8_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S10_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S8_EE5valueEiE4typeE.exit.thread26.i
    i8 1, label %bb.s
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
    i8 5, label %bb.ad
    i8 6, label %bb.ae
    i8 7, label %bb.af
  ]

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS2_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSW_PKNS0_14mutable_bufferEEE5valueEiE4typeENSY_IXntsr14is_convertibleISZ_PKS8_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S10_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S8_EE5valueEiE4typeE.exit.thread26.i: ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx31.i, align 8, !alias.scope !1889
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.cq, align 8, !tbaa !485, !alias.scope !1889
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 0, ptr %i.cr, align 8, !tbaa !486, !alias.scope !1889
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE3endEv.exit

bb.r:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  unreachable

bb.s:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !452 ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !455 ; 2 uses
  switch i8 %i.cv, label %bb.t [
    i8 0, label %.thread.i17
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
    i8 5, label %bb.y
    i8 6, label %bb.z
  ]

.thread.i17:                                      ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx2075.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx2075.i, align 8, !alias.scope !1889
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.cy, align 8, !tbaa !485, !alias.scope !1889
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.da, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.cs, ptr %i.cz, align 8, !tbaa !452, !alias.scope !1889
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.db, align 8, !tbaa !455, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i1.i

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !421
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx2079.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx2079.i, align 8, !alias.scope !1889
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.df, align 8, !tbaa !485, !alias.scope !1889
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.dh, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.cs, ptr %i.dg, align 8, !tbaa !452, !alias.scope !1889
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.dc, ptr %i.di, align 8, !tbaa !421, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i

bb.v:                                             ; preds = %bb.s
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !421
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx2086.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx2086.i, align 8, !alias.scope !1889
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.dm, align 8, !tbaa !485, !alias.scope !1889
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.do, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.cs, ptr %i.dn, align 8, !tbaa !452, !alias.scope !1889
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.dj, ptr %i.dp, align 8, !tbaa !421, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i

bb.w:                                             ; preds = %bb.s
  %i.dq = load ptr, ptr %i.ct, align 8, !tbaa !421
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx2092.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx2092.i, align 8, !alias.scope !1889
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.dt, align 8, !tbaa !485, !alias.scope !1889
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.dv, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.cs, ptr %i.du, align 8, !tbaa !452, !alias.scope !1889
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.dq, ptr %i.dw, align 8, !tbaa !421, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i

bb.x:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %i.ct, align 8, !tbaa !457
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx2098.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx2098.i, align 8, !alias.scope !1889
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.ea, align 8, !tbaa !485, !alias.scope !1889
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.ec, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.cs, ptr %i.eb, align 8, !tbaa !452, !alias.scope !1889
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.dx, ptr %i.ed, align 8, !tbaa !398, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i

bb.y:                                             ; preds = %bb.s
  %i.ee = load ptr, ptr %i.ct, align 8, !tbaa !421
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx20104.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx20104.i, align 8, !alias.scope !1889
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.eh, align 8, !tbaa !485, !alias.scope !1889
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.ej, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.cs, ptr %i.ei, align 8, !tbaa !452, !alias.scope !1889
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ee, ptr %i.ek, align 8, !tbaa !421, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i

bb.z:                                             ; preds = %bb.s
  %i.el = load i8, ptr %i.ct, align 8, !tbaa !53
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx20.i, align 8, !alias.scope !1889
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.eo, align 8, !tbaa !485, !alias.scope !1889
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.eq, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.cs, ptr %i.ep, align 8, !tbaa !452, !alias.scope !1889
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %i.el, ptr %i.er, align 8, !tbaa !53, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i:             ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.es = phi ptr [ %i.eq, %bb.z ], [ %i.ej, %bb.y ], [ %i.ec, %bb.x ], [ %i.dv, %bb.w ], [ %i.do, %bb.v ], [ %i.dh, %bb.u ]
  %i.et = phi ptr [ %i.eo, %bb.z ], [ %i.eh, %bb.y ], [ %i.ea, %bb.x ], [ %i.dt, %bb.w ], [ %i.dm, %bb.v ], [ %i.df, %bb.u ]
  %i.eu = phi ptr [ %i.en, %bb.z ], [ %i.eg, %bb.y ], [ %i.dz, %bb.x ], [ %i.ds, %bb.w ], [ %i.dl, %bb.v ], [ %i.de, %bb.u ]
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 %i.cv, ptr %i.ev, align 8, !tbaa !455, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i1.i

bb.aa:                                            ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  %i.ew = load ptr, ptr %i.cl, align 8, !tbaa !421
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx37.i, align 8, !alias.scope !1889
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.ez, align 8, !tbaa !485, !alias.scope !1889
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.fb, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.ew, ptr %i.fa, align 8, !tbaa !421, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i1.i

bb.ab:                                            ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  %i.fc = load ptr, ptr %i.cl, align 8, !tbaa !421
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx45.i, align 8, !alias.scope !1889
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.ff, align 8, !tbaa !485, !alias.scope !1889
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.fh, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.fc, ptr %i.fg, align 8, !tbaa !421, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i1.i

bb.ac:                                            ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  %i.fi = load ptr, ptr %i.cl, align 8, !tbaa !421
  %i.fj = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx53.i, align 8, !alias.scope !1889
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.fl, align 8, !tbaa !485, !alias.scope !1889
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.fn, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.fi, ptr %i.fm, align 8, !tbaa !421, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i1.i

bb.ad:                                            ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx61.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx61.i, align 8, !alias.scope !1889
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.fq, align 8, !tbaa !485, !alias.scope !1889
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.fs, align 8, !tbaa !486, !alias.scope !1889
  %i.ft = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !280
  store <2 x ptr> %i.ft, ptr %i.fr, align 8, !tbaa !280, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i1.i

bb.ae:                                            ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  %i.fu = load ptr, ptr %i.cl, align 8, !tbaa !421
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx70.i, align 8, !alias.scope !1889
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.fx, align 8, !tbaa !485, !alias.scope !1889
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.fz, align 8, !tbaa !486, !alias.scope !1889
  store ptr %i.fu, ptr %i.fy, align 8, !tbaa !421, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i1.i

bb.af:                                            ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE5beginEv.exit
  %i.ga = load i8, ptr %i.cl, align 8, !tbaa !53
  %i.gb = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !562
  store ptr %i.i, ptr %4, align 8, !alias.scope !1889
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx.i16, align 8, !alias.scope !1889
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.gd, align 8, !tbaa !485, !alias.scope !1889
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.gf, align 8, !tbaa !486, !alias.scope !1889
  store i8 %i.ga, ptr %i.ge, align 8, !tbaa !53, !alias.scope !1889
  br label %.sink.split.i.i.i.i.i1.i

.sink.split.i.i.i.i.i1.i:                         ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i, %.thread.i17
  %i.gg = phi ptr [ %i.gf, %bb.af ], [ %i.fz, %bb.ae ], [ %i.fs, %bb.ad ], [ %i.fn, %bb.ac ], [ %i.fh, %bb.ab ], [ %i.fb, %bb.aa ], [ %i.es, %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i ], [ %i.da, %.thread.i17 ]
  %i.gh = phi ptr [ %i.gd, %bb.af ], [ %i.fx, %bb.ae ], [ %i.fq, %bb.ad ], [ %i.fl, %bb.ac ], [ %i.ff, %bb.ab ], [ %i.ez, %bb.aa ], [ %i.et, %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i ], [ %i.cy, %.thread.i17 ]
  %i.gi = phi ptr [ %i.gc, %bb.af ], [ %i.fw, %bb.ae ], [ %i.fp, %bb.ad ], [ %i.fk, %bb.ac ], [ %i.fe, %bb.ab ], [ %i.ey, %bb.aa ], [ %i.eu, %.sink.split.i.i.i.i.i.i.i.i.i.i.i2.i ], [ %i.cx, %.thread.i17 ]
  store i8 %i.cn, ptr %i.gg, align 8, !tbaa !486, !alias.scope !1889
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE3endEv.exit

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE3endEv.exit: ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS2_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSW_PKNS0_14mutable_bufferEEE5valueEiE4typeENSY_IXntsr14is_convertibleISZ_PKS8_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S10_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S8_EE5valueEiE4typeE.exit.thread26.i, %.sink.split.i.i.i.i.i1.i
  %i.gj = phi ptr [ %i.cq, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS2_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSW_PKNS0_14mutable_bufferEEE5valueEiE4typeENSY_IXntsr14is_convertibleISZ_PKS8_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S10_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S8_EE5valueEiE4typeE.exit.thread26.i ], [ %i.gh, %.sink.split.i.i.i.i.i1.i ]
  %i.gk = phi ptr [ %i.cp, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS2_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSW_PKNS0_14mutable_bufferEEE5valueEiE4typeENSY_IXntsr14is_convertibleISZ_PKS8_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S10_EE5valueEiE4typeENSY_IXntsr14is_convertibleISV_S8_EE5valueEiE4typeE.exit.thread26.i ], [ %i.gi, %.sink.split.i.i.i.i.i1.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !562, !alias.scope !1889
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE14const_iteratorppEv.exit

_ZN5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE14const_iteratorppEv.exit: ; preds = %bb.ap, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE3endEv.exit
  %i.gy = phi ptr [ %i.i, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE3endEv.exit ], [ %.pre32, %bb.ap ]
  %i.gz = phi ptr [ %i.i, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE3endEv.exit ], [ %.pre, %bb.ap ]
  %.013 = phi i64 [ 0, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE3endEv.exit ], [ %i.ix, %bb.ap ] ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gy
  br i1 %i.ha, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE14const_iteratorppEv.exit
  %i.hb = load ptr, ptr %i.cg, align 8, !tbaa !562
  %i.hc = load ptr, ptr %i.gm, align 8, !tbaa !562
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.he = load ptr, ptr %i.go, align 8, !tbaa !485
  %i.hf = load ptr, ptr %i.gn, align 8, !tbaa !485
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.hh = load i8, ptr %i.gr, align 8, !tbaa !486 ; 2 uses
  %i.hi = load i8, ptr %i.gs, align 8, !tbaa !486
  %.not.i.i.i.i.i.i = icmp eq i8 %i.hh, %i.hi
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  switch i8 %i.hh, label %bb.ak [
    i8 0, label %.thread22
    i8 1, label %bb.al
    i8 2, label %.split36
    i8 3, label %.split35
    i8 4, label %.split34
    i8 5, label %.split
    i8 6, label %bb.ao
    i8 7, label %.thread22
  ]

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.hj = load ptr, ptr %i.gp, align 8, !tbaa !452
  %i.hk = load ptr, ptr %i.gq, align 8, !tbaa !452
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.hm = load i8, ptr %i.gv, align 8, !tbaa !455 ; 2 uses
  %i.hn = load i8, ptr %i.gw, align 8, !tbaa !455
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.hm, %i.hn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ho = add i8 %i.hm, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ho, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread22

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.an
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gt, align 8, !tbaa !280
  %i.hp = load ptr, ptr %i.gu, align 8, !tbaa !280
  %i.hq = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hp
  br i1 %i.hq, label %.thread22, label %.thread

.split36:                                         ; preds = %bb.aj
  %i.hr = load ptr, ptr %i.gp, align 8, !tbaa !421
  %i.hs = load ptr, ptr %i.gq, align 8, !tbaa !421
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %.thread22, label %.thread

.split35:                                         ; preds = %bb.aj
  %i.hu = load ptr, ptr %i.gp, align 8, !tbaa !421
  %i.hv = load ptr, ptr %i.gq, align 8, !tbaa !421
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %.thread22, label %.thread

.split34:                                         ; preds = %bb.aj
  %i.hx = load ptr, ptr %i.gp, align 8, !tbaa !421
  %i.hy = load ptr, ptr %i.gq, align 8, !tbaa !421
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %.thread22, label %.thread

.split:                                           ; preds = %bb.aj
  %i.ia = load <2 x ptr>, ptr %i.gp, align 8
  %i.ib = load <2 x ptr>, ptr %i.gq, align 8
  %i.ic = icmp eq <2 x ptr> %i.ia, %i.ib          ; 2 uses
  %i.id = extractelement <2 x i1> %i.ic, i64 0
  %i.ie = extractelement <2 x i1> %i.ic, i64 1
  %i.if = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %i.if, label %.thread22, label %.thread

bb.ao:                                            ; preds = %bb.aj
  %i.ig = load ptr, ptr %i.gp, align 8, !tbaa !421
  %i.ih = load ptr, ptr %i.gq, align 8, !tbaa !421
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %.thread22, label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split36, %.split35, %.split34, %.split, %bb.am, %bb.al, %bb.ai, %bb.ah, %bb.ag, %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE14const_iteratorppEv.exit, %bb.ao
  %i.ij = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.go) ; 2 uses
  %i.ik = extractvalue { ptr, i64 } %i.ij, 1
  %i.il = load i64, ptr %i.gx, align 8, !tbaa !588
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.il, i64 %i.ik) ; 2 uses
  %i.im = extractvalue { ptr, i64 } %i.ij, 0
  %i.in = load ptr, ptr %0, align 8, !tbaa !472, !nonnull !64, !align !65
  %i.io = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef %i.im, i64 noundef %spec.select.i.i) ; 0 uses
  %i.ip = load ptr, ptr %0, align 8, !tbaa !472, !nonnull !64, !align !65 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !44
  %i.ir = getelementptr i8, ptr %i.iq, i64 -24
  %i.is = load i64, ptr %i.ir, align 8
  %i.it = getelementptr inbounds i8, ptr %i.ip, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !229
  %i.iw = and i32 %i.iv, 5
  %.not27 = icmp eq i32 %i.iw, 0
  br i1 %.not27, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread
  %i.ix = add i64 %spec.select.i.i, %.013
  %i.iy = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS0_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !1890
  %.pre32 = load ptr, ptr %4, align 8, !tbaa !1890
  br label %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS6_IJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_NS0_18basic_multi_bufferISB_E8subrangeILb0EEESF_EEEEEEEEEE14const_iteratorppEv.exit

bb.aq:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ar

.thread22:                                        ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split36, %.split35, %.split34, %.split, %bb.an, %bb.aj, %bb.aj, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !479, !nonnull !64, !align !65
  call void @_ZN5boost5beast4http10serializerILb0ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS5_EEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(415) %i.ja, i64 noundef %.013)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread22, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS0_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !585, !nonnull !64, !align !65 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !485, !noalias !1895 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = load i8, ptr %i.g, align 8, !tbaa !486, !noalias !1895 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS2_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS7_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S7_EE5valueEiE4typeE.exit.thread65
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS2_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS7_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S7_EE5valueEiE4typeE.exit.thread65: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !485
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !486
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !452, !noalias !1895 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.o = load i8, ptr %i.n, align 8, !tbaa !455, !noalias !1895 ; 2 uses
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
  store ptr %i.e, ptr %i.p, align 8, !tbaa !485
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !486
  store ptr %i.l, ptr %i.q, align 8, !tbaa !452
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !455
  br label %.sink.split.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !421, !noalias !1895
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !485
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !486
  store ptr %i.l, ptr %i.v, align 8, !tbaa !452
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !421, !noalias !1895
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !485
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !486
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !452
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !421, !noalias !1895
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !485
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !486
  store ptr %i.l, ptr %i.af, align 8, !tbaa !452
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !457, !noalias !1895
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !485
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !486
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !452
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !398
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !421, !noalias !1895
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !485
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !486
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !452
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !53, !noalias !1895
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !485
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !486
  store ptr %i.l, ptr %i.au, align 8, !tbaa !452
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !455
  br label %.sink.split.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !421, !noalias !1895
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !485
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !486
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !421, !noalias !1895
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !485
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !486
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i

bb.m:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !421, !noalias !1895
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bk, align 8, !tbaa !485
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !486
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i

bb.n:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bn, align 8, !tbaa !485
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bp, align 8, !tbaa !486
  %i.bq = load <2 x ptr>, ptr %i.f, align 8, !tbaa !280, !noalias !1895
  store <2 x ptr> %i.bq, ptr %i.bo, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i

bb.o:                                             ; preds = %bb.a
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !421, !noalias !1895
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bs, align 8, !tbaa !485
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bu, align 8, !tbaa !486
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.bv = load i8, ptr %i.f, align 8, !tbaa !53, !noalias !1895
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bw, align 8, !tbaa !485
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.by, align 8, !tbaa !486
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.thread, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi ptr [ %i.by, %bb.p ], [ %i.bu, %bb.o ], [ %i.bp, %bb.n ], [ %i.bm, %bb.m ], [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.ca = phi ptr [ %i.bx, %bb.p ], [ %i.bt, %bb.o ], [ %i.bo, %bb.n ], [ %i.bl, %bb.m ], [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.cb = phi ptr [ %i.bw, %bb.p ], [ %i.bs, %bb.o ], [ %i.bn, %bb.n ], [ %i.bk, %bb.m ], [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bz, align 8, !tbaa !486
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS2_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS7_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S7_EE5valueEiE4typeE.exit.thread65, %.sink.split.i.i.i.i
  %i.cc = phi ptr [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS2_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS7_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S7_EE5valueEiE4typeE.exit.thread65 ], [ %i.bz, %.sink.split.i.i.i.i ] ; 2 uses
  %i.cd = phi ptr [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS2_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS7_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S7_EE5valueEiE4typeE.exit.thread65 ], [ %i.ca, %.sink.split.i.i.i.i ] ; 7 uses
  %i.ce = phi ptr [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS2_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS7_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S7_EE5valueEiE4typeE.exit.thread65 ], [ %i.cb, %.sink.split.i.i.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.c, ptr %i.cf, align 8, !tbaa !562
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.r

bb.r:                                             ; preds = %bb.aj, %bb.q
  %.pre54 = phi ptr [ %i.e, %bb.q ], [ %.pre54.pre, %bb.aj ] ; 2 uses
  %i.cn = phi ptr [ %i.c, %bb.q ], [ %.pre, %bb.aj ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.q ], [ %i.dk, %bb.aj ] ; 4 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre55 = load i8, ptr %i.cc, align 8, !tbaa !486
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %4 = icmp eq ptr %.pre54, %i.c
  %.pre56 = load i8, ptr %i.cc, align 8, !tbaa !486 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre56, 7
  %or.cond = select i1 %4, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %5 = phi i8 [ %.pre55, %._crit_edge ], [ %.pre56, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %.pre54, ptr %3, align 8, !tbaa !485
  store i8 0, ptr %i.ch, align 8, !tbaa !486
  switch i8 %5, label %bb.u [
    i8 0, label %.noexc
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
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !452
  store ptr %i.cp, ptr %i.cg, align 8, !tbaa !452
  store i8 0, ptr %i.ck, align 8, !tbaa !455
  %i.cq = load i8, ptr %i.cl, align 8, !tbaa !455 ; 2 uses
  switch i8 %i.cq, label %bb.w [
    i8 0, label %.sink.split.i.i.i.i.i
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
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !421
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i23

bb.y:                                             ; preds = %bb.v
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !421
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i23

bb.z:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !421
  store ptr %i.ct, ptr %i.ci, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i23

bb.aa:                                            ; preds = %bb.v
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !457
  store ptr %i.cu, ptr %i.ci, align 8, !tbaa !398
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i23

bb.ab:                                            ; preds = %bb.v
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !421
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i23

bb.ac:                                            ; preds = %bb.v
  %i.cw = load i8, ptr %i.cj, align 8, !tbaa !53
  store i8 %i.cw, ptr %i.ci, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i23

.sink.split.i.i.i.i.i.i.i.i.i.i.i23:              ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  store i8 %i.cq, ptr %i.ck, align 8, !tbaa !455
  br label %.sink.split.i.i.i.i.i

bb.ad:                                            ; preds = %bb.t
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !421
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i

bb.ae:                                            ; preds = %bb.t
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !421
  store ptr %i.cy, ptr %i.cg, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i

bb.af:                                            ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !421
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i

bb.ag:                                            ; preds = %bb.t
  %i.da = load ptr, ptr %i.cd, align 8, !tbaa !406
  store ptr %i.da, ptr %i.cg, align 8, !tbaa !406
  %i.db = load ptr, ptr %i.cj, align 8, !tbaa !250
  store ptr %i.db, ptr %i.ci, align 8, !tbaa !156
  br label %.sink.split.i.i.i.i.i

bb.ah:                                            ; preds = %bb.t
  %i.dc = load ptr, ptr %i.cd, align 8, !tbaa !421
  store ptr %i.dc, ptr %i.cg, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i

bb.ai:                                            ; preds = %bb.t
  %i.dd = load i8, ptr %i.cd, align 1, !tbaa !53
  store i8 %i.dd, ptr %i.cg, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.sink.split.i.i.i.i.i.i.i.i.i.i.i23, %bb.v
  store i8 %5, ptr %i.ch, align 8, !tbaa !486
  br label %.noexc

.noexc:                                           ; preds = %.sink.split.i.i.i.i.i, %bb.t
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !562
  %i.de = zext nneg i8 %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1896
  store ptr %i.ce, ptr %2, align 8, !tbaa !488, !noalias !1896
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_NS5_18basic_multi_bufferISD_E8subrangeILb0EEESH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOST_(i64 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1896
  %i.df = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.dg = extractvalue { ptr, i64 } %i.df, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.not = icmp ult i64 %i.dg, %.011
  br i1 %.not, label %bb.aj, label %.thread45

.thread45:                                        ; preds = %.noexc
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !584
  %i.di = add i64 %i.dh, %.011
  store i64 %i.di, ptr %i.a, align 8, !tbaa !584
  %i.dj = sub i64 %.011, %i.dg
  store i64 %i.dj, ptr %i.b, align 8, !tbaa !586
  br label %.loopexit

bb.aj:                                            ; preds = %.noexc
  %i.dk = sub nuw i64 %.011, %i.dg
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !584
  %i.dm = add i64 %i.dl, %i.dg
  store i64 %i.dm, ptr %i.a, align 8, !tbaa !584
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !562
  %.pre54.pre = load ptr, ptr %i.ce, align 8, !tbaa !485
  br label %bb.r

.loopexit:                                        ; preds = %bb.s, %.thread45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS0_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %2 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  store ptr %i.b, ptr %2, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !486
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !486   ; 3 uses
  switch i8 %i.g, label %bb.b [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE14const_iteratorC2ERKSO_.exit
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
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !452
  store ptr %i.h, ptr %i.c, align 8, !tbaa !452
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !455
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !455   ; 2 uses
  switch i8 %i.m, label %bb.d [
    i8 0, label %.sink.split.i.i.i.i.i
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
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !421
  store ptr %i.n, ptr %i.i, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !421
  store ptr %i.o, ptr %i.i, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !421
  store ptr %i.p, ptr %i.i, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !457
  store ptr %i.q, ptr %i.i, align 8, !tbaa !398
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !421
  store ptr %i.r, ptr %i.i, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.j, align 8, !tbaa !53
  store i8 %i.s, ptr %i.i, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  store i8 %i.m, ptr %i.k, align 8, !tbaa !455
  br label %.sink.split.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !421
  store ptr %i.t, ptr %i.c, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !421
  store ptr %i.u, ptr %i.c, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !421
  store ptr %i.v, ptr %i.c, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i

bb.n:                                             ; preds = %bb.a
  %i.w = load <2 x ptr>, ptr %i.d, align 8, !tbaa !280
  store <2 x ptr> %i.w, ptr %i.c, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i

bb.o:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !421
  store ptr %i.x, ptr %i.c, align 8, !tbaa !421
  br label %.sink.split.i.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.y = load i8, ptr %i.d, align 8, !tbaa !53
  store i8 %i.y, ptr %i.c, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  store i8 %i.g, ptr %i.e, align 8, !tbaa !486
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE14const_iteratorC2ERKSO_.exit

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE14const_iteratorC2ERKSO_.exit: ; preds = %bb.a, %.sink.split.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !562
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !562
  %i.ac = zext nneg i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32, !noalias !1899
  store ptr %i.a, ptr %1, align 8, !tbaa !488, !noalias !1899
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_NS5_18basic_multi_bufferISD_E8subrangeILb0EEESH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOST_(i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32, !noalias !1899
  %i.ad = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !588
  %i.ah = sub i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !588
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfENS0_18basic_multi_bufferISaIcEE8subrangeILb0EEES8_S7_S7_S8_EEEEC2IJmS7_S8_RSD_S8_RKS7_S7_S8_EEENS_11optional_ns15in_place_init_tEDpOT_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<false>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35, !noalias !1906 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store i32 1, ptr %i.c, align 8, !tbaa !111, !noalias !1906
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !112, !noalias !1906
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5boost5beast4http6detail10chunk_size8sequenceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !44, !noalias !1906
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 49 ; 2 uses
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %bb.b, label %.preheader.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i8 48, ptr %i.g, align 8, !tbaa !53, !noalias !1906
  br label %.loopexit

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.a, %.preheader.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.l, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ]
  %i.h = and i64 %.012.i.i.i.i.i.i.i.i.i, 15
  %i.i = getelementptr inbounds nuw i8, ptr @.str.83, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !53, !noalias !1906
  %i.k = getelementptr inbounds i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !53, !noalias !1906
  %i.l = lshr i64 %.012.i.i.i.i.i.i.i.i.i, 4      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !32

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.b
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %.09.i.i.i.i.i.i.i.i.i to i64
  %i.p = sub i64 %i.n, %i.o
  store ptr %.09.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !280, !noalias !1906
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !50, !noalias !1906
  store ptr %i.m, ptr %0, align 8, !tbaa !560
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.q, align 8, !tbaa !109
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i.i.i10 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.s = load i32, ptr %i.c, align 8, !tbaa !113
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 8, !tbaa !113
  br label %bb.e

bb.d:                                             ; preds = %.loopexit
end_hunk_1
