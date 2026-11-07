Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/websocket_2_handshaking?download=true
inline.NumInlined: 7371
inline.NumDeleted: 3125
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5boost5beast4http10serializerILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEE8do_visitILm3ENS1_6detail17write_some_lambdaINS0_12basic_streamINS_4asio2ip3tcpENSF_15any_io_executorENS0_21unlimited_rate_policyEEEEEEEvRNS_6system10error_codeERT0_:bb.a
  %.not.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i, %.01022.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.preheader.i.i.i
  %.01022.i.lcssa.i.i = phi i64 [ %i.d, %.lr.ph.split.preheader.i.i.i ], [ %.01022.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  %.lcssa9.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i ], [ %i.p, %.lr.ph.split.i.i.i ]
  %.lcssa.i.i = phi ptr [ %i.l, %.lr.ph.split.preheader.i.i.i ], [ %i.q, %.lr.ph.split.i.i.i ]
  %.pn.i.i.lcssa.i.i = phi i64 [ %i.m, %.lr.ph.split.preheader.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %.lr.ph.split.i.i.i ]
  store ptr %.lcssa.i.i, ptr %i.g, align 8, !tbaa !749
  %i.r = add i64 %.lcssa9.i.i, %.01022.i.lcssa.i.i ; 2 uses
  store i64 %i.r, ptr %i.e, align 8, !tbaa !748
  %i.s = sub i64 %.01022.i.lcssa.i.i, %.pn.i.i.lcssa.i.i ; 2 uses
  store i64 %i.s, ptr %i.f, align 8, !tbaa !750
  br label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRSR_EEEvDpOT0_.exit

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.t = sub nuw i64 %.01022.i.i.i, %.sroa.4.0.copyload.i.i.i.i
  %i.u = add i64 %.sroa.4.0.copyload.i.i.i.i, %i.p ; 3 uses
  store i64 %i.u, ptr %i.e, align 8, !tbaa !748
  %.not27.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not27.i.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !40

..loopexit_crit_edge.i.i.i:                       ; preds = %bb.c, %bb.b
  %i.v = phi i64 [ %i.m, %bb.b ], [ %i.u, %bb.c ]
  %.lcssa8.i.i = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ]
  store ptr %.lcssa8.i.i, ptr %i.g, align 8, !tbaa !749
  br label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRSR_EEEvDpOT0_.exit

