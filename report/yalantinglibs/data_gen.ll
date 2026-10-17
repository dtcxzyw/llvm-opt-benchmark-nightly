Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN4asio6detail8write_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEPKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISA_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SA_EENSP_ISR_EEST_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EclESK_mi:bb.a
  %or.cond.peel.i = and i1 %i.o, %i.p
  br i1 %or.cond.peel.i, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.q = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %.024.i = phi i64 [ %i.s, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %.017.idx22.i = phi i64 [ %.017.add.i, %bb.f ], [ %.017.add.peel.i, %bb.d ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.017.idx22.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.017.ptr.i, align 8, !tbaa !376, !noalias !6106
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx10.i, align 8, !tbaa !411, !noalias !6106 ; 2 uses
  %spec.select.i7.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i, i64 %.024.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.q ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select.i7.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.s = sub i64 %.024.i, %spec.select.i7.i       ; 2 uses
  %.not.not.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.not.not.i, label %.lr.ph._crit_edge.i, label %bb.e

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %i.q, 1                  ; 2 uses
  store i64 %i.t, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph._crit_edge.i
  %i.u = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.t, %bb.e ] ; 2 uses
  %.017.add.i = add nsw i64 %.017.idx22.i, 16     ; 2 uses
  %i.v = icmp ne i64 %.017.add.i, 48
  %i.w = icmp ne i64 %i.s, 0
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp ult i64 %i.u, 3
  %i.y = select i1 %or.cond.i, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit, !llvm.loop !105

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit: ; preds = %bb.f, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !1695, !nonnull !366, !align !367
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.z, ptr %5, align 8, !tbaa !1190
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1697
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !1835
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !1836
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.af, align 8, !tbaa !796
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55, !inline_history !6101 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !797
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 0, ptr %i.ai, align 8, !tbaa !1837
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.d, ptr %i.aj, align 8, !tbaa !1189
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !tbaa.struct !1838
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i32 %4, ptr %i.al, align 8, !tbaa !1827
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1432
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !1432
  call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENKUlSX_E_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 0, ptr nonnull %i.ah, i64 noundef 0, i32 noundef 1), !inline_history !6102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.k

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12: ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1839
  %i.ar = add i64 %i.aq, %3                       ; 3 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !1839
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1828 ; 5 uses
  %.idx.i10 = shl nsw i64 %i.at, 4                ; 2 uses
  %i.au = icmp ne i64 %i.at, 3
  %i.av = icmp ne i64 %3, 0                       ; 2 uses
  %i.aw = and i1 %i.av, %i.au
  br i1 %i.aw, label %.lr.ph.i14, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

.lr.ph.i14:                                       ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.promoted19.i = load i64, ptr %i.ax, align 8, !tbaa !1830 ; 2 uses
  %.012.ptr.i.peel = getelementptr i8, ptr %0, i64 %.idx.i10
  %.sroa.4.0..sroa_idx.i15.peel = getelementptr i8, ptr %.012.ptr.i.peel, i64 16
  %.sroa.4.0.copyload.i16.peel = load i64, ptr %.sroa.4.0..sroa_idx.i15.peel, align 8, !tbaa !411
  %i.ay = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i16.peel, i64 %.promoted19.i) ; 2 uses
  %i.az = icmp ult i64 %3, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i14
  %i.ba = sub nuw i64 %3, %i.ay                   ; 2 uses
  %i.bb = add i64 %i.at, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.as, align 8, !tbaa !1828
  %.012.add.i.peel = add nsw i64 %.idx.i10, 16    ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !1830
  %i.bc = icmp ne i64 %.012.add.i.peel, 48
  %i.bd = icmp ne i64 %i.ba, 0
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread: ; preds = %bb.g
  %i.bf = icmp ne i32 %1, 0
  br label %bb.i

