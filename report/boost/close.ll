Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/close?download=true
inline.NumInlined: 66991
inline.NumDeleted: 20813
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 186
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNS6_4http6detail10chunk_sizeENS0_12const_bufferENSA_10chunk_crlfESD_SE_SD_SD_SE_EEEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SN_T0_SO_m:bb.a
  %i.ad = load ptr, ptr %3, align 8, !tbaa !2077
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !2070 ; 4 uses
  br i1 %i.ae, label %bb.o, label %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread_crit_edge

._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread_crit_edge: ; preds = %bb.n
  %.pre17 = load ptr, ptr %i.a, align 8, !tbaa !1954
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !2070
  %i.ag = icmp eq ptr %.pre, %i.af
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !1954 ; 5 uses
  br i1 %i.ag, label %bb.p, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !1954
  %i.ai = icmp eq ptr %.pre18, %i.ah
  br i1 %i.ai, label %bb.q, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.aj = load i8, ptr %i.f, align 8, !tbaa !1955 ; 2 uses
  %i.ak = load i8, ptr %i.aa, align 8, !tbaa !1955
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i, label %bb.r, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.al = add i8 %i.aj, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.al, 8
  br i1 %switch.i.i.i.i.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit, label %.critedge

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit: ; preds = %bb.r
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !1844
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !1844
  %.not14 = icmp eq ptr %i.am, %i.an
  br i1 %.not14, label %.critedge, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

.critedge:                                        ; preds = %bb.r, %bb.m, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret i64 %.0

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread: ; preds = %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread_crit_edge, %bb.q, %bb.p, %bb.o, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit
  %i.ao = phi ptr [ %.pre17, %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread_crit_edge ], [ %.pre18, %bb.q ], [ %.pre18, %bb.p ], [ %.pre18, %bb.o ], [ %.pre18, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1954
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.s, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread
  %.pre.i.i = load i8, ptr %i.f, align 8, !tbaa !1955
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i

bb.s:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %i.at = load i8, ptr %i.f, align 8, !tbaa !1955 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %i.av = load i8, ptr %i.au, align 8, !tbaa !1955
  %.not.i.i.i.i = icmp eq i8 %i.at, %i.av
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i

bb.t:                                             ; preds = %bb.s
  %i.aw = add i8 %i.at, -1
  %switch.i.i.i.i.i.i = icmp ult i8 %i.aw, 8
  br i1 %switch.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i: ; preds = %bb.t
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !1844
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !1844
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i, %bb.t
  %i.ba = zext i8 %i.at to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.a, ptr %6, align 8, !tbaa !1957
  %i.bb = invoke { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc unwind label %bb.w     ; 2 uses

.noexc:                                           ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 2 uses
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !2070
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1965
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bd) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %spec.select.i.i.i
  %i.bi = sub i64 %i.bd, %spec.select.i.i.i
  %.fca.0.insert.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.bh, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i, i64 %i.bi, 1
  br label %bb.u

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i, %bb.s, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i
  %i.bj = phi i8 [ %.pre.i.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i ], [ %i.at, %bb.s ], [ %i.at, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i ]
  %i.bk = zext i8 %i.bj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.a, ptr %5, align 8, !tbaa !1957
  %i.bl = invoke { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc8 unwind label %bb.w

.noexc8:                                          ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.u

bb.u:                                             ; preds = %.noexc8, %.noexc
  %.pn.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i, %.noexc ], [ %i.bl, %.noexc8 ] ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %.pn.i.i, 1
  %i.bn = load i64, ptr %i.ab, align 8, !tbaa !2078
  %spec.select.i6 = call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bm) ; 2 uses
  %i.bo = call i64 @llvm.umin.i64(i64 %.sroa.6.0, i64 %spec.select.i6) ; 4 uses
  %.not.i = icmp eq i64 %spec.select.i6, 0
  br i1 %.not.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = extractvalue { ptr, i64 } %.pn.i.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.0, ptr align 1 %i.bp, i64 %i.bo, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit: ; preds = %bb.u, %bb.v
  %i.bq = add i64 %i.bo, %.0
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 %i.bo
  %i.bs = sub nuw i64 %.sroa.6.0, %i.bo
  %i.bt = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.m unwind label %bb.w, !llvm.loop !8271 ; 0 uses