_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm3EJRmRSR_EEEvDpOT0_.exit: ; preds = %bb.a, %.thread.i.i.i, %..loopexit_crit_edge.i.i.i
  %i.w = phi i64 [ 0, %bb.a ], [ %i.s, %.thread.i.i.i ], [ 0, %..loopexit_crit_edge.i.i.i ]
  %i.x = phi i64 [ 0, %bb.a ], [ %i.r, %.thread.i.i.i ], [ %i.v, %..loopexit_crit_edge.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 3, ptr %i.y, align 8, !tbaa !542
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 1, ptr %i.z, align 8, !tbaa !549
  %i.aa = load ptr, ptr %2, align 8, !tbaa !579, !nonnull !117, !align !141
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !92 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 1024 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %3, align 8, !tbaa !753, !alias.scope !2750
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.x, ptr %i.ae, align 8, !tbaa !754, !alias.scope !2750
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.af, align 8, !alias.scope !2750
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.c, ptr %i.ag, align 8, !alias.scope !2750
  store ptr %i.a, ptr %4, align 8, !tbaa !753, !alias.scope !2751
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.ah, align 8, !tbaa !754, !alias.scope !2751
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !755
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEEE4initINSC_14const_iteratorEEEvT_SH_(ptr noundef nonnull align 8 dereferenceable(1040) %5, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %3, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !481
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !580
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !757
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 1032
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !758
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = call noundef i64 @_ZN5boost4asio6detail10socket_ops9sync_sendEihPK5iovecmibRNS_6system10error_codeE(i32 noundef %i.aj, i8 noundef zeroext %i.al, ptr noundef nonnull %5, i64 noundef %i.am, i32 noundef 0, i1 noundef zeroext %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !550
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost4asio10read_untilINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEmRT_T0_St17basic_string_viewIcSB_ERNS_6system10error_codeENS0_10constraintIXsr20is_dynamic_buffer_v2ISG_EE5valueEiE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 dead_on_return %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::length_error", align 8 ; 5 uses
  %7 = alloca %"class.boost::asio::const_buffer", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %2
  %i.e = icmp samesign eq i64 %2, 0
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.024 = phi i64 [ 0, %bb.a ], [ %.125, %.backedge.backedge ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.g = load i64, ptr %i.a, align 8, !tbaa !2762 ; 7 uses
  %.not.i = icmp eq i64 %i.g, -1                  ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !2763  ; 4 uses
  %.pre199 = load i64, ptr %i.b, align 8, !tbaa !2764 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !85   ; 4 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.pre199, i64 %i.i) ; 4 uses
  %i.j = call i64 @llvm.umin.i64(i64 %.sroa.speculated.i, i64 %i.g) ; 14 uses
  %spec.select = select i1 %.not.i, i64 %.sroa.speculated.i, i64 %i.g
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.k = load ptr, ptr %.pre, align 8             ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.k ; 4 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  store i64 %i.j, ptr %i.c, align 8
  %.not3.i = icmp eq i64 %i.j, 0
  %spec.select.i.idx.sroa.sel = select i1 %.not3.i, ptr %scevgep, ptr %7 ; 5 uses
  %i.l = icmp sgt i64 %.024, 0
  br i1 %i.l, label %.preheader.i62, label %bb.c

.preheader.i62:                                   ; preds = %.backedge
  %i.m = icmp sgt i64 %i.j, %.024
  br i1 %i.m, label %._crit_edge63.i, label %.lr.ph62.i

._crit_edge63.i.loopexit:                         ; preds = %bb.b
  %.sroa.077.0.copyload79.le = load ptr, ptr %i.u, align 8, !tbaa !246
  br label %._crit_edge63.i

._crit_edge63.i:                                  ; preds = %._crit_edge63.i.loopexit, %.preheader.i62
  %.sroa.077.4 = phi ptr [ %spec.select.i.i, %.preheader.i62 ], [ %.sroa.077.0.copyload79.le, %._crit_edge63.i.loopexit ]
  %.sroa.780.4 = phi i64 [ %i.j, %.preheader.i62 ], [ %.sroa.780.0.copyload84, %._crit_edge63.i.loopexit ]
  %.sroa.18.4 = phi ptr [ %spec.select.i.idx.sroa.sel, %.preheader.i62 ], [ %i.u, %._crit_edge63.i.loopexit ]
  %i.n = phi i64 [ 0, %.preheader.i62 ], [ %i.s, %._crit_edge63.i.loopexit ]
  %.024.lcssa.i = phi i64 [ %.024, %.preheader.i62 ], [ %i.v, %._crit_edge63.i.loopexit ] ; 2 uses
  %i.o = add i64 %.024.lcssa.i, %i.n
  br label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit

.lr.ph62.i:                                       ; preds = %.preheader.i62, %bb.b
  %i.p = phi ptr [ %i.u, %bb.b ], [ %spec.select.i.idx.sroa.sel, %.preheader.i62 ] ; 3 uses
  %i.q = phi i64 [ %i.s, %bb.b ], [ 0, %.preheader.i62 ]
  %i.r = phi i64 [ %.sroa.780.0.copyload84, %bb.b ], [ %i.j, %.preheader.i62 ] ; 2 uses
  %.02461.i = phi i64 [ %i.v, %bb.b ], [ %.024, %.preheader.i62 ]
  %i.s = add i64 %i.r, %i.q                       ; 3 uses
  %i.t = icmp eq ptr %i.p, %7
  br i1 %i.t, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph62.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = sub nsw i64 %.02461.i, %i.r              ; 3 uses
  %.sroa.780.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.780.0.copyload84 = load i64, ptr %.sroa.780.0..sroa_idx83, align 8, !tbaa !81 ; 3 uses
  %i.w = icmp sgt i64 %.sroa.780.0.copyload84, %i.v
  br i1 %i.w, label %._crit_edge63.i.loopexit, label %.lr.ph62.i

bb.c:                                             ; preds = %.backedge
  %i.x = icmp slt i64 %.024, 0
  br i1 %i.x, label %.lr.ph.i, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.y = sub nsw i64 0, %.024
  br label %bb.d

._crit_edge.i:                                    ; preds = %.loopexit.i60
  %i.z = sub i64 %i.af, %i.ae
  %i.aa = sub nuw i64 %i.aj, %i.ae
  br label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit

bb.d:                                             ; preds = %.loopexit.i60, %.lr.ph.i
  %.sroa.077.2 = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %.sroa.077.3, %.loopexit.i60 ] ; 2 uses
  %.sroa.780.2 = phi i64 [ %i.j, %.lr.ph.i ], [ %.sroa.780.3, %.loopexit.i60 ] ; 2 uses
  %.sroa.18.2 = phi ptr [ %spec.select.i.idx.sroa.sel, %.lr.ph.i ], [ %.sroa.18.3, %.loopexit.i60 ] ; 2 uses
  %i.ab = phi ptr [ %spec.select.i.idx.sroa.sel, %.lr.ph.i ], [ %i.ai, %.loopexit.i60 ] ; 3 uses
  %i.ac = phi i64 [ 0, %.lr.ph.i ], [ %i.af, %.loopexit.i60 ]
  %.02255.i = phi i64 [ %i.y, %.lr.ph.i ], [ %i.ae, %.loopexit.i60 ]
  %i.ad = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %.loopexit.i60 ] ; 3 uses
  %i.ae = sub nuw nsw i64 %.02255.i, %i.ad        ; 4 uses
  %i.af = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.ag = icmp eq ptr %i.ab, %7
  br i1 %i.ag, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.d, %bb.e
  %.0.i59 = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %bb.d ] ; 3 uses
  %.not33.i = icmp eq ptr %.0.i59, %7
  br i1 %.not33.i, label %.loopexit.i60, label %bb.e

