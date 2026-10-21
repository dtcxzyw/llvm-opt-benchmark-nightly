Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read3?download=true
inline.NumInlined: 77476
inline.NumDeleted: 23382
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNS6_4http6detail10chunk_sizeENS0_12const_bufferENSA_10chunk_crlfESD_SE_SD_SD_SE_EEEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SN_T0_SO_m:bb.a
  %i.ad = load ptr, ptr %3, align 8, !tbaa !2170
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !2163 ; 4 uses
  br i1 %i.ae, label %bb.o, label %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread_crit_edge

._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread_crit_edge: ; preds = %bb.n
  %.pre17 = load ptr, ptr %i.a, align 8, !tbaa !2058
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !2163
  %i.ag = icmp eq ptr %.pre, %i.af
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2058 ; 5 uses
  br i1 %i.ag, label %bb.p, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !2058
  %i.ai = icmp eq ptr %.pre18, %i.ah
  br i1 %i.ai, label %bb.q, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.aj = load i8, ptr %i.f, align 8, !tbaa !2059 ; 2 uses
  %i.ak = load i8, ptr %i.aa, align 8, !tbaa !2059
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i, label %bb.r, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.al = add i8 %i.aj, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.al, 8
  br i1 %switch.i.i.i.i.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit, label %.critedge

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit: ; preds = %bb.r
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !1952
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !1952
  %.not14 = icmp eq ptr %i.am, %i.an
  br i1 %.not14, label %.critedge, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread

.critedge:                                        ; preds = %bb.r, %bb.m, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  ret i64 %.0

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread: ; preds = %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread_crit_edge, %bb.q, %bb.p, %bb.o, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit
  %i.ao = phi ptr [ %.pre17, %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread_crit_edge ], [ %.pre18, %bb.q ], [ %.pre18, %bb.p ], [ %.pre18, %bb.o ], [ %.pre18, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2058
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.s, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread
  %.pre.i.i = load i8, ptr %i.f, align 8, !tbaa !2059
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i

bb.s:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE14const_iteratorneERKSF_.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %i.at = load i8, ptr %i.f, align 8, !tbaa !2059 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %i.av = load i8, ptr %i.au, align 8, !tbaa !2059
  %.not.i.i.i.i = icmp eq i8 %i.at, %i.av
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i

bb.t:                                             ; preds = %bb.s
  %i.aw = add i8 %i.at, -1
  %switch.i.i.i.i.i.i = icmp ult i8 %i.aw, 8
  br i1 %switch.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i: ; preds = %bb.t
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !1952
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !1952
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i, %bb.t
  %i.ba = zext i8 %i.at to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store ptr %i.a, ptr %6, align 8, !tbaa !2061
  %i.bb = invoke { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc unwind label %bb.w     ; 2 uses

.noexc:                                           ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 2 uses
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !2163
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !2069
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bd) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %spec.select.i.i.i
  %i.bi = sub i64 %i.bd, %spec.select.i.i.i
  %.fca.0.insert.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.bh, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i, i64 %i.bi, 1
  br label %bb.u

_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i, %bb.s, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i
  %i.bj = phi i8 [ %.pre.i.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread_crit_edge.i.i ], [ %i.at, %bb.s ], [ %i.at, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.i.i ]
  %i.bk = zext i8 %i.bj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.a, ptr %5, align 8, !tbaa !2061
  %i.bl = invoke { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm10EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_4http6detail10chunk_sizeENS_4asio12const_bufferENS7_10chunk_crlfESB_SC_SB_SB_SC_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSG_(i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc8 unwind label %bb.w

.noexc8:                                          ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.u

bb.u:                                             ; preds = %.noexc8, %.noexc
  %.pn.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i, %.noexc ], [ %i.bl, %.noexc8 ] ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %.pn.i.i, 1
  %i.bn = load i64, ptr %i.ab, align 8, !tbaa !2171
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
          to label %bb.m unwind label %bb.w, !llvm.loop !8761 ; 0 uses

bb.w:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratoreqERKS9_.exit.thread2.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #36
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.c = load ptr, ptr %0, align 8, !tbaa !2173, !nonnull !1352, !align !1356 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8769)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !8768
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2073, !noalias !8770
  store ptr %i.e, ptr %7, align 8, !tbaa !2073, !noalias !8770
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !2074, !noalias !8770
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.j = load i8, ptr %i.i, align 8, !tbaa !2074, !noalias !8770
  %i.k = zext i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !8770
  store ptr %i.f, ptr %6, align 8, !tbaa !2085, !noalias !8770
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.g, ptr %i.l, align 8, !tbaa !2085, !noalias !8770
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc.i unwind label %bb.b, !noalias !8768

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !8770
  %i.m = load ptr, ptr %7, align 8, !tbaa !2073, !noalias !8770
  store ptr %i.m, ptr %8, align 8, !tbaa !2073, !alias.scope !8770
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !2074, !alias.scope !8770
  %i.p = load i8, ptr %i.h, align 8, !tbaa !2074, !noalias !8770
  %i.q = zext i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !8770
  store ptr %i.n, ptr %5, align 8, !tbaa !2085, !noalias !8770
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.r, align 8, !tbaa !2085, !noalias !8770
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #36
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !8770
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.u, align 8, !tbaa !2087, !alias.scope !8770
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !8768
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !2073
  store ptr %i.w, ptr %i.v, align 8, !tbaa !2073
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i8 0, ptr %i.y, align 8, !tbaa !2074
  %i.z = load i8, ptr %i.o, align 8, !tbaa !2074
  %i.aa = zext i8 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.x, ptr %4, align 8, !tbaa !2085
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !2085
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !2087 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2173, !nonnull !1352, !align !1356 ; 2 uses
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
  %.pre42 = load ptr, ptr %i.v, align 8, !tbaa !2073 ; 2 uses
  br i1 %i.ai, label %bb.d, label %..noexc_crit_edge

..noexc_crit_edge:                                ; preds = %bb.c
  %.pre43 = load i8, ptr %i.y, align 8, !tbaa !2074, !noalias !8771
  br label %.noexc

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq ptr %.pre42, %i.ae
  %.pre44 = load i8, ptr %i.y, align 8, !tbaa !2074 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre44, 10
  %or.cond = select i1 %i.aj, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %.noexc

.noexc:                                           ; preds = %..noexc_crit_edge, %bb.d
  %i.ak = phi i8 [ %.pre43, %..noexc_crit_edge ], [ %.pre44, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !8771)
  store ptr %.pre42, ptr %9, align 8, !tbaa !2073, !alias.scope !8771
  store i8 0, ptr %i.af, align 8, !tbaa !2074, !alias.scope !8771
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35, !noalias !8771
  store <2 x ptr> %12, ptr %3, align 16, !tbaa !2085, !noalias !8771
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !8771
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !2087, !noalias !8771
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !2087, !alias.scope !8771
  %i.an = load i8, ptr %i.y, align 8, !tbaa !2074, !noalias !8771
  %i.ao = zext i8 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !8771
  store ptr %i.v, ptr %2, align 8, !tbaa !2076, !noalias !8771
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !8771
  %i.ap = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_S6_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %.not = icmp ult i64 %i.aq, %.011
  br i1 %.not, label %bb.e, label %.thread37

.thread37:                                        ; preds = %.noexc
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !2174
  %i.as = add i64 %i.ar, %.011
  store i64 %i.as, ptr %i.a, align 8, !tbaa !2174
  %i.at = sub i64 %.011, %i.aq
  store i64 %i.at, ptr %i.b, align 8, !tbaa !2175
  br label %.loopexit

bb.e:                                             ; preds = %.noexc
  %i.au = sub nuw i64 %.011, %i.aq
  %i.av = load i64, ptr %i.a, align 8, !tbaa !2174
  %i.aw = add i64 %i.av, %i.aq
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !2174
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !2087
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2087 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %0, align 8, !tbaa !2073
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !2073
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !2074
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !2074  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = load i8, ptr %i.k, align 8, !tbaa !2074
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
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !2008
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !2008
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !2009  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.u = load i8, ptr %i.t, align 8, !tbaa !2009
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !1357
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !1357
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split7:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split6:                                          ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split5:                                          ; preds = %bb.c
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split4:                                          ; preds = %bb.c
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split9:                                          ; preds = %bb.c
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split8:                                          ; preds = %bb.c
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit: ; preds = %bb.c
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.split9, %.split8, %.split7, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratoreqERKSI_.exit
  %i.aw = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %0, ptr %2, align 8, !tbaa !2076
  %i.ax = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_SA_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !2087
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !2083
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.az) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.i
  %i.be = sub i64 %i.az, %spec.select.i
end_hunk_0