bb.w:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #37
  unreachable
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.c = load ptr, ptr %0, align 8, !tbaa !2080, !nonnull !1301, !align !1304 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8279)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !8278
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1969, !noalias !8280
  store ptr %i.e, ptr %7, align 8, !tbaa !1969, !noalias !8280
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !1970, !noalias !8280
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.j = load i8, ptr %i.i, align 8, !tbaa !1970, !noalias !8280
  %i.k = zext i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !8280
  store ptr %i.f, ptr %6, align 8, !tbaa !1981, !noalias !8280
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.g, ptr %i.l, align 8, !tbaa !1981, !noalias !8280
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc.i unwind label %bb.b, !noalias !8278

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !8280
  %i.m = load ptr, ptr %7, align 8, !tbaa !1969, !noalias !8280
  store ptr %i.m, ptr %8, align 8, !tbaa !1969, !alias.scope !8280
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !1970, !alias.scope !8280
  %i.p = load i8, ptr %i.h, align 8, !tbaa !1970, !noalias !8280
  %i.q = zext i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !8280
  store ptr %i.n, ptr %5, align 8, !tbaa !1981, !noalias !8280
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.r, align 8, !tbaa !1981, !noalias !8280
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #37
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !8280
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.u, align 8, !tbaa !1983, !alias.scope !8280
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !8278
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !1969
  store ptr %i.w, ptr %i.v, align 8, !tbaa !1969
  %10 = insertelement <2 x ptr> poison, ptr %9, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %0, i64 1
  %12 = getelementptr inbounds nuw i8, <2 x ptr> %11, <2 x i64> <i64 8, i64 32>
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i8 0, ptr %i.y, align 8, !tbaa !1970
  %i.z = load i8, ptr %i.o, align 8, !tbaa !1970
  %i.aa = zext i8 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.x, ptr %4, align 8, !tbaa !1981
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !1981
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !1983 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !1983
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2080, !nonnull !1301, !align !1304 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit
  %i.ah = phi ptr [ %i.ac, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit ], [ %.pre, %bb.e ]
  %.011 = phi i64 [ %1, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit ], [ %i.au, %bb.e ] ; 4 uses
  %i.ai = icmp eq ptr %i.ah, %i.ae
  %.pre42 = load ptr, ptr %i.v, align 8, !tbaa !1969 ; 2 uses
  br i1 %i.ai, label %bb.d, label %..noexc_crit_edge

..noexc_crit_edge:                                ; preds = %bb.c
  %.pre43 = load i8, ptr %i.y, align 8, !tbaa !1970, !noalias !8281
  br label %.noexc

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq ptr %.pre42, %i.ae
  %.pre44 = load i8, ptr %i.y, align 8, !tbaa !1970 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre44, 10
  %or.cond = select i1 %i.aj, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %.noexc

.noexc:                                           ; preds = %..noexc_crit_edge, %bb.d
  %i.ak = phi i8 [ %.pre43, %..noexc_crit_edge ], [ %.pre44, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !8281)
  store ptr %.pre42, ptr %9, align 8, !tbaa !1969, !alias.scope !8281
  store i8 0, ptr %i.af, align 8, !tbaa !1970, !alias.scope !8281
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !8281
  store <2 x ptr> %12, ptr %3, align 16, !tbaa !1981, !noalias !8281
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !8281
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !1983, !noalias !8281
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !1983, !alias.scope !8281
  %i.an = load i8, ptr %i.y, align 8, !tbaa !1970, !noalias !8281
  %i.ao = zext i8 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !8281
  store ptr %i.v, ptr %2, align 8, !tbaa !1972, !noalias !8281
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !8281
  %i.ap = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %.not = icmp ult i64 %i.aq, %.011
  br i1 %.not, label %bb.e, label %.thread37

.thread37:                                        ; preds = %.noexc
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !2081
  %i.as = add i64 %i.ar, %.011
  store i64 %i.as, ptr %i.a, align 8, !tbaa !2081
  %i.at = sub i64 %.011, %i.aq
  store i64 %i.at, ptr %i.b, align 8, !tbaa !2082
  br label %.loopexit