bb.e:                                             ; preds = %.preheader42.i
  %i.ah = getelementptr inbounds i8, ptr %.0.i59, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.0.i59, i64 -8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !81 ; 3 uses
  %.not34.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not34.i, label %.preheader42.i, label %.thread40.i

.thread40.i:                                      ; preds = %bb.e
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ah, align 8, !tbaa !246
  br label %.loopexit.i60

.loopexit.i60:                                    ; preds = %.preheader42.i, %.thread40.i
  %.sroa.077.3 = phi ptr [ %.sroa.0.0.copyload.i, %.thread40.i ], [ %.sroa.077.2, %.preheader42.i ] ; 2 uses
  %.sroa.780.3 = phi i64 [ %.sroa.4.0.copyload.i, %.thread40.i ], [ %.sroa.780.2, %.preheader42.i ] ; 2 uses
  %.sroa.18.3 = phi ptr [ %i.ah, %.thread40.i ], [ %.sroa.18.2, %.preheader42.i ] ; 2 uses
  %i.ai = phi ptr [ %i.ah, %.thread40.i ], [ %i.ab, %.preheader42.i ]
  %i.aj = phi i64 [ %.sroa.4.0.copyload.i, %.thread40.i ], [ %i.ad, %.preheader42.i ] ; 3 uses
  %.not.i61 = icmp ult i64 %i.aj, %i.ae
  br i1 %.not.i61, label %bb.d, label %._crit_edge.i, !llvm.loop !2752