.peel.next:                                       ; preds = %bb.g, %bb.h
  %.018.i = phi i64 [ %i.bk, %bb.h ], [ %i.ba, %bb.g ] ; 3 uses
  %.012.idx17.i = phi i64 [ %.012.add.i, %bb.h ], [ %.012.add.i.peel, %bb.g ] ; 2 uses
  %i.bg = phi i64 [ %i.bl, %bb.h ], [ %i.bb, %bb.g ] ; 2 uses
  %.012.ptr.i = getelementptr i8, ptr %0, i64 %.012.idx17.i
  %.sroa.4.0..sroa_idx.i15 = getelementptr i8, ptr %.012.ptr.i, i64 16
  %.sroa.4.0.copyload.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !411 ; 2 uses
  %i.bh = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i16
  br i1 %i.bh, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i14
  %i.bi = phi i64 [ %i.at, %.lr.ph.i14 ], [ %i.bg, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted19.i, %.lr.ph.i14 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i14 ], [ %.018.i, %.peel.next ]
  %i.bj = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.bj, ptr %i.ax, align 8, !tbaa !1830
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.bk = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i16 ; 2 uses
  %i.bl = add i64 %i.bg, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.as, align 8, !tbaa !1828
  %.012.add.i = add nsw i64 %.012.idx17.i, 16     ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !1830
  %i.bm = icmp ne i64 %.012.add.i, 48
  %i.bn = icmp ne i64 %i.bk, 0
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit, !llvm.loop !6103

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12, %.thread.i
  %i.bp = phi i64 [ %i.bi, %.thread.i ], [ %i.at, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12 ], [ %i.bl, %bb.h ]
  %i.bq = icmp ne i32 %1, 0                       ; 2 uses
  %or.cond.not = or i1 %i.bq, %i.av
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.br = phi i1 [ %i.bf, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ], [ %i.bq, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ]
  %i.bs = phi i64 [ %i.bb, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ], [ %i.bp, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !1840
  %.not = icmp uge i64 %i.ar, %i.bu
  %or.cond.not43 = or i1 %.not, %i.br
  br i1 %or.cond.not43, label %bb.j, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, !llvm.loop !6104

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1568 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %1, ptr %i.bx, align 8, !tbaa !280
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !759
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %i.ar, ptr %i.by, align 8, !tbaa !411
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !1108 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr nonnull %i.bz), !inline_history !6105
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENKUlSX_E_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %6 = alloca %"class.asio::detail::write_op.1780", align 8 ; 17 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !1835
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a, %bb.ae
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ae ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6112, !nonnull !366, !align !367
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1841
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i ; 2 uses
  br label %.outer.split.i.preheader.i.i