bb.e:                                             ; preds = %.noexc
  %i.au = sub nuw i64 %.011, %i.aq
  %i.av = load i64, ptr %i.a, align 8, !tbaa !2081
  %i.aw = add i64 %i.av, %i.aq
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !2081
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !1983
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1983 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %0, align 8, !tbaa !1969
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !1969
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !1970
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !1970  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1970
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
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !1902
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !1902
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1903  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.u = load i8, ptr %i.t, align 8, !tbaa !1903
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !1305
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !1305
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split7:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1844
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !1844
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split6:                                          ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !1844
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !1844
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split5:                                          ; preds = %bb.c
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !1844
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !1844
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split4:                                          ; preds = %bb.c
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !1844
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !1844
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !1844
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !1844
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split9:                                          ; preds = %bb.c
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !1844
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !1844
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split8:                                          ; preds = %bb.c
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !1844
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !1844
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit: ; preds = %bb.c
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !1844
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !1844
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.split9, %.split8, %.split7, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit
  %i.aw = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %0, ptr %2, align 8, !tbaa !1972
  %i.ax = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !1983
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1979
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.az) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.i
  %i.be = sub i64 %i.az, %spec.select.i
end_hunk_0
begin_hunk_1_@_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_4test7handlerEEES10_Lb1ENSA_10empty_bodyESD_EES10_NSJ_18serializer_is_doneELb1ES16_SD_EES10_Lb1ES16_SD_EESZ_E3ptr5resetEv:bb.a
  %i.n = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not4 = icmp eq ptr %i.n, null
  br i1 %.not4, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1305
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1305
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ 1, %.preheader.1.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 968
  %i.v = load i8, ptr %i.u, align 1, !tbaa !1271
  store i8 %i.v, ptr %i.m, align 1, !tbaa !1271
  store ptr %i.m, ptr %i.t, align 8, !tbaa !1305
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_23reactive_socket_send_opINS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJNS0_12const_bufferESA_SA_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EEEEEEEEENSK_13write_some_opINSK_8write_opINSK_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_4test7handlerEEES11_Lb1ENSB_10empty_bodyESE_EES11_NSK_18serializer_is_doneELb1ES17_SE_EES11_Lb1ES17_SE_EES10_EENS1_16thread_info_base11default_tagEE10deallocateEPS1C_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #36
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_23reactive_socket_send_opINS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJNS0_12const_bufferESA_SA_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EEEEEEEEENSK_13write_some_opINSK_8write_opINSK_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_4test7handlerEEES11_Lb1ENSB_10empty_bodyESE_EES11_NSK_18serializer_is_doneELb1ES17_SE_EES11_Lb1ES17_SE_EES10_EENS1_16thread_info_base11default_tagEE10deallocateEPS1C_m.exit

_ZN5boost4asio6detail19recycling_allocatorINS1_23reactive_socket_send_opINS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJNS0_12const_bufferESA_SA_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EEEEEEEEENSK_13write_some_opINSK_8write_opINSK_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_4test7handlerEEES11_Lb1ENSB_10empty_bodyESE_EES11_NSK_18serializer_is_doneELb1ES17_SE_EES11_Lb1ES17_SE_EES10_EENS1_16thread_info_base11default_tagEE10deallocateEPS1C_m.exit: ; preds = %bb.f, %.thread.i.i
  store ptr null, ptr %i.l, align 8, !tbaa !3846
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost4asio6detail19recycling_allocatorINS1_23reactive_socket_send_opINS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJNS0_12const_bufferESA_SA_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EEEEEEEEENSK_13write_some_opINSK_8write_opINSK_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_4test7handlerEEES11_Lb1ENSB_10empty_bodyESE_EES11_NSK_18serializer_is_doneELb1ES17_SE_EES11_Lb1ES17_SE_EES10_EENS1_16thread_info_base11default_tagEE10deallocateEPS1C_m.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.1912", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEEC2ERKSQ_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3849
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !3854
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3852
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.k = zext i1 %i.j to i32
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i8, ptr %i.l, align 4, !tbaa !3850
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.i, align 8, !tbaa !3716
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.q = load i64, ptr %i.p, align 8, !tbaa !3855
  %i.r = icmp ult i64 %i.o, %i.q
  %spec.select = select i1 %i.r, i32 2, i32 %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret i32 %.0
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16073)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2085, !noalias !16074 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16076)
  store ptr %i.b, ptr %6, align 8, !tbaa !2087, !alias.scope !16077
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2081, !noalias !16077
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2088, !alias.scope !16077
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !2080, !noalias !16077, !nonnull !1301, !align !1304 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16079)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !16080
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1969, !noalias !16081
  store ptr %i.h, ptr %5, align 8, !tbaa !1969, !noalias !16081
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !1970, !noalias !16081
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1970, !noalias !16081
  %i.n = zext i8 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !16081
  store ptr %i.i, ptr %4, align 8, !tbaa !1981, !noalias !16081
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.o, align 8, !tbaa !1981, !noalias !16081
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.b, !noalias !16080