_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit: ; preds = %bb.d, %.lr.ph62.i, %._crit_edge.i, %._crit_edge63.i, %bb.c
  %.sroa.077.5 = phi ptr [ %.sroa.077.4, %._crit_edge63.i ], [ %spec.select.i.i, %bb.c ], [ %.sroa.077.3, %._crit_edge.i ], [ null, %.lr.ph62.i ], [ %.sroa.077.2, %bb.d ]
  %.sroa.780.5 = phi i64 [ %.sroa.780.4, %._crit_edge63.i ], [ %i.j, %bb.c ], [ %.sroa.780.3, %._crit_edge.i ], [ 0, %.lr.ph62.i ], [ %.sroa.780.2, %bb.d ]
  %.sroa.23.1 = phi i64 [ %i.o, %._crit_edge63.i ], [ 0, %bb.c ], [ %i.z, %._crit_edge.i ], [ %i.s, %.lr.ph62.i ], [ %i.af, %bb.d ] ; 4 uses
  %.sroa.18.5 = phi ptr [ %.sroa.18.4, %._crit_edge63.i ], [ %spec.select.i.idx.sroa.sel, %bb.c ], [ %.sroa.18.3, %._crit_edge.i ], [ %scevgep, %.lr.ph62.i ], [ %.sroa.18.2, %bb.d ]
  %.sroa.10.0 = phi i64 [ %.024.lcssa.i, %._crit_edge63.i ], [ 0, %bb.c ], [ %i.aa, %._crit_edge.i ], [ 0, %.lr.ph62.i ], [ 0, %bb.d ]
  %.not6088.i = icmp eq i64 %.sroa.23.1, %i.j
  br i1 %.not6088.i, label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit
  br i1 %i.e, label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.ak = sub i64 %i.j, %.sroa.23.1
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.ak
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i, %.preheader.preheader.i
  %indvars.iv.i = phi ptr [ %scevgep.i, %.preheader.preheader.i ], [ %scevgep106.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i ] ; 2 uses
  %.sroa.21.093.i = phi i64 [ %.sroa.23.1, %.preheader.preheader.i ], [ %i.av, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i ] ; 5 uses
  %.sroa.1544.092.i = phi ptr [ %.sroa.18.5, %.preheader.preheader.i ], [ %.sroa.1544.2.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i ] ; 4 uses
  %.sroa.025.091.i = phi ptr [ %.sroa.077.5, %.preheader.preheader.i ], [ %.sroa.025.1.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i ] ; 3 uses
  %.sroa.7.090.i = phi i64 [ %.sroa.780.5, %.preheader.preheader.i ], [ %.sroa.7.1.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i ] ; 4 uses
  %.sroa.10.089.i = phi i64 [ %.sroa.10.0, %.preheader.preheader.i ], [ %.sroa.10.1.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i, %.preheader.i
  %.078.i = phi ptr [ %3, %.preheader.i ], [ %i.at, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i ] ; 2 uses
  %.sroa.0.077.i = phi ptr [ %.sroa.025.091.i, %.preheader.i ], [ %.sroa.0.1.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i ] ; 3 uses
  %.sroa.6.076.i = phi i64 [ %.sroa.7.090.i, %.preheader.i ], [ %.sroa.6.1.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i ] ; 3 uses
  %.sroa.8.075.i = phi i64 [ %.sroa.10.089.i, %.preheader.i ], [ %.sroa.8.1.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i ] ; 2 uses
  %.sroa.1223.074.i = phi ptr [ %.sroa.1544.092.i, %.preheader.i ], [ %.sroa.1223.2.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i ] ; 3 uses
  %.sroa.16.073.i = phi i64 [ %.sroa.21.093.i, %.preheader.i ], [ %i.ap, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i ] ; 2 uses
  %i.al = icmp eq i64 %.sroa.16.073.i, %i.j
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not9.i = icmp eq ptr %indvars.iv.i, %3
  br i1 %.not9.i, label %.loopexit.i, label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread138

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.077.i, i64 %.sroa.8.075.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !84, !noalias !2765
  %i.ao = load i8, ptr %.078.i, align 1, !tbaa !84, !noalias !2765
  %.not.i29 = icmp eq i8 %i.an, %i.ao
  br i1 %.not.i29, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add i64 %.sroa.16.073.i, 1
  %i.aq = add i64 %.sroa.8.075.i, 1               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aq, %.sroa.6.076.i
  br i1 %.not.i.i.i, label %bb.j, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.1223.074.i, i64 16 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %.sroa.1223.074.i, %7
  br i1 %.not13.i.i.i, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.sroa.1223.1.i = phi ptr [ %i.as, %bb.k ], [ %i.ar, %bb.j ] ; 5 uses
  %.sroa.6.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %.sroa.1223.1.i, i64 8
  %.sroa.6.0.copyload20.i = load i64, ptr %.sroa.6.0..sroa_idx19.i, align 8, !tbaa !81, !noalias !2765 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %.sroa.6.0.copyload20.i, 0
  br i1 %.not2.i.i.i, label %bb.k, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.loopexit.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.1223.1.i, i64 16 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %.sroa.1223.1.i, %7
  br i1 %.not1.i.i.i, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2755

_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.loopexit.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %.sroa.1223.2.ph.i = phi ptr [ %i.as, %bb.k ], [ %.sroa.1223.1.i, %.lr.ph.i.i.i ]
  %.sroa.0.0.copyload18.le.i = load ptr, ptr %.sroa.1223.1.i, align 8, !tbaa !246, !noalias !2765
  br label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i

_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i: ; preds = %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.loopexit.i, %bb.j, %bb.i
  %.sroa.1223.2.i = phi ptr [ %i.ar, %bb.j ], [ %.sroa.1223.074.i, %bb.i ], [ %.sroa.1223.2.ph.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.loopexit.i ]
  %.sroa.8.1.i = phi i64 [ 0, %bb.j ], [ %i.aq, %bb.i ], [ 0, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.loopexit.i ]
  %.sroa.6.1.i = phi i64 [ %.sroa.6.076.i, %bb.j ], [ %.sroa.6.076.i, %bb.i ], [ %.sroa.6.0.copyload20.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.loopexit.i ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.077.i, %bb.j ], [ %.sroa.0.077.i, %bb.i ], [ %.sroa.0.0.copyload18.le.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.loopexit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.078.i, i64 1 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit, label %bb.f, !llvm.loop !2756

.loopexit.i:                                      ; preds = %bb.h, %bb.g
  %i.av = add i64 %.sroa.21.093.i, 1              ; 2 uses
  %i.aw = add i64 %.sroa.10.089.i, 1              ; 2 uses
  %.not.i.i10.i = icmp eq i64 %i.aw, %.sroa.7.090.i
  br i1 %.not.i.i10.i, label %bb.l, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i

bb.l:                                             ; preds = %.loopexit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.1544.092.i, i64 16 ; 2 uses
  %.not13.i.i11.i = icmp eq ptr %.sroa.1544.092.i, %7
  br i1 %.not13.i.i11.i, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i, label %.lr.ph.i.i12.i

.lr.ph.i.i12.i:                                   ; preds = %bb.l, %bb.m
  %.sroa.1544.1.i = phi ptr [ %i.ay, %bb.m ], [ %i.ax, %bb.l ] ; 5 uses
  %.sroa.7.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %.sroa.1544.1.i, i64 8
  %.sroa.7.0.copyload34.i = load i64, ptr %.sroa.7.0..sroa_idx33.i, align 8, !tbaa !81, !noalias !2765 ; 2 uses
  %.not2.i.i13.i = icmp eq i64 %.sroa.7.0.copyload34.i, 0
  br i1 %.not2.i.i13.i, label %bb.m, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.loopexit.i

bb.m:                                             ; preds = %.lr.ph.i.i12.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.1544.1.i, i64 16 ; 2 uses
  %.not1.i.i14.i = icmp eq ptr %.sroa.1544.1.i, %7
  br i1 %.not1.i.i14.i, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.loopexit.i, label %.lr.ph.i.i12.i, !llvm.loop !2755

_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.loopexit.i: ; preds = %bb.m, %.lr.ph.i.i12.i
  %.sroa.1544.2.ph.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.1544.1.i, %.lr.ph.i.i12.i ]
  %.sroa.025.0.copyload28.le.i = load ptr, ptr %.sroa.1544.1.i, align 8, !tbaa !246, !noalias !2765
  br label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i

_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i: ; preds = %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.loopexit.i, %bb.l, %.loopexit.i
  %.sroa.10.1.i = phi i64 [ 0, %bb.l ], [ %i.aw, %.loopexit.i ], [ 0, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.loopexit.i ]
  %.sroa.7.1.i = phi i64 [ %.sroa.7.090.i, %bb.l ], [ %.sroa.7.090.i, %.loopexit.i ], [ %.sroa.7.0.copyload34.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.loopexit.i ]
  %.sroa.025.1.i = phi ptr [ %.sroa.025.091.i, %bb.l ], [ %.sroa.025.091.i, %.loopexit.i ], [ %.sroa.025.0.copyload28.le.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.loopexit.i ]
  %.sroa.1544.2.i = phi ptr [ %i.ax, %bb.l ], [ %.sroa.1544.092.i, %.loopexit.i ], [ %.sroa.1544.2.ph.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.loopexit.i ]
  %.not60.i = icmp eq i64 %i.av, %i.j
  %scevgep106.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  br i1 %.not60.i, label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread, label %.preheader.i, !llvm.loop !2757

_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit: ; preds = %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i, %.preheader.lr.ph.i
  %.sroa.15.0 = phi i64 [ %.sroa.23.1, %.preheader.lr.ph.i ], [ %.sroa.21.093.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit.i ] ; 2 uses
  %.not.a = icmp eq i64 %.sroa.15.0, %i.j
  br i1 %.not.a, label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread, label %bb.n

_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread138: ; preds = %bb.g
  %.not = icmp eq i64 %.sroa.21.093.i, %i.j
  br i1 %.not, label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread, label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread.a

bb.n:                                             ; preds = %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.az = add i64 %.sroa.15.0, %2
  br label %.loopexit.sink.split

_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread: ; preds = %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcEppEv.exit15.i, %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit, %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread138, %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit
  br label %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread.a

_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread.a: ; preds = %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread138, %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread
  %.125 = phi i64 [ %i.j, %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread ], [ %.sroa.21.093.i, %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread138 ]
  %i.ba = icmp eq i64 %spec.select, %.pre199
  br i1 %i.ba, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread.a
  %i.bb = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.p   ; 4 uses

.noexc.i:                                         ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !147, !noalias !2766
  %i.be = and i64 %i.bd, -2
  %switch.i.i.i.i = icmp eq i64 %i.be, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #39
  unreachable

_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit: ; preds = %.noexc.i
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !75, !noalias !2766
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !2766
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(52) %i.bb, i32 noundef 3) #38, !noalias !2766, !inline_history !30
  br i1 %i.bk, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %bb.q