.outer.split.i.preheader.i.i:                     ; preds = %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %bb.b
  %.0.ph30.i.i.i = phi ptr [ %i.k, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ %i.c, %bb.b ]
  %.0.ph.i11.i.i = phi ptr [ %i.p, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.6.0.ph28.i.i.i = phi i64 [ %i.q, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ 8192, %bb.b ] ; 5 uses
  br label %.outer.split.i.i.i

.outer.split.i.i.i:                               ; preds = %bb.c, %.outer.split.i.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.k, %bb.c ], [ %.0.ph30.i.i.i, %.outer.split.i.preheader.i.i ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i, label %bb.c

bb.c:                                             ; preds = %.outer.split.i.i.i
  %.sroa.4.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !411 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.l = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.l, label %.outer.split.i.i.i, label %bb.d, !llvm.loop !106

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload.le.i.i.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !376 ; 2 uses
  %i.m = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.m, label %bb.e, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.k, %i.j
  %.not13.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i, 8192
  %or.cond24.i.i.i = and i1 %i.n, %.not13.i.i.i
  br i1 %or.cond24.i.i.i, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.o = call i64 @llvm.umin.i64(i64 %.sroa.6.0.ph28.i.i.i, i64 %.sroa.4.0.copyload.i.i.i)
  %.fr.i.i = freeze i64 %i.o                      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.ph.i11.i.i, ptr align 1 %.sroa.020.0.copyload.le.i.i.i, i64 %.fr.i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ph.i11.i.i, i64 %.fr.i.i
  %i.q = sub i64 %.sroa.6.0.ph28.i.i.i, %.fr.i.i  ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not12.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, label %.outer.split.i.preheader.i.i, !llvm.loop !106

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i: ; preds = %.outer.split.i.i.i
  %i.r = sub i64 8192, %.sroa.6.0.ph28.i.i.i
  %i.s = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.s, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55
  store i32 0, ptr %i.f, align 8, !tbaa !280
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.t, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.u, align 4, !tbaa !1836
  br label %bb.p

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.e, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %.sroa.020.0.i.i12.i = phi ptr [ %i.a, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.020.0.copyload.le.i.i.i, %bb.e ], [ %i.a, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %.sroa.4.0.i.i11.i = phi i64 [ %i.r, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.e ], [ 8192, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %i.v = call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine8do_writeEPvm to i64), i64 0, ptr noundef %.sroa.020.0.i.i12.i, i64 noundef %.sroa.4.0.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.v, ptr %i.w, align 4, !tbaa !1836
  switch i32 %i.v, label %bb.p [
    i32 -2, label %bb.f
    i32 -1, label %bb.l
    i32 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !6112, !nonnull !366, !align !367 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1613 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1711
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1614
  %i.ae = trunc i64 %i.z to i32
  %i.af = call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae)
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !1613 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1614
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i.i
  %i.ak = sub i64 %i.ah, %spec.select.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !6112, !nonnull !366, !align !367 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !376
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 %i.ak, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !411
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !411
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !876, !range !414, !noundef !366
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !871 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !886, !nonnull !366, !align !367
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !876
  %.pre72 = load ptr, ptr %i.d, align 8, !tbaa !6112
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.x, %bb.i ], [ %.pre72, %bb.j ] ; 2 uses
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !411
  %i.ba = load ptr, ptr %0, align 8, !tbaa !6113, !nonnull !366, !align !367 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !376
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !411
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !1208
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINS4_6streamIRSB_EESt5arrayISE_Lm3EEPKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSQ_11async_writeISK_SM_EEN12async_simple4coro4LazyISU_EERT_T0_EUlOS10_E_SK_EENSY_IS10_EES12_RT1_ENKUlS10_E_clINSQ_21callback_awaitor_baseISU_NSQ_16callback_awaitorISU_EEE15awaitor_handlerEEEDaS10_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS10_iRS12_RKS16_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bg), !inline_history !6107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.ag

bb.k:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !871
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINSB_6streamIRSI_EESt5arrayISL_Lm3EEPKSL_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSX_11async_writeISR_ST_EEN12async_simple4coro4LazyIS11_EERT_T0_EUlOS17_E_SR_EENS15_IS17_EES19_RT1_ENKUlS17_E_clINSX_21callback_awaitor_baseIS11_NSX_16callback_awaitorIS11_EEE15awaitor_handlerEEEDaS17_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES18_RKS19_(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bi), !inline_history !6108
  br label %bb.ag