.noexc.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !16081
  %i.q = load ptr, ptr %5, align 8, !tbaa !1969, !noalias !16081
  store ptr %i.q, ptr %i.p, align 8, !tbaa !1969, !alias.scope !16081
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !1970, !alias.scope !16081
  %i.t = load i8, ptr %i.k, align 8, !tbaa !1970, !noalias !16081
  %i.u = zext i8 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !16081
  store ptr %i.r, ptr %3, align 8, !tbaa !1981, !noalias !16081
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.v, align 8, !tbaa !1981, !noalias !16081
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i.i.i, %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #37
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !16081
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.f, ptr %i.y, align 8, !tbaa !1983, !alias.scope !16081
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !16080
  call void @llvm.experimental.noalias.scope.decl(metadata !16082)
  call void @llvm.experimental.noalias.scope.decl(metadata !16083)
  %i.z = load ptr, ptr %1, align 8, !tbaa !2085, !noalias !16084 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16085)
  call void @llvm.experimental.noalias.scope.decl(metadata !16086)
  store ptr %i.z, ptr %7, align 8, !tbaa !2087, !alias.scope !16087
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !2082, !noalias !16087
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !2088, !alias.scope !16087
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1969, !noalias !16087
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1969, !alias.scope !16087
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.ai, align 8, !tbaa !1970, !alias.scope !16087
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !1970, !noalias !16087
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !16087
  store ptr %i.ag, ptr %2, align 8, !tbaa !1981, !noalias !16087
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !1981, !noalias !16087
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #37
  unreachable

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !16087
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1983, !noalias !16088
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !1983, !alias.scope !16087
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
  %7 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1969
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1969
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  store i8 0, ptr %i.e, align 8, !tbaa !1970
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1970
  %i.h = zext i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !1981
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
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  %8 = insertelement <2 x ptr> poison, ptr %5, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %7, i64 1
  %10 = getelementptr inbounds nuw i8, <2 x ptr> %9, <2 x i64> <i64 8, i64 24>
  store ptr %i.w, ptr %6, align 8, !tbaa !1981
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !1983
  store ptr %i.x, ptr %i.j, align 8, !tbaa !1983
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.aa = load ptr, ptr %7, align 8, !tbaa !2087
  %i.ab = load ptr, ptr %2, align 8, !tbaa !2087
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !1983
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !1983
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !1969
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !1969
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = load i8, ptr %i.e, align 8, !tbaa !1970 ; 2 uses
  %i.ak = load i8, ptr %i.o, align 8, !tbaa !1970
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
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !1902
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !1902
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.r, align 8, !tbaa !1903 ; 2 uses
  %i.ap = load i8, ptr %i.s, align 8, !tbaa !1903
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, %i.ap
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aq = add i8 %i.ao, -1
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aq, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %.critedge

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !1305
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !1305
  %i.as = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, %i.ar
  br i1 %i.as, label %.critedge, label %.thread

.split12:                                         ; preds = %bb.f
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !1844
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.critedge, label %.thread

.split11:                                         ; preds = %bb.f
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !1844
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %.critedge, label %.thread

.split10:                                         ; preds = %bb.f
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !1844
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %.critedge, label %.thread

.split15:                                         ; preds = %bb.f
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !1844
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %.critedge, label %.thread

.split14:                                         ; preds = %bb.f
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !1844
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %.critedge, label %.thread

.split13:                                         ; preds = %bb.f
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !1844
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %.critedge, label %.thread

.split:                                           ; preds = %bb.f
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !1844
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %.critedge, label %.thread