_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread: ; preds = %.noexc.i, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread
  %i.bl = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit ]
  store i64 3, ptr %4, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bb, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !84
  store i64 %i.bl, ptr %i.f, align 8, !tbaa !81
  br label %.loopexit.sink.split

bb.r:                                             ; preds = %_ZN5boost4asio6detail14partial_searchINS0_16buffers_iteratorINS0_12const_bufferEcEEPKcEESt4pairIT_bES9_S9_T0_SB_.exit.thread.a
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.k, %i.bm
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.r
  %i.bo = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !84
  br label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bq = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %.sroa.speculated.i34 = call noundef i64 @llvm.umin.i64(i64 %.pre199, i64 %i.bq)
  %.pre-phi. = select i1 %.not.i, i64 %.sroa.speculated.i, i64 %i.g ; 2 uses
  %i.br = sub i64 %.sroa.speculated.i34, %.pre-phi.
  %i.bs = sub i64 %.pre199, %.pre-phi.
  %i.bt = call i64 @llvm.umax.i64(i64 %i.br, i64 512)
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bt)
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bu, i64 65536) ; 5 uses
  br i1 %.not.i, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i: ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.bw = call i64 @llvm.usub.sat.i64(i64 %.pre199, i64 %i.i)
  %i.bx = icmp ult i64 %i.bw, %i.bv
  br i1 %i.bx, label %bb.s, label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4growEm.exit

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i: ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.by = icmp ugt i64 %i.g, %.pre199
  %i.bz = sub i64 %.pre199, %i.g
  %i.ca = icmp ult i64 %i.bz, %i.bv
  %or.cond.i = or i1 %i.by, %i.ca
  br i1 %or.cond.i, label %bb.s, label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4growEm.exit