bb.l:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !6112, !nonnull !366, !align !367 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 144 ; 3 uses
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %i.bl, align 8, !tbaa !411
  %i.bm = icmp eq i64 %.sroa.0.0.copyload.i.i.i12, -9223372036854775808
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 152 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !876, !range !414, !noundef !366
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !871 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !886, !nonnull !366, !align !367
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bv = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !876
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !6112
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16: ; preds = %bb.m, %bb.n
  %i.bw = phi ptr [ %i.bj, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  store i64 9223372036854775807, ptr %i.bl, align 8, !tbaa !411
  %i.bx = load ptr, ptr %0, align 8, !tbaa !6113, !nonnull !366, !align !367 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 280 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1711
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !1712
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 288 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1713
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = call i32 @BIO_read(ptr noundef %i.ca, ptr noundef %i.cb, i32 noundef %i.ce)
  %narrow.i17 = call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %i.cg = zext nneg i32 %narrow.i17 to i64
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1712 ; 2 uses
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !1713
  %spec.select.i.i18 = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.bx, ptr %6, align 8, !tbaa !1190
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !376
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %spec.select.i.i18, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !411
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ck, align 8, !tbaa !1716
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cn = load <2 x ptr>, ptr %0, align 8, !tbaa !376
  store <2 x ptr> %i.cn, ptr %i.cm, align 8, !tbaa !376
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !tbaa.struct !1842
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cq = load <2 x i32>, ptr %i.b, align 8, !tbaa !279
  store <2 x i32> %i.cq, ptr %i.cp, align 8, !tbaa !279
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !760
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !1837
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !1837
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1829, !nonnull !366, !align !367
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !1189
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, ptr noundef nonnull align 8 dereferenceable(80) %i.cy, i64 80, i1 false), !tbaa.struct !1838
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.db = load i32, ptr %i.da, align 8, !tbaa !1827
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !1827
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1432
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !1432
  store i32 1, ptr %i.cl, align 8, !tbaa !1844
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %spec.select.i1.i.i.i = call i64 @llvm.umin.i64(i64 %spec.select.i.i18, i64 65536)
  store ptr %i.ch, ptr %5, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.select.i1.i.i.i, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.bx, align 8, !tbaa !1208
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS_15const_buffers_1ENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS4_INSE_6streamIRS9_EESt5arrayISJ_Lm3EEPKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNST_11async_writeISO_SQ_EEN12async_simple4coro4LazyISX_EERT_T0_EUlOS13_E_SO_EENS11_IS13_EES15_RT1_ENKUlS13_E_clINST_21callback_awaitor_baseISX_NST_16callback_awaitorISX_EEE15awaitor_handlerEEEDaS13_EUlDpOT_E_EEEEEES8_EEvRNS1_24base_implementation_typeERKS13_iRS15_RKS19_(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.dj), !inline_history !6109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %i.bk, align 8, !tbaa !871
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
end_hunk_0
begin_hunk_1_@_ZN4asio6detail8write_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEPKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISA_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SA_EENSP_ISR_EEST_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EclESK_mi:bb.a
.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.q = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %.024.i = phi i64 [ %i.s, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %.017.idx22.i = phi i64 [ %.017.add.i, %bb.f ], [ %.017.add.peel.i, %bb.d ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.017.idx22.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.017.ptr.i, align 8, !tbaa !376, !noalias !6194
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx10.i, align 8, !tbaa !411, !noalias !6194 ; 2 uses
  %spec.select.i7.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i, i64 %.024.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.q ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select.i7.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.s = sub i64 %.024.i, %spec.select.i7.i       ; 2 uses
  %.not.not.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.not.not.i, label %.lr.ph._crit_edge.i, label %bb.e

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %i.q, 1                  ; 2 uses
  store i64 %i.t, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph._crit_edge.i
  %i.u = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.t, %bb.e ] ; 2 uses
  %.017.add.i = add nsw i64 %.017.idx22.i, 16     ; 2 uses
  %i.v = icmp ne i64 %.017.add.i, 48
  %i.w = icmp ne i64 %i.s, 0
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp ult i64 %i.u, 3
  %i.y = select i1 %or.cond.i, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit, !llvm.loop !105

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit: ; preds = %bb.f, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !1695, !nonnull !366, !align !367
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.z, ptr %5, align 8, !tbaa !1190
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1697
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !1891
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !1892
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.af, align 8, !tbaa !796
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55, !inline_history !6189 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !797
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 0, ptr %i.ai, align 8, !tbaa !1893
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.d, ptr %i.aj, align 8, !tbaa !1189
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !tbaa.struct !1838
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i32 %4, ptr %i.al, align 8, !tbaa !1884
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !1571
  call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENUlSX_E0_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(216) %5, i32 0, ptr nonnull %i.ah, i64 noundef 0, i32 noundef 1), !inline_history !6190
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.k

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12: ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1839
  %i.aq = add i64 %i.ap, %3                       ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !1839
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1828 ; 5 uses
  %.idx.i10 = shl nsw i64 %i.as, 4                ; 2 uses
  %i.at = icmp ne i64 %i.as, 3
  %i.au = icmp ne i64 %3, 0                       ; 2 uses
  %i.av = and i1 %i.au, %i.at
  br i1 %i.av, label %.lr.ph.i14, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

