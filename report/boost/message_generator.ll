Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/message_generator?download=true
inline.NumInlined: 7335
inline.NumDeleted: 3134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5boost5beast4http17message_generator14generator_implILb1ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS7_EEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSF_INSI_IJNS_4asio12const_bufferESK_SK_NSA_6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESK_SN_SK_SN_SK_SK_SN_EEEEEEEEEEEvRNS_6system10error_codeERKT_:bb.a
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !519, !noalias !1369
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33, !noalias !1369
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !520, !noalias !1370
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !520, !alias.scope !1369
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %18, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !433
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !433
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i8 0, ptr %i.bg, align 8, !tbaa !434
  %i.bh = load i8, ptr %i.ae, align 8, !tbaa !434
  %i.bi = zext i8 %i.bh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store ptr %i.bf, ptr %9, align 8, !tbaa !519
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ad, ptr %i.bj, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.bl = load ptr, ptr %i.ai, align 8, !tbaa !520
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %19, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !433
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !433
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i8 0, ptr %i.bp, align 8, !tbaa !434
  %i.bq = load i8, ptr %i.at, align 8, !tbaa !434
  %i.br = zext i8 %i.bq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store ptr %i.bo, ptr %8, align 8, !tbaa !519
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ar, ptr %i.bs, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !520
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !520
  %i.bv = call noundef i64 @_ZSt10__distanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESR_SR_St18input_iterator_tag(ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 %16) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bv, i64 12) ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !241
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i64 %.sroa.speculated, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull align 8 dereferenceable(64) %17, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !433
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !433
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !434
  %i.ca = load i8, ptr %i.u, align 8, !tbaa !434
  %i.cb = zext i8 %i.ca to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store ptr %i.by, ptr %7, align 8, !tbaa !519
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.t, ptr %i.cc, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.cd = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %i.ce = load ptr, ptr %i.aa, align 8, !tbaa !520
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !520
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cg = icmp eq i64 %i.bv, 0
  br i1 %i.cg, label %bb.d, label %.noexc.i