bb.s:                                             ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.130)
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %6) #40
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  resume { ptr, i32 } %i.cb

_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4growEm.exit: ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i
  %.0.i46144 = phi i64 [ %i.g, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i ], [ %.sroa.speculated.i, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i ] ; 2 uses
  %i.cc = add i64 %.0.i46144, %i.bv
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.pre, i64 noundef %i.cc, i8 noundef signext 0)
  %i.cd = load ptr, ptr %1, align 8, !tbaa !2763, !nonnull !117, !align !141 ; 2 uses
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !2764
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !85 ; 2 uses
  %.not.i.i50 = icmp eq i64 %i.cg, 0
  %i.ch = load ptr, ptr %i.cd, align 8
  %spec.select.i.i51 = select i1 %.not.i.i50, ptr null, ptr %i.ch
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.ce) ; 2 uses
  %spec.select.i2.i = call i64 @llvm.umin.i64(i64 %.0.i46144, i64 %i.ci) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select.i.i51, i64 %spec.select.i2.i
  %i.ck = sub nuw i64 %i.ci, %spec.select.i2.i
  %spec.select.i5.i53 = call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.bv)
  %i.cl = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !481
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !580
  %i.cq = call noundef i64 @_ZN5boost4asio6detail10socket_ops10sync_recv1EihPvmiRNS_6system10error_codeE(i32 noundef %i.cn, i8 noundef zeroext %i.cp, ptr noundef %i.cj, i64 noundef %spec.select.i5.i53, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.cr = sub i64 %i.bv, %i.cq                    ; 3 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !2763, !nonnull !117, !align !141 ; 2 uses
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !2762 ; 3 uses
  %.not.i.i55 = icmp eq i64 %i.ct, -1
  br i1 %.not.i.i55, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i57, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i56

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i57: ; preds = %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4growEm.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !85
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !2764
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.cv) ; 2 uses
  %i.cx = icmp ugt i64 %i.cr, %.sroa.speculated.i.i
  br i1 %i.cx, label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE6shrinkEm.exit, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit5.i

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i56: ; preds = %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4growEm.exit
  %i.cy = icmp ugt i64 %i.cr, %i.ct
  br i1 %i.cy, label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE6shrinkEm.exit, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit5.i

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit5.i: ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i56, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i57
  %.0.i3.i = phi i64 [ %i.ct, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i56 ], [ %.sroa.speculated.i.i, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i57 ]
  %i.cz = sub i64 %.0.i3.i, %i.cr
  br label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE6shrinkEm.exit