.lr.ph.i14:                                       ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.promoted19.i = load i64, ptr %i.aw, align 8, !tbaa !1830 ; 2 uses
  %.012.ptr.i.peel = getelementptr i8, ptr %0, i64 %.idx.i10
  %.sroa.4.0..sroa_idx.i15.peel = getelementptr i8, ptr %.012.ptr.i.peel, i64 16
  %.sroa.4.0.copyload.i16.peel = load i64, ptr %.sroa.4.0..sroa_idx.i15.peel, align 8, !tbaa !411
  %i.ax = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i16.peel, i64 %.promoted19.i) ; 2 uses
  %i.ay = icmp ult i64 %3, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i14
  %i.az = sub nuw i64 %3, %i.ax                   ; 2 uses
  %i.ba = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !1828
  %.012.add.i.peel = add nsw i64 %.idx.i10, 16    ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !1830
  %i.bb = icmp ne i64 %.012.add.i.peel, 48
  %i.bc = icmp ne i64 %i.az, 0
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread: ; preds = %bb.g
  %i.be = icmp ne i32 %1, 0
  br label %bb.i

.peel.next:                                       ; preds = %bb.g, %bb.h
  %.018.i = phi i64 [ %i.bj, %bb.h ], [ %i.az, %bb.g ] ; 3 uses
  %.012.idx17.i = phi i64 [ %.012.add.i, %bb.h ], [ %.012.add.i.peel, %bb.g ] ; 2 uses
  %i.bf = phi i64 [ %i.bk, %bb.h ], [ %i.ba, %bb.g ] ; 2 uses
  %.012.ptr.i = getelementptr i8, ptr %0, i64 %.012.idx17.i
  %.sroa.4.0..sroa_idx.i15 = getelementptr i8, ptr %.012.ptr.i, i64 16
  %.sroa.4.0.copyload.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !411 ; 2 uses
  %i.bg = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i16
  br i1 %i.bg, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i14
  %i.bh = phi i64 [ %i.as, %.lr.ph.i14 ], [ %i.bf, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted19.i, %.lr.ph.i14 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i14 ], [ %.018.i, %.peel.next ]
  %i.bi = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.bi, ptr %i.aw, align 8, !tbaa !1830
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.bj = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i16 ; 2 uses
  %i.bk = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.bk, ptr %i.ar, align 8, !tbaa !1828
  %.012.add.i = add nsw i64 %.012.idx17.i, 16     ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !1830
  %i.bl = icmp ne i64 %.012.add.i, 48
  %i.bm = icmp ne i64 %i.bj, 0
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit, !llvm.loop !6191

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12, %.thread.i
  %i.bo = phi i64 [ %i.bh, %.thread.i ], [ %i.as, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12 ], [ %i.bk, %bb.h ]
  %i.bp = icmp ne i32 %1, 0                       ; 2 uses
  %or.cond.not = or i1 %i.bp, %i.au
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bq = phi i1 [ %i.be, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ], [ %i.bp, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ]
  %i.br = phi i64 [ %i.ba, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ], [ %i.bo, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1840
  %.not = icmp uge i64 %i.aq, %i.bt
  %or.cond.not43 = or i1 %.not, %i.bq
  br i1 %or.cond.not43, label %bb.j, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, !llvm.loop !6192

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !6195, !nonnull !366, !align !367
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1119
  %i.by = tail call noundef zeroext i1 @_ZN12async_simple4Slot5clearENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, i64 noundef 1) ; 0 uses
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !1568 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %1, ptr %i.ca, align 8, !tbaa !280
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !759
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 %i.aq, ptr %i.cb, align 8, !tbaa !411
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !1108 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr nonnull %i.cc), !inline_history !6193
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENUlSX_E0_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %6 = alloca %"class.asio::detail::write_op.1831", align 8 ; 17 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !1891
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a, %bb.ae
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ae ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6201, !nonnull !366, !align !367
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1841
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i ; 2 uses
  br label %.outer.split.i.preheader.i.i