.noexc.i:                                         ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %20, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !433
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !433
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.ck, align 8, !tbaa !434
  %i.cl = load i8, ptr %i.bz, align 8, !tbaa !434
  %i.cm = zext i8 %i.cl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %i.cj, ptr %5, align 8, !tbaa !519
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.by, ptr %i.cn, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !520
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = load ptr, ptr %i.ch, align 8, !tbaa !433
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !433
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 0, ptr %i.ct, align 8, !tbaa !434
  %i.cu = load i8, ptr %i.ck, align 8, !tbaa !434
  %i.cv = zext i8 %i.cu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %i.cs, ptr %3, align 8, !tbaa !519
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !520
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !520
  %i.cz = call noundef ptr @_ZSt10__copy_n_aIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEE14const_iteratorEmPS8_ET1_T_T0_SR_b(ptr noundef nonnull align 8 %4, i64 noundef %.sroa.speculated, ptr noundef %i.cf, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %.noexc.i, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  ret void
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.c = load ptr, ptr %0, align 8, !tbaa !517, !nonnull !111, !align !114 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !1377
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !433, !noalias !1379
  store ptr %i.e, ptr %7, align 8, !tbaa !433, !noalias !1379
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !434, !noalias !1379
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.j = load i8, ptr %i.i, align 8, !tbaa !434, !noalias !1379
  %i.k = zext i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !1379
  store ptr %i.f, ptr %6, align 8, !tbaa !519, !noalias !1379
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.g, ptr %i.l, align 8, !tbaa !519, !noalias !1379
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc.i unwind label %bb.b, !noalias !1377

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !1379
  %i.m = load ptr, ptr %7, align 8, !tbaa !433, !noalias !1379
  store ptr %i.m, ptr %8, align 8, !tbaa !433, !alias.scope !1379
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !434, !alias.scope !1379
  %i.p = load i8, ptr %i.h, align 8, !tbaa !434, !noalias !1379
  %i.q = zext i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !1379
  store ptr %i.n, ptr %5, align 8, !tbaa !519, !noalias !1379
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.r, align 8, !tbaa !519, !noalias !1379
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !1379
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.u, align 8, !tbaa !520, !alias.scope !1379
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1377
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !433
  store ptr %i.w, ptr %i.v, align 8, !tbaa !433
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i8 0, ptr %i.y, align 8, !tbaa !434
  %i.z = load i8, ptr %i.o, align 8, !tbaa !434
  %i.aa = zext i8 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.x, ptr %4, align 8, !tbaa !519
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !520 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !520
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ae = load ptr, ptr %0, align 8, !tbaa !517, !nonnull !111, !align !114 ; 2 uses
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
  %.pre42 = load ptr, ptr %i.v, align 8, !tbaa !433 ; 2 uses
  br i1 %i.ai, label %bb.d, label %..noexc_crit_edge

..noexc_crit_edge:                                ; preds = %bb.c
  %.pre43 = load i8, ptr %i.y, align 8, !tbaa !434, !noalias !1380
  br label %.noexc

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq ptr %.pre42, %i.ae
  %.pre44 = load i8, ptr %i.y, align 8, !tbaa !434 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre44, 10
  %or.cond = select i1 %i.aj, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %.noexc

.noexc:                                           ; preds = %..noexc_crit_edge, %bb.d
  %i.ak = phi i8 [ %.pre43, %..noexc_crit_edge ], [ %.pre44, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  store ptr %.pre42, ptr %9, align 8, !tbaa !433, !alias.scope !1380
  store i8 0, ptr %i.af, align 8, !tbaa !434, !alias.scope !1380
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !1380
  store <2 x ptr> %12, ptr %3, align 16, !tbaa !519, !noalias !1380
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !1380
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !520, !noalias !1380
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !520, !alias.scope !1380
  %i.an = load i8, ptr %i.y, align 8, !tbaa !434, !noalias !1380
  %i.ao = zext i8 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !1380
  store ptr %i.v, ptr %2, align 8, !tbaa !436, !noalias !1380
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !1380
  %i.ap = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %.not = icmp ult i64 %i.aq, %.011
  br i1 %.not, label %bb.e, label %.thread37

.thread37:                                        ; preds = %.noexc
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !515
  %i.as = add i64 %i.ar, %.011
  store i64 %i.as, ptr %i.a, align 8, !tbaa !515
  %i.at = sub i64 %.011, %i.aq
  store i64 %i.at, ptr %i.b, align 8, !tbaa !521
  br label %.loopexit

bb.e:                                             ; preds = %.noexc
  %i.au = sub nuw i64 %.011, %i.aq
  %i.av = load i64, ptr %i.a, align 8, !tbaa !515
  %i.aw = add i64 %i.av, %i.aq
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !515
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !520
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !520  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %0, align 8, !tbaa !433
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !433
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !434
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !434   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = load i8, ptr %i.k, align 8, !tbaa !434
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
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !364
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !367   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.u = load i8, ptr %i.t, align 8, !tbaa !367
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !115
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split7:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split6:                                          ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split5:                                          ; preds = %bb.c
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split4:                                          ; preds = %bb.c
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split9:                                          ; preds = %bb.c
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split8:                                          ; preds = %bb.c
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit: ; preds = %bb.c
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.split9, %.split8, %.split7, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit
  %i.aw = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !436
  %i.ax = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !520
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !430
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.az) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.i
  %i.be = sub i64 %i.az, %spec.select.i
end_hunk_0
begin_hunk_1_@_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE:bb.a
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %.lr.ph, %.lr.ph.i.i, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  switch i64 %0, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr @.str.30, ptr %6, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.31, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 180, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 67, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #35
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.al, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !367
  %i.i = zext i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.f, ptr %4, align 8, !tbaa !366
  %i.j = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !78
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.2.0.copyload.i, 1
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.p, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i14 = load i64, ptr %.sroa.2.0..sroa_idx.i13, align 8, !tbaa !78
  %.fca.0.insert.i15 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i12, 0
  %.fca.1.insert.i16 = insertvalue { ptr, i64 } %.fca.0.insert.i15, i64 %.sroa.2.0.copyload.i14, 1
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i17 = load ptr, ptr %i.s, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload.i19 = load i64, ptr %.sroa.2.0..sroa_idx.i18, align 8, !tbaa !78
  %.fca.0.insert.i20 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i17, 0
  %.fca.1.insert.i21 = insertvalue { ptr, i64 } %.fca.0.insert.i20, i64 %.sroa.2.0.copyload.i19, 1
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i22 = load ptr, ptr %i.v, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !78
  %.fca.0.insert.i25 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i22, 0
  %.fca.1.insert.i26 = insertvalue { ptr, i64 } %.fca.0.insert.i25, i64 %.sroa.2.0.copyload.i24, 1
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.y, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i29 = load i64, ptr %.sroa.2.0..sroa_idx.i28, align 8, !tbaa !78
  %.fca.0.insert.i30 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i27, 0
  %.fca.1.insert.i31 = insertvalue { ptr, i64 } %.fca.0.insert.i30, i64 %.sroa.2.0.copyload.i29, 1
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !241 ; 2 uses
  %.sroa.0.0.copyload.i32 = load ptr, ptr %i.ab, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload.i34 = load i64, ptr %.sroa.2.0..sroa_idx.i33, align 8, !tbaa !78
  %.fca.0.insert.i35 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i32, 0
  %.fca.1.insert.i36 = insertvalue { ptr, i64 } %.fca.0.insert.i35, i64 %.sroa.2.0.copyload.i34, 1
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !241 ; 2 uses
  %.sroa.0.0.copyload.i37 = load ptr, ptr %i.ae, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.2.0.copyload.i39 = load i64, ptr %.sroa.2.0..sroa_idx.i38, align 8, !tbaa !78
  %.fca.0.insert.i40 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i37, 0
  %.fca.1.insert.i41 = insertvalue { ptr, i64 } %.fca.0.insert.i40, i64 %.sroa.2.0.copyload.i39, 1
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !111, !align !114
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %.sroa.0.0.copyload.i42 = load ptr, ptr %i.ah, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i44 = load i64, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !78
  %.fca.0.insert.i45 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i42, 0
  %.fca.1.insert.i46 = insertvalue { ptr, i64 } %.fca.0.insert.i45, i64 %.sroa.2.0.copyload.i44, 1
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr @.str.30, ptr %3, align 8, !tbaa !244
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.31, ptr %i.ai, align 8, !tbaa !245
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 187, ptr %i.aj, align 8, !tbaa !246
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 64, ptr %i.ak, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #35
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i46, %bb.n ], [ %i.j, %bb.f ], [ %.fca.1.insert.i, %bb.g ], [ %.fca.1.insert.i16, %bb.h ], [ %.fca.1.insert.i21, %bb.i ], [ %.fca.1.insert.i26, %bb.j ], [ %.fca.1.insert.i31, %bb.k ], [ %.fca.1.insert.i36, %bb.l ], [ %.fca.1.insert.i41, %bb.m ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZSt10__distanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESR_SR_St18input_iterator_tag(ptr noundef align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %4 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %8 = insertelement <2 x ptr> poison, ptr %5, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.e, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.bn, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread ] ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !513
  %i.o = load ptr, ptr %1, align 8, !tbaa !513
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread_crit_edge

._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !433, !noalias !1396
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !520
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !520
  %i.s = icmp eq ptr %i.q, %i.r
  %.pre6 = load ptr, ptr %i.d, align 8, !tbaa !433 ; 15 uses
  br i1 %i.s, label %bb.d, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !433
  %i.u = icmp eq ptr %.pre6, %i.t
  br i1 %i.u, label %bb.e, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.g, align 8, !tbaa !434   ; 2 uses
  %i.w = load i8, ptr %i.h, align 8, !tbaa !434
  %.not.i.i.i.i.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

bb.f:                                             ; preds = %bb.e
  switch i8 %i.v, label %bb.g [
    i8 0, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3
    i8 1, label %bb.h
    i8 2, label %.split11
    i8 3, label %.split10
    i8 4, label %.split9
    i8 5, label %.split14
    i8 6, label %.split13
    i8 7, label %.split12
    i8 8, label %.split
    i8 9, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit
    i8 10, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !364
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !364
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.i, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %i.k, align 8, !tbaa !367  ; 2 uses
  %i.ab = load i8, ptr %i.l, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = add i8 %i.aa, -1
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ac, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !115
  %i.ae = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, %i.ad
  br i1 %i.ae, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

.split11:                                         ; preds = %bb.f
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

.split10:                                         ; preds = %bb.f
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

.split9:                                          ; preds = %bb.f
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

.split14:                                         ; preds = %bb.f
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

.split13:                                         ; preds = %bb.f
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

.split12:                                         ; preds = %bb.f
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

.split:                                           ; preds = %bb.f
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit: ; preds = %bb.f
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %.split14, %.split13, %.split12, %.split11, %.split10, %.split9, %.split, %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread_crit_edge, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit
  %i.bd = phi ptr [ %.pre, %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread_crit_edge ], [ %.pre6, %bb.i ], [ %.pre6, %bb.h ], [ %.pre6, %bb.e ], [ %.pre6, %bb.d ], [ %.pre6, %bb.c ], [ %.pre6, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit ], [ %.pre6, %.split ], [ %.pre6, %.split9 ], [ %.pre6, %.split10 ], [ %.pre6, %.split11 ], [ %.pre6, %.split12 ], [ %.pre6, %.split13 ], [ %.pre6, %.split14 ], [ %.pre6, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  store ptr %i.bd, ptr %4, align 8, !tbaa !433, !alias.scope !1396
  store i8 0, ptr %6, align 8, !tbaa !434, !alias.scope !1396
  %i.be = load i8, ptr %i.g, align 8, !tbaa !434, !noalias !1396
  %i.bf = zext i8 %i.be to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !1396
  store <2 x ptr> %9, ptr %3, align 16, !tbaa !519, !noalias !1396
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !1396
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !520, !noalias !1396
  store ptr %i.bg, ptr %7, align 8, !tbaa !520, !alias.scope !1396
  %i.bh = load i8, ptr %i.g, align 8, !tbaa !434, !noalias !1396
  %i.bi = zext i8 %i.bh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !1396
  store ptr %i.d, ptr %2, align 8, !tbaa !436, !noalias !1396
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !1396
  %i.bj = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.bk = extractvalue { ptr, i64 } %i.bj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bl = load i64, ptr %i.m, align 8, !tbaa !516
  %i.bm = sub i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.m, align 8, !tbaa !516
  %i.bn = add nuw nsw i64 %.0, 1
  br label %bb.b, !llvm.loop !1395

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread3: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %.split14, %.split13, %.split12, %.split11, %.split10, %.split9, %.split, %bb.j, %bb.f, %bb.f, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE14const_iteratorneERKSO_.exit
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt10__copy_n_aIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEE14const_iteratorEmPS8_ET1_T_T0_SR_b(ptr noundef align 8 %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = tail call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !516
  %spec.select.i8 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  %i.f = extractvalue { ptr, i64 } %i.b, 0
  store ptr %i.f, ptr %2, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i8, ptr %.sroa.4.0..sroa_idx9, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = add i64 %1, -1                           ; 2 uses
  %.not710 = icmp eq i64 %i.h, 0
  br i1 %.not710, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = insertelement <2 x ptr> poison, ptr %7, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %8, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.m = phi i64 [ %i.h, %.lr.ph ], [ %i.ad, %bb.b ]
  %i.n = phi ptr [ %i.g, %.lr.ph ], [ %i.ac, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !433, !noalias !1400
  store ptr %i.o, ptr %6, align 8, !tbaa !433, !alias.scope !1400
  store i8 0, ptr %i.i, align 8, !tbaa !434, !alias.scope !1400
  %i.p = load i8, ptr %i.j, align 8, !tbaa !434, !noalias !1400
  %i.q = zext i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !1400
  store <2 x ptr> %10, ptr %5, align 16, !tbaa !519, !noalias !1400
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !1400
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !520, !noalias !1400
  store ptr %i.r, ptr %i.k, align 8, !tbaa !520, !alias.scope !1400
  %i.s = load i8, ptr %i.j, align 8, !tbaa !434, !noalias !1400
  %i.t = zext i8 %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !1400
  store ptr %i.a, ptr %4, align 8, !tbaa !436, !noalias !1400
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1400
  %i.u = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.w = load i64, ptr %i.d, align 8, !tbaa !516
  %i.x = sub i64 %i.w, %i.v
  store i64 %i.x, ptr %i.d, align 8, !tbaa !516
  %i.y = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 1
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !516
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z)
  %i.ab = extractvalue { ptr, i64 } %i.y, 0
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ad = add i64 %i.m, -1                        ; 2 uses
  %.not7 = icmp eq i64 %i.ad, 0
  br i1 %.not7, label %.loopexit, label %bb.b, !llvm.loop !1399

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.1 = phi ptr [ %2, %bb.a ], [ %i.g, %.preheader ], [ %i.ac, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iterator9increment4nextILm2EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !333
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !241 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !78
  %.not = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %.not, label %bb.b, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iterator9increment4nextESt17integral_constantImLm3EE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !241
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !llvm.loop !1401

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
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, ptr %i.b, align 8, !tbaa !241
  store i8 3, ptr %i.m, align 8, !tbaa !336
  %i.n = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !111, !align !114
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
  br i1 %.not.i, label %bb.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iterator9increment4nextESt17integral_constantImLm3EE.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.o, align 8, !tbaa !241
  br label %bb.e, !llvm.loop !32

bb.j:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !111, !align !114 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i8 0, ptr %i.y, align 8, !tbaa !384
  store i8 4, ptr %i.z, align 8, !tbaa !336
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iterator9increment4nextESt17integral_constantImLm3EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iterator9increment4nextESt17integral_constantImLm3EE.exit: ; preds = %.lr.ph, %bb.h, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http17message_generator14generator_implILb1ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS7_EEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferESK_NS1_10chunk_crlfEEEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %8 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %9 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %10 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %11 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %12 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 32 uses
  %13 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !321, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.d = load ptr, ptr %2, align 8, !tbaa !526, !noalias !1424 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !529, !noalias !1425 ; 6 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !530, !noalias !1425, !nonnull !111, !align !114 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !333, !noalias !1426 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !336, !noalias !1426 ; 7 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1426
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1426
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1426
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

bb.f:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.j, align 8, !tbaa !81, !noalias !1426
  %.sroa.14.24.insert.ext = zext i8 %i.p to i64
  %i.q = inttoptr i64 %.sroa.14.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.14.098 = phi ptr [ %i.q, %bb.f ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ undef, %bb.a ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !333, !noalias !1427
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = load i8, ptr %i.u, align 8, !tbaa !336, !noalias !1427 ; 4 uses
  switch i8 %i.v, label %bb.g [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

end_hunk_1
begin_hunk_2_@_ZN5boost5beast4http17message_generator14generator_implILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSD_INSG_IJNS_4asio12const_bufferESI_SI_NS8_6writer11field_rangeENS1_10chunk_crlfEEEEEENS4_10chunk_sizeESI_SL_St5arrayISI_Lm65EESL_SI_SI_SL_EEEEEEEEEEEvRNS_6system10error_codeERKT_:bb.a
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !519, !noalias !2456
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33, !noalias !2456
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !735, !noalias !2457
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !735, !alias.scope !2456
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %18, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !661
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !661
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i8 0, ptr %i.bg, align 8, !tbaa !434
  %i.bh = load i8, ptr %i.ae, align 8, !tbaa !434
  %i.bi = zext i8 %i.bh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store ptr %i.bf, ptr %9, align 8, !tbaa !519
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ad, ptr %i.bj, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.bl = load ptr, ptr %i.ai, align 8, !tbaa !735
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %19, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !661
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !661
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i8 0, ptr %i.bp, align 8, !tbaa !434
  %i.bq = load i8, ptr %i.at, align 8, !tbaa !434
  %i.br = zext i8 %i.bq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store ptr %i.bo, ptr %8, align 8, !tbaa !519
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ar, ptr %i.bs, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !735
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !735
  %i.bv = call noundef i64 @_ZSt10__distanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeEST_ST_St18input_iterator_tag(ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 %16) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bv, i64 12) ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !241
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1744
  store i64 %.sroa.speculated, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull align 8 dereferenceable(64) %17, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !661
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !661
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !434
  %i.ca = load i8, ptr %i.u, align 8, !tbaa !434
  %i.cb = zext i8 %i.ca to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store ptr %i.by, ptr %7, align 8, !tbaa !519
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.t, ptr %i.cc, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.cd = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %i.ce = load ptr, ptr %i.aa, align 8, !tbaa !735
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !735
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cg = icmp eq i64 %i.bv, 0
  br i1 %i.cg, label %bb.d, label %.noexc.i

.noexc.i:                                         ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %20, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !661
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !661
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.ck, align 8, !tbaa !434
  %i.cl = load i8, ptr %i.bz, align 8, !tbaa !434
  %i.cm = zext i8 %i.cl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %i.cj, ptr %5, align 8, !tbaa !519
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.by, ptr %i.cn, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !735
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !735
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = load ptr, ptr %i.ch, align 8, !tbaa !661
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !661
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 0, ptr %i.ct, align 8, !tbaa !434
  %i.cu = load i8, ptr %i.ck, align 8, !tbaa !434
  %i.cv = zext i8 %i.cu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %i.cs, ptr %3, align 8, !tbaa !519
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !735
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !735
  %i.cz = call noundef ptr @_ZSt10__copy_n_aIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEE14const_iteratorEmPS8_ET1_T_T0_ST_b(ptr noundef nonnull align 8 %4, i64 noundef %.sroa.speculated, ptr noundef %i.cf, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %.noexc.i, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %4 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %5 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %6 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %7 = alloca %"class.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator", align 8 ; 6 uses
  %8 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %9 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.c = load ptr, ptr %0, align 8, !tbaa !734, !nonnull !111, !align !114 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !2464
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !661, !noalias !2466
  store ptr %i.e, ptr %7, align 8, !tbaa !661, !noalias !2466
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1144
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !434, !noalias !2466
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1168
  %i.j = load i8, ptr %i.i, align 8, !tbaa !434, !noalias !2466
  %i.k = zext i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !2466
  store ptr %i.f, ptr %6, align 8, !tbaa !519, !noalias !2466
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.g, ptr %i.l, align 8, !tbaa !519, !noalias !2466
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc.i unwind label %bb.b, !noalias !2464

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !2466
  %i.m = load ptr, ptr %7, align 8, !tbaa !661, !noalias !2466
  store ptr %i.m, ptr %8, align 8, !tbaa !661, !alias.scope !2466
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !434, !alias.scope !2466
  %i.p = load i8, ptr %i.h, align 8, !tbaa !434, !noalias !2466
  %i.q = zext i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !2466
  store ptr %i.n, ptr %5, align 8, !tbaa !519, !noalias !2466
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.r, align 8, !tbaa !519, !noalias !2466
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !2466
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.u, align 8, !tbaa !735, !alias.scope !2466
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !2464
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !661
  store ptr %i.w, ptr %i.v, align 8, !tbaa !661
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i8 0, ptr %i.y, align 8, !tbaa !434
  %i.z = load i8, ptr %i.o, align 8, !tbaa !434
  %i.aa = zext i8 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.x, ptr %4, align 8, !tbaa !519
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !519
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !735 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !735
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ae = load ptr, ptr %0, align 8, !tbaa !734, !nonnull !111, !align !114 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40
  %11 = insertelement <2 x ptr> poison, ptr %10, i64 0
  %12 = insertelement <2 x ptr> %11, ptr %i.x, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit
  %i.ah = phi ptr [ %i.ac, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit ], [ %.pre, %bb.e ]
  %.011 = phi i64 [ %1, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit ], [ %i.au, %bb.e ] ; 4 uses
  %i.ai = icmp eq ptr %i.ah, %i.ae
  %.pre42 = load ptr, ptr %i.v, align 8, !tbaa !661 ; 2 uses
  br i1 %i.ai, label %bb.d, label %..noexc_crit_edge

..noexc_crit_edge:                                ; preds = %bb.c
  %.pre43 = load i8, ptr %i.y, align 8, !tbaa !434, !noalias !2467
  br label %.noexc

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq ptr %.pre42, %i.ae
  %.pre44 = load i8, ptr %i.y, align 8, !tbaa !434 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre44, 10
  %or.cond = select i1 %i.aj, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %.noexc

.noexc:                                           ; preds = %..noexc_crit_edge, %bb.d
  %i.ak = phi i8 [ %.pre43, %..noexc_crit_edge ], [ %.pre44, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  store ptr %.pre42, ptr %9, align 8, !tbaa !661, !alias.scope !2467
  store i8 0, ptr %i.af, align 8, !tbaa !434, !alias.scope !2467
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !2467
  store <2 x ptr> %12, ptr %3, align 16, !tbaa !519, !noalias !2467
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !2467
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !735, !noalias !2467
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !735, !alias.scope !2467
  %i.an = load i8, ptr %i.y, align 8, !tbaa !434, !noalias !2467
  %i.ao = zext i8 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !2467
  store ptr %i.v, ptr %2, align 8, !tbaa !663, !noalias !2467
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !2467
  %i.ap = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %.not = icmp ult i64 %i.aq, %.011
  br i1 %.not, label %bb.e, label %.thread37

.thread37:                                        ; preds = %.noexc
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !732
  %i.as = add i64 %i.ar, %.011
  store i64 %i.as, ptr %i.a, align 8, !tbaa !732
  %i.at = sub i64 %.011, %i.aq
  store i64 %i.at, ptr %i.b, align 8, !tbaa !736
  br label %.loopexit

bb.e:                                             ; preds = %.noexc
  %i.au = sub nuw i64 %.011, %i.aq
  %i.av = load i64, ptr %i.a, align 8, !tbaa !732
  %i.aw = add i64 %i.av, %i.aq
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !732
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !735
  br label %bb.c

.loopexit:                                        ; preds = %bb.d, %.thread37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !735  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  %i.d = load ptr, ptr %0, align 8, !tbaa !661
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !661
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !434
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1144 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !434   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.l = load i8, ptr %i.k, align 8, !tbaa !434
  %.not.i.i = icmp eq i8 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i8 %i.j, label %bb.d [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3
    i8 1, label %bb.e
    i8 2, label %.split7
    i8 3, label %.split6
    i8 4, label %.split5
    i8 5, label %.split4
    i8 6, label %.split
    i8 7, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit
    i8 8, label %.split9
    i8 9, label %.split8
    i8 10, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !364
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !367   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1160
  %i.u = load i8, ptr %i.t, align 8, !tbaa !367
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !115
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

.split7:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

.split6:                                          ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

.split5:                                          ; preds = %bb.c
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

.split4:                                          ; preds = %bb.c
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

.split:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

.split9:                                          ; preds = %bb.c
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

.split8:                                          ; preds = %bb.c
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit: ; preds = %bb.c
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.split9, %.split8, %.split7, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iteratoreqERKSK_.exit
  %i.aw = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !663
  %i.ax = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_SA_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !735
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1176
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !660
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.az) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.i
  %i.be = sub i64 %i.az, %spec.select.i
end_hunk_2
begin_hunk_3_@_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE:bb.a
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %.lr.ph, %.lr.ph.i.i, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_SA_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  switch i64 %0, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr @.str.30, ptr %6, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.31, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 180, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 67, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #35
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.al, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !367
  %i.i = zext i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.f, ptr %4, align 8, !tbaa !366
  %i.j = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !78
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.2.0.copyload.i, 1
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.p, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i14 = load i64, ptr %.sroa.2.0..sroa_idx.i13, align 8, !tbaa !78
  %.fca.0.insert.i15 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i12, 0
  %.fca.1.insert.i16 = insertvalue { ptr, i64 } %.fca.0.insert.i15, i64 %.sroa.2.0.copyload.i14, 1
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i17 = load ptr, ptr %i.s, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload.i19 = load i64, ptr %.sroa.2.0..sroa_idx.i18, align 8, !tbaa !78
  %.fca.0.insert.i20 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i17, 0
  %.fca.1.insert.i21 = insertvalue { ptr, i64 } %.fca.0.insert.i20, i64 %.sroa.2.0.copyload.i19, 1
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i22 = load ptr, ptr %i.v, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !78
  %.fca.0.insert.i25 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i22, 0
  %.fca.1.insert.i26 = insertvalue { ptr, i64 } %.fca.0.insert.i25, i64 %.sroa.2.0.copyload.i24, 1
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !241  ; 2 uses
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.y, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i29 = load i64, ptr %.sroa.2.0..sroa_idx.i28, align 8, !tbaa !78
  %.fca.0.insert.i30 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i27, 0
  %.fca.1.insert.i31 = insertvalue { ptr, i64 } %.fca.0.insert.i30, i64 %.sroa.2.0.copyload.i29, 1
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !241 ; 2 uses
  %.sroa.0.0.copyload.i32 = load ptr, ptr %i.ab, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload.i34 = load i64, ptr %.sroa.2.0..sroa_idx.i33, align 8, !tbaa !78
  %.fca.0.insert.i35 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i32, 0
  %.fca.1.insert.i36 = insertvalue { ptr, i64 } %.fca.0.insert.i35, i64 %.sroa.2.0.copyload.i34, 1
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !241 ; 2 uses
  %.sroa.0.0.copyload.i37 = load ptr, ptr %i.ae, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.2.0.copyload.i39 = load i64, ptr %.sroa.2.0..sroa_idx.i38, align 8, !tbaa !78
  %.fca.0.insert.i40 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i37, 0
  %.fca.1.insert.i41 = insertvalue { ptr, i64 } %.fca.0.insert.i40, i64 %.sroa.2.0.copyload.i39, 1
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %1, align 8, !tbaa !2476, !nonnull !111, !align !114
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %.sroa.0.0.copyload.i42 = load ptr, ptr %i.ah, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i44 = load i64, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !78
  %.fca.0.insert.i45 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i42, 0
  %.fca.1.insert.i46 = insertvalue { ptr, i64 } %.fca.0.insert.i45, i64 %.sroa.2.0.copyload.i44, 1
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr @.str.30, ptr %3, align 8, !tbaa !244
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.31, ptr %i.ai, align 8, !tbaa !245
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 187, ptr %i.aj, align 8, !tbaa !246
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 64, ptr %i.ak, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #35
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i46, %bb.n ], [ %i.j, %bb.f ], [ %.fca.1.insert.i, %bb.g ], [ %.fca.1.insert.i16, %bb.h ], [ %.fca.1.insert.i21, %bb.i ], [ %.fca.1.insert.i26, %bb.j ], [ %.fca.1.insert.i31, %bb.k ], [ %.fca.1.insert.i36, %bb.l ], [ %.fca.1.insert.i41, %bb.m ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZSt10__distanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeEST_ST_St18input_iterator_tag(ptr noundef align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %4 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %8 = insertelement <2 x ptr> poison, ptr %5, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.e, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.bn, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread ] ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !730
  %i.o = load ptr, ptr %1, align 8, !tbaa !730
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread_crit_edge

._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !661, !noalias !2480
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !735
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !735
  %i.s = icmp eq ptr %i.q, %i.r
  %.pre6 = load ptr, ptr %i.d, align 8, !tbaa !661 ; 15 uses
  br i1 %i.s, label %bb.d, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !661
  %i.u = icmp eq ptr %.pre6, %i.t
  br i1 %i.u, label %bb.e, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.g, align 8, !tbaa !434   ; 2 uses
  %i.w = load i8, ptr %i.h, align 8, !tbaa !434
  %.not.i.i.i.i.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

bb.f:                                             ; preds = %bb.e
  switch i8 %i.v, label %bb.g [
    i8 0, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3
    i8 1, label %bb.h
    i8 2, label %.split11
    i8 3, label %.split10
    i8 4, label %.split9
    i8 5, label %.split14
    i8 6, label %.split13
    i8 7, label %.split12
    i8 8, label %.split
    i8 9, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit
    i8 10, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !364
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !364
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.i, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %i.k, align 8, !tbaa !367  ; 2 uses
  %i.ab = load i8, ptr %i.l, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = add i8 %i.aa, -1
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ac, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !115
  %i.ae = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, %i.ad
  br i1 %i.ae, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

.split11:                                         ; preds = %bb.f
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

.split10:                                         ; preds = %bb.f
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

.split9:                                          ; preds = %bb.f
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

.split14:                                         ; preds = %bb.f
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

.split13:                                         ; preds = %bb.f
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

.split12:                                         ; preds = %bb.f
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

.split:                                           ; preds = %bb.f
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit: ; preds = %bb.f
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %.split14, %.split13, %.split12, %.split11, %.split10, %.split9, %.split, %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread_crit_edge, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit
  %i.bd = phi ptr [ %.pre, %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread_crit_edge ], [ %.pre6, %bb.i ], [ %.pre6, %bb.h ], [ %.pre6, %bb.e ], [ %.pre6, %bb.d ], [ %.pre6, %bb.c ], [ %.pre6, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit ], [ %.pre6, %.split ], [ %.pre6, %.split9 ], [ %.pre6, %.split10 ], [ %.pre6, %.split11 ], [ %.pre6, %.split12 ], [ %.pre6, %.split13 ], [ %.pre6, %.split14 ], [ %.pre6, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  store ptr %i.bd, ptr %4, align 8, !tbaa !661, !alias.scope !2480
  store i8 0, ptr %6, align 8, !tbaa !434, !alias.scope !2480
  %i.be = load i8, ptr %i.g, align 8, !tbaa !434, !noalias !2480
  %i.bf = zext i8 %i.be to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !2480
  store <2 x ptr> %9, ptr %3, align 16, !tbaa !519, !noalias !2480
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !2480
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !735, !noalias !2480
  store ptr %i.bg, ptr %7, align 8, !tbaa !735, !alias.scope !2480
  %i.bh = load i8, ptr %i.g, align 8, !tbaa !434, !noalias !2480
  %i.bi = zext i8 %i.bh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !2480
  store ptr %i.d, ptr %2, align 8, !tbaa !663, !noalias !2480
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !2480
  %i.bj = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.bk = extractvalue { ptr, i64 } %i.bj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bl = load i64, ptr %i.m, align 8, !tbaa !733
  %i.bm = sub i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.m, align 8, !tbaa !733
  %i.bn = add nuw nsw i64 %.0, 1
  br label %bb.b, !llvm.loop !2479

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit.thread3: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %.split14, %.split13, %.split12, %.split11, %.split10, %.split9, %.split, %bb.j, %bb.f, %bb.f, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_S7_S7_SE_EEEEEE14const_iteratorneERKSQ_.exit
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt10__copy_n_aIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_S8_S8_SF_EEEEEE14const_iteratorEmPS8_ET1_T_T0_ST_b(ptr noundef align 8 %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = tail call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !733
  %spec.select.i8 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  %i.f = extractvalue { ptr, i64 } %i.b, 0
  store ptr %i.f, ptr %2, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i8, ptr %.sroa.4.0..sroa_idx9, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = add i64 %1, -1                           ; 2 uses
  %.not710 = icmp eq i64 %i.h, 0
  br i1 %.not710, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = insertelement <2 x ptr> poison, ptr %7, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %8, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.m = phi i64 [ %i.h, %.lr.ph ], [ %i.ad, %bb.b ]
  %i.n = phi ptr [ %i.g, %.lr.ph ], [ %i.ac, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !661, !noalias !2484
  store ptr %i.o, ptr %6, align 8, !tbaa !661, !alias.scope !2484
  store i8 0, ptr %i.i, align 8, !tbaa !434, !alias.scope !2484
  %i.p = load i8, ptr %i.j, align 8, !tbaa !434, !noalias !2484
  %i.q = zext i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !2484
  store <2 x ptr> %10, ptr %5, align 16, !tbaa !519, !noalias !2484
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !2484
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !735, !noalias !2484
  store ptr %i.r, ptr %i.k, align 8, !tbaa !735, !alias.scope !2484
  %i.s = load i8, ptr %i.j, align 8, !tbaa !434, !noalias !2484
  %i.t = zext i8 %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !2484
  store ptr %i.a, ptr %4, align 8, !tbaa !663, !noalias !2484
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !2484
  %i.u = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.w = load i64, ptr %i.d, align 8, !tbaa !733
  %i.x = sub i64 %i.w, %i.v
  store i64 %i.x, ptr %i.d, align 8, !tbaa !733
  %i.y = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 1
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !733
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z)
  %i.ab = extractvalue { ptr, i64 } %i.y, 0
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ad = add i64 %i.m, -1                        ; 2 uses
  %.not7 = icmp eq i64 %i.ad, 0
  br i1 %.not7, label %.loopexit, label %bb.b, !llvm.loop !2483

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.1 = phi ptr [ %2, %bb.a ], [ %i.g, %.preheader ], [ %i.ac, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http17message_generator14generator_implILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferESI_NS1_10chunk_crlfEEEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %8 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %9 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %10 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %11 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %12 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 32 uses
  %13 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !627, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1544 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1736
  %i.d = load ptr, ptr %2, align 8, !tbaa !526, !noalias !2507 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !529, !noalias !2508 ; 6 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !530, !noalias !2508, !nonnull !111, !align !114 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !333, !noalias !2509 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !336, !noalias !2509 ; 7 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2509
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2509
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2509
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

bb.f:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.j, align 8, !tbaa !81, !noalias !2509
  %.sroa.14.24.insert.ext = zext i8 %i.p to i64
  %i.q = inttoptr i64 %.sroa.14.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.14.098 = phi ptr [ %i.q, %bb.f ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ undef, %bb.a ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !333, !noalias !2510
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = load i8, ptr %i.u, align 8, !tbaa !336, !noalias !2510 ; 4 uses
  switch i8 %i.v, label %bb.g [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
  unreachable

bb.h:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !241, !noalias !2510
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

bb.i:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !241, !noalias !2510
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

bb.j:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !241, !noalias !2510
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

bb.k:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
  %i.z = load i8, ptr %i.t, align 8, !tbaa !81, !noalias !2510
  %.sroa.5.24.insert.ext = zext i8 %i.z to i64
  %i.aa = inttoptr i64 %.sroa.5.24.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
  %.sroa.5.1 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit ], [ %i.aa, %bb.k ], [ %i.y, %bb.j ], [ %i.x, %bb.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !531, !noalias !2510
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.d, ptr %13, align 8
  %.sroa.051.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 %i.f, ptr %.sroa.051.sroa.2.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.ad, align 8, !tbaa !333
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i8 0, ptr %i.af, align 8, !tbaa !336
  switch i8 %i.l, label %bb.l [
    i8 0, label %.noexc
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  unreachable

bb.m:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.14.098, ptr %i.ae, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i10

bb.n:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.14.098, ptr %i.ae, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i10

bb.o:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.14.098, ptr %i.ae, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i10

bb.p:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  %i.ag = ptrtoint ptr %.sroa.14.098 to i64
  %.sroa.453.24.extract.trunc = trunc i64 %i.ag to i8
  store i8 %.sroa.453.24.extract.trunc, ptr %i.ae, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i10

.sink.split.i.i.i.i.i.i.i10:                      ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  store i8 %i.l, ptr %i.af, align 8, !tbaa !336
  br label %.noexc

.noexc:                                           ; preds = %.sink.split.i.i.i.i.i.i.i10, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.ah, align 8, !tbaa !531
  %i.ai = icmp eq i8 %i.v, 4
  %i.aj = ptrtoint ptr %.sroa.5.1 to i64
  %.sroa.788.24.insert.ext = and i64 %i.aj, 255
  %i.ak = inttoptr i64 %.sroa.788.24.insert.ext to ptr
  %.sroa.788.1 = select i1 %i.ai, ptr %i.ak, ptr %.sroa.5.1
  %i.al = add i8 %i.v, -4
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.al, -3
  br label %bb.q

bb.q:                                             ; preds = %.noexc14, %.noexc
  %.pr.pre = phi i8 [ %i.l, %.noexc ], [ %.pr.pre.pre, %.noexc14 ] ; 7 uses
  %i.am = phi ptr [ %i.i, %.noexc ], [ %.pre128, %.noexc14 ] ; 2 uses
  %i.an = phi ptr [ %i.g, %.noexc ], [ %.pre127, %.noexc14 ] ; 5 uses
  %i.ao = phi ptr [ %i.d, %.noexc ], [ %.pre, %.noexc14 ]
  %.0.i = phi i64 [ 0, %.noexc ], [ %i.cd, %.noexc14 ] ; 3 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  %i.aq = icmp eq ptr %i.an, %i.ac
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  %i.ar = icmp eq ptr %i.am, %i.s
  %or.cond111 = select i1 %or.cond, i1 %i.ar, i1 false
  %.not.i.i.i.i.i.i = icmp eq i8 %.pr.pre, %i.v
  %or.cond138 = select i1 %or.cond111, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond138, label %bb.r, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorneERKSD_.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.as = load ptr, ptr %i.ae, align 8
end_hunk_3