_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE6shrinkEm.exit: ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i57, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i56, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit5.i
  %i.da = phi i64 [ %i.cz, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit5.i ], [ 0, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.i57 ], [ 0, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i56 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef %i.da, i8 noundef signext 0)
  %i.db = load i64, ptr %i.f, align 8, !tbaa !149 ; 2 uses
  %i.dc = and i64 %i.db, 1
  %.not.i.i58 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i58, label %_ZNK5boost6system10error_codecvbEv.exit.thread150, label %bb.v

bb.v:                                             ; preds = %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE6shrinkEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %_ZNK5boost6system10error_codecvbEv.exit, label %.loopexit.sink.split

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.v
  %i.de = load i32, ptr %4, align 8, !tbaa !479
  %.fr = freeze i32 %i.de
  %i.df = icmp eq i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br i1 %i.df, label %.backedge.backedge, label %.loopexit

.backedge.backedge:                               ; preds = %_ZNK5boost6system10error_codecvbEv.exit, %_ZNK5boost6system10error_codecvbEv.exit.thread150
  br label %.backedge, !llvm.loop !2760

_ZNK5boost6system10error_codecvbEv.exit.thread150: ; preds = %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE6shrinkEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %.backedge.backedge

.loopexit.sink.split:                             ; preds = %bb.v, %bb.q, %bb.n
  %.228156.ph = phi i64 [ %i.az, %bb.n ], [ 0, %bb.q ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK5boost6system10error_codecvbEv.exit, %.loopexit.sink.split
  %.228156 = phi i64 [ %.228156.ph, %.loopexit.sink.split ], [ 0, %_ZNK5boost6system10error_codecvbEv.exit ]
  ret i64 %.228156
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #38 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12length_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt12length_errorED2Ev) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #38
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