bb.k:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !1844
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %.critedge, label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %.split15, %.split14, %.split13, %.split12, %.split11, %.split10, %.split, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k
  %i.br = load i64, ptr %i.t, align 8, !tbaa !3854
  %i.bs = icmp ult i64 %i.br, 64
  br i1 %i.bs, label %.noexc, label %.critedge

.noexc:                                           ; preds = %.thread
  %i.bt = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 1
  %i.bv = load i64, ptr %i.u, align 8, !tbaa !2088
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bu) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bt, 0
  %i.bx = load i64, ptr %i.t, align 8, !tbaa !3854
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx ; 2 uses
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !1305
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %spec.select.i, ptr %i.bz, align 8, !tbaa !3778
  %i.ca = load i64, ptr %i.v, align 8, !tbaa !3855
  %i.cb = add i64 %i.ca, %spec.select.i
  store i64 %i.cb, ptr %i.v, align 8, !tbaa !3855
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !16092)
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !1969, !noalias !16092
  store ptr %i.cc, ptr %5, align 8, !tbaa !1969, !alias.scope !16092
  store i8 0, ptr %i.y, align 8, !tbaa !1970, !alias.scope !16092
  %i.cd = load i8, ptr %i.e, align 8, !tbaa !1970, !noalias !16092
  %i.ce = zext i8 %i.cd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !16092
  store <2 x ptr> %10, ptr %4, align 16, !tbaa !1981, !noalias !16092
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !16092
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !1983, !noalias !16092
  store ptr %i.cf, ptr %i.z, align 8, !tbaa !1983, !alias.scope !16092
  %i.cg = load i8, ptr %i.e, align 8, !tbaa !1970, !noalias !16092
  %i.ch = zext i8 %i.cg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !16092
  store ptr %i.a, ptr %3, align 8, !tbaa !1972, !noalias !16092
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !16092
  %i.ci = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.cj = extractvalue { ptr, i64 } %i.ci, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ck = load i64, ptr %i.u, align 8, !tbaa !2088
  %i.cl = sub i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.u, align 8, !tbaa !2088
  %i.cm = load i64, ptr %i.t, align 8, !tbaa !3854
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.t, align 8, !tbaa !3854
  br label %bb.b, !llvm.loop !16091

.critedge:                                        ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %.split15, %.split14, %.split13, %.split12, %.split11, %.split10, %.split, %bb.j, %bb.f, %bb.f, %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEE9all_emptyINSP_14const_iteratorEEEbT_SU_(ptr noundef align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %4 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %5 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1969
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1969
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  store i8 0, ptr %i.e, align 8, !tbaa !1970
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1970
  %i.h = zext i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !1981
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 10 uses
  %7 = insertelement <2 x ptr> poison, ptr %4, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %6, i64 1
  %9 = getelementptr inbounds nuw i8, <2 x ptr> %8, <2 x i64> <i64 8, i64 24>
  store ptr %i.u, ptr %5, align 8, !tbaa !1981
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !1983
  store ptr %i.v, ptr %i.j, align 8, !tbaa !1983
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %.05 = phi i64 [ 0, %bb.a ], [ %i.ce, %.noexc ] ; 2 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !2087
  %i.z = load ptr, ptr %1, align 8, !tbaa !2087
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !1983
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !1983
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1969
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !1969
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr %i.e, align 8, !tbaa !1970 ; 2 uses
  %i.ai = load i8, ptr %i.o, align 8, !tbaa !1970
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  switch i8 %i.ah, label %bb.g [
    i8 0, label %.thread
    i8 1, label %bb.h
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
    i8 8, label %bb.q
    i8 9, label %bb.r
    i8 10, label %.thread
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !1902
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !1902
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i8, ptr %i.r, align 8, !tbaa !1903 ; 2 uses
  %i.an = load i8, ptr %i.s, align 8, !tbaa !1903
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.am, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ao = add i8 %i.am, -1
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ao, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %.thread

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !1305
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !1305
  %i.aq = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, %i.ap
  br label %bb.s

bb.k:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !1844
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.at = icmp eq ptr %i.ar, %i.as
  br label %bb.s

bb.l:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !1844
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.aw = icmp eq ptr %i.au, %i.av
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !1844
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.az = icmp eq ptr %i.ax, %i.ay
  br label %bb.s

bb.n:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !1844
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br label %bb.s

bb.o:                                             ; preds = %bb.f
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !1844
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bf = icmp eq ptr %i.bd, %i.be
  br label %bb.s

bb.p:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !1844
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br label %bb.s

bb.q:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !1844
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br label %bb.s

bb.r:                                             ; preds = %bb.f
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !1844
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !1844
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bp = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.i ], [ %i.aq, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.at, %bb.k ], [ %i.aw, %bb.l ], [ %i.az, %bb.m ], [ %i.bc, %bb.n ], [ %i.bf, %bb.o ], [ %i.bi, %bb.p ], [ %i.bl, %bb.q ], [ %i.bo, %bb.r ], [ false, %bb.h ]
  %i.bq = icmp samesign ugt i64 %.05, 63
  %.not11 = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %.not11, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.bs = extractvalue { ptr, i64 } %i.br, 1
  %i.bt = load i64, ptr %i.t, align 8, !tbaa !2088
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bs)
  %.not = icmp eq i64 %spec.select.i, 0
  br i1 %.not, label %.noexc, label %.thread