.outer.split.i.preheader.i.i:                     ; preds = %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %bb.b
  %.0.ph30.i.i.i = phi ptr [ %i.k, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ %i.c, %bb.b ]
  %.0.ph.i11.i.i = phi ptr [ %i.p, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.6.0.ph28.i.i.i = phi i64 [ %i.q, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ 8192, %bb.b ] ; 5 uses
  br label %.outer.split.i.i.i

.outer.split.i.i.i:                               ; preds = %bb.c, %.outer.split.i.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.k, %bb.c ], [ %.0.ph30.i.i.i, %.outer.split.i.preheader.i.i ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i, label %bb.c

bb.c:                                             ; preds = %.outer.split.i.i.i
  %.sroa.4.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !411 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.l = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.l, label %.outer.split.i.i.i, label %bb.d, !llvm.loop !106

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload.le.i.i.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !376 ; 2 uses
  %i.m = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.m, label %bb.e, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.k, %i.j
  %.not13.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i, 8192
  %or.cond24.i.i.i = and i1 %i.n, %.not13.i.i.i
  br i1 %or.cond24.i.i.i, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.o = call i64 @llvm.umin.i64(i64 %.sroa.6.0.ph28.i.i.i, i64 %.sroa.4.0.copyload.i.i.i)
  %.fr.i.i = freeze i64 %i.o                      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.ph.i11.i.i, ptr align 1 %.sroa.020.0.copyload.le.i.i.i, i64 %.fr.i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ph.i11.i.i, i64 %.fr.i.i
  %i.q = sub i64 %.sroa.6.0.ph28.i.i.i, %.fr.i.i  ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not12.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, label %.outer.split.i.preheader.i.i, !llvm.loop !106

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i: ; preds = %.outer.split.i.i.i
  %i.r = sub i64 8192, %.sroa.6.0.ph28.i.i.i
  %i.s = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.s, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55
  store i32 0, ptr %i.f, align 8, !tbaa !280
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.t, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.u, align 4, !tbaa !1892
  br label %bb.p

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.e, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %.sroa.020.0.i.i12.i = phi ptr [ %i.a, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.020.0.copyload.le.i.i.i, %bb.e ], [ %i.a, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %.sroa.4.0.i.i11.i = phi i64 [ %i.r, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.e ], [ 8192, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %i.v = call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine8do_writeEPvm to i64), i64 0, ptr noundef %.sroa.020.0.i.i12.i, i64 noundef %.sroa.4.0.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.v, ptr %i.w, align 4, !tbaa !1892
  switch i32 %i.v, label %bb.p [
    i32 -2, label %bb.f
    i32 -1, label %bb.l
    i32 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !6201, !nonnull !366, !align !367 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1613 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1711
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1614
  %i.ae = trunc i64 %i.z to i32
  %i.af = call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae)
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !1613 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1614
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i.i
  %i.ak = sub i64 %i.ah, %spec.select.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !6201, !nonnull !366, !align !367 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !376
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 %i.ak, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !411
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !411
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !876, !range !414, !noundef !366
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !871 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !886, !nonnull !366, !align !367
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !876
  %.pre72 = load ptr, ptr %i.d, align 8, !tbaa !6201
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.x, %bb.i ], [ %.pre72, %bb.j ] ; 2 uses
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !411
  %i.ba = load ptr, ptr %0, align 8, !tbaa !6202, !nonnull !366, !align !367 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !376
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !411
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !1208
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINS4_6streamIRSB_EESt5arrayISE_Lm3EEPKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSQ_11async_writeISK_SM_EEN12async_simple4coro4LazyISU_EERT_T0_EUlOS10_E_SK_EENSY_IS10_EES12_RT1_ENUlS10_E0_clINSQ_21callback_awaitor_baseISU_NSQ_16callback_awaitorISU_EEE15awaitor_handlerEEEDaS10_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS10_iRS12_RKS16_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bg), !inline_history !6196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.ag