.noexc:                                           ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !16096)
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !1969, !noalias !16096
  store ptr %i.bu, ptr %4, align 8, !tbaa !1969, !alias.scope !16096
  store i8 0, ptr %i.w, align 8, !tbaa !1970, !alias.scope !16096
  %i.bv = load i8, ptr %i.e, align 8, !tbaa !1970, !noalias !16096
  %i.bw = zext i8 %i.bv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !16096
  store <2 x ptr> %9, ptr %3, align 16, !tbaa !1981, !noalias !16096
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !16096
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !1983, !noalias !16096
  store ptr %i.bx, ptr %i.x, align 8, !tbaa !1983, !alias.scope !16096
  %i.by = load i8, ptr %i.e, align 8, !tbaa !1970, !noalias !16096
  %i.bz = zext i8 %i.by to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !16096
  store ptr %i.a, ptr %2, align 8, !tbaa !1972, !noalias !16096
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !16096
  %i.ca = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.cb = extractvalue { ptr, i64 } %i.ca, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.cc = load i64, ptr %i.t, align 8, !tbaa !2088
  %i.cd = sub i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.t, align 8, !tbaa !2088
  %i.ce = add nuw nsw i64 %.05, 1
  br label %bb.b, !llvm.loop !16095

.thread:                                          ; preds = %bb.f, %bb.f, %bb.j, %bb.s, %bb.t
  %.06 = phi i1 [ false, %bb.t ], [ true, %bb.s ], [ true, %bb.j ], [ true, %bb.f ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret i1 %.06
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail28reactive_socket_service_base10async_sendINS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS0_12const_bufferESA_NS4_4http10chunk_crlfEEEEEEEEEENSB_6detail13write_some_opINSJ_8write_opINSJ_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_4test7handlerEEEST_Lb1ENSB_10empty_bodyENSB_12basic_fieldsISaIcEEEEEST_NSJ_18serializer_is_doneELb1ESZ_S12_EEST_Lb1ESZ_S12_EESS_EEvRNS2_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(760) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::asio::cancellation_slot::auto_delete_helper", align 8 ; 5 uses
  %7 = alloca %"struct.boost::beast::detail::filtering_cancellation_slot", align 8 ; 7 uses
  %8 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>>, boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::handshake_op<boost::beast::test::handler>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 736
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3744
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2390 ; 2 uses
  store ptr %i.d, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.b, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %4, ptr %8, align 8, !tbaa !3858
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.f = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
  %i.g = tail call noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_11default_tagEEEPvT_PS2_mm(ptr noundef %i.f, i64 noundef 968, i64 noundef 8) ; 16 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !3859
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !3860
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %1, align 8, !tbaa !3580
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !3610
  store ptr null, ptr %i.g, align 8, !tbaa !1529
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_4test7handlerEEESS_Lb1ENSA_10empty_bodyENSA_12basic_fieldsISaIcEEEEESS_NSI_18serializer_is_doneELb1ESY_S11_EESS_Lb1ESY_S11_EESR_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.m, align 8, !tbaa !1530
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !1531
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !1406
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
end_hunk_1