bb.k:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !871
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINSB_6streamIRSI_EESt5arrayISL_Lm3EEPKSL_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSX_11async_writeISR_ST_EEN12async_simple4coro4LazyIS11_EERT_T0_EUlOS17_E_SR_EENS15_IS17_EES19_RT1_ENUlS17_E0_clINSX_21callback_awaitor_baseIS11_NSX_16callback_awaitorIS11_EEE15awaitor_handlerEEEDaS17_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES18_RKS19_(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bi), !inline_history !6197
  br label %bb.ag

bb.l:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !6201, !nonnull !366, !align !367 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 144 ; 3 uses
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %i.bl, align 8, !tbaa !411
  %i.bm = icmp eq i64 %.sroa.0.0.copyload.i.i.i12, -9223372036854775808
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 152 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !876, !range !414, !noundef !366
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !871 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !886, !nonnull !366, !align !367
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bv = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !876
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !6201
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16: ; preds = %bb.m, %bb.n
  %i.bw = phi ptr [ %i.bj, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  store i64 9223372036854775807, ptr %i.bl, align 8, !tbaa !411
  %i.bx = load ptr, ptr %0, align 8, !tbaa !6202, !nonnull !366, !align !367 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 280 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1711
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !1712
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 288 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1713
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = call i32 @BIO_read(ptr noundef %i.ca, ptr noundef %i.cb, i32 noundef %i.ce)
  %narrow.i17 = call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %i.cg = zext nneg i32 %narrow.i17 to i64
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1712 ; 2 uses
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !1713
  %spec.select.i.i18 = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.bx, ptr %6, align 8, !tbaa !1190
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !376
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %spec.select.i.i18, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !411
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ck, align 8, !tbaa !1716
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cn = load <2 x ptr>, ptr %0, align 8, !tbaa !376
  store <2 x ptr> %i.cn, ptr %i.cm, align 8, !tbaa !376
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !tbaa.struct !1842
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cq = load <2 x i32>, ptr %i.b, align 8, !tbaa !279
  store <2 x i32> %i.cq, ptr %i.cp, align 8, !tbaa !279
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !760
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !1893
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !1893
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1889, !nonnull !366, !align !367
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !1189
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, ptr noundef nonnull align 8 dereferenceable(80) %i.cy, i64 80, i1 false), !tbaa.struct !1838
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.db = load i32, ptr %i.da, align 8, !tbaa !1884
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !1884
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !tbaa.struct !1571
  store i32 1, ptr %i.cl, align 8, !tbaa !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %spec.select.i1.i.i.i = call i64 @llvm.umin.i64(i64 %spec.select.i.i18, i64 65536)
  store ptr %i.ch, ptr %5, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.select.i1.i.i.i, ptr %i.de, align 8
  %i.df = load ptr, ptr %i.bx, align 8, !tbaa !1208
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS_15const_buffers_1ENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS4_INSE_6streamIRS9_EESt5arrayISJ_Lm3EEPKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNST_11async_writeISO_SQ_EEN12async_simple4coro4LazyISX_EERT_T0_EUlOS13_E_SO_EENS11_IS13_EES15_RT1_ENUlS13_E0_clINST_21callback_awaitor_baseISX_NST_16callback_awaitorISX_EEE15awaitor_handlerEEEDaS13_EUlDpOT_E_EEEEEES8_EEvRNS1_24base_implementation_typeERKS13_iRS15_RKS19_(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(256) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.di), !inline_history !6198
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.dj = load ptr, ptr %i.bk, align 8, !tbaa !871
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINSB_6streamIRSI_EESt5arrayISL_Lm3EEPKSL_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSX_11async_writeISR_ST_EEN12async_simple4coro4LazyIS11_EERT_T0_EUlOS17_E_SR_EENS15_IS17_EES19_RT1_ENUlS17_E0_clINSX_21callback_awaitor_baseIS11_NSX_16callback_awaitorIS11_EEE15awaitor_handlerEEEDaS17_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES18_RKS19_(ptr noundef nonnull align 8 dereferenceable(96) %i.dj, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.dk), !inline_history !6197
end_hunk_1
