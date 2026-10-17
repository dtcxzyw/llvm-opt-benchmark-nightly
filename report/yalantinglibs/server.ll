Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/server?download=true
inline.NumInlined: 54344
inline.NumDeleted: 20585
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN4asio6detail8write_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEPKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISA_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SA_EENSP_ISR_EEST_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EclESK_mi:bb.a
  %or.cond.peel.i = and i1 %i.o, %i.p
  br i1 %or.cond.peel.i, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.q = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %.024.i = phi i64 [ %i.s, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %.017.idx22.i = phi i64 [ %.017.add.i, %bb.f ], [ %.017.add.peel.i, %bb.d ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.017.idx22.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.017.ptr.i, align 8, !tbaa !306, !noalias !7639
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx10.i, align 8, !tbaa !333, !noalias !7639 ; 2 uses
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
  br i1 %i.y, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit, !llvm.loop !132

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit: ; preds = %bb.f, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !1854, !nonnull !343, !align !538
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %i.z, ptr %5, align 8, !tbaa !951
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1855
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !2440
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !2441
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.af, align 8, !tbaa !566
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58, !inline_history !7634 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !567
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 0, ptr %i.ai, align 8, !tbaa !2442
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.d, ptr %i.aj, align 8, !tbaa !949
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !tbaa.struct !2443
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i32 %4, ptr %i.al, align 8, !tbaa !2432
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1260
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !1260
  call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENKUlSX_E_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 0, ptr nonnull %i.ah, i64 noundef 0, i32 noundef 1), !inline_history !7635
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.k

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12: ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !2444
  %i.ar = add i64 %i.aq, %3                       ; 3 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !2444
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !2433 ; 5 uses
  %.idx.i10 = shl nsw i64 %i.at, 4                ; 2 uses
  %i.au = icmp ne i64 %i.at, 3
  %i.av = icmp ne i64 %3, 0                       ; 2 uses
  %i.aw = and i1 %i.av, %i.au
  br i1 %i.aw, label %.lr.ph.i14, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

.lr.ph.i14:                                       ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.promoted19.i = load i64, ptr %i.ax, align 8, !tbaa !2435 ; 2 uses
  %.012.ptr.i.peel = getelementptr i8, ptr %0, i64 %.idx.i10
  %.sroa.4.0..sroa_idx.i15.peel = getelementptr i8, ptr %.012.ptr.i.peel, i64 16
  %.sroa.4.0.copyload.i16.peel = load i64, ptr %.sroa.4.0..sroa_idx.i15.peel, align 8, !tbaa !333
  %i.ay = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i16.peel, i64 %.promoted19.i) ; 2 uses
  %i.az = icmp ult i64 %3, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i14
  %i.ba = sub nuw i64 %3, %i.ay                   ; 2 uses
  %i.bb = add i64 %i.at, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.as, align 8, !tbaa !2433
  %.012.add.i.peel = add nsw i64 %.idx.i10, 16    ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !2435
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
  %.sroa.4.0.copyload.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !333 ; 2 uses
  %i.bh = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i16
  br i1 %i.bh, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i14
  %i.bi = phi i64 [ %i.at, %.lr.ph.i14 ], [ %i.bg, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted19.i, %.lr.ph.i14 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i14 ], [ %.018.i, %.peel.next ]
  %i.bj = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.bj, ptr %i.ax, align 8, !tbaa !2435
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.bk = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i16 ; 2 uses
  %i.bl = add i64 %i.bg, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.as, align 8, !tbaa !2433
  %.012.add.i = add nsw i64 %.012.idx17.i, 16     ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !2435
  %i.bm = icmp ne i64 %.012.add.i, 48
  %i.bn = icmp ne i64 %i.bk, 0
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit, !llvm.loop !7636

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12, %.thread.i
  %i.bp = phi i64 [ %i.bi, %.thread.i ], [ %i.at, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12 ], [ %i.bl, %bb.h ]
  %i.bq = icmp ne i32 %1, 0                       ; 2 uses
  %or.cond.not = or i1 %i.bq, %i.av
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.br = phi i1 [ %i.bf, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ], [ %i.bq, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ]
  %i.bs = phi i64 [ %i.bb, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ], [ %i.bp, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !2445
  %.not = icmp uge i64 %i.ar, %i.bu
  %or.cond.not43 = or i1 %.not, %i.br
  br i1 %or.cond.not43, label %bb.j, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, !llvm.loop !7637

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1437 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %1, ptr %i.bx, align 8, !tbaa !280
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !563
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %i.ar, ptr %i.by, align 8, !tbaa !333
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !973 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr nonnull %i.bz), !inline_history !7638
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENKUlSX_E_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %6 = alloca %"class.asio::detail::write_op.3154", align 8 ; 17 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !2440
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a, %bb.ae
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ae ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7645, !nonnull !343, !align !538
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2446
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
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !333 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.l = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.l, label %.outer.split.i.i.i, label %bb.d, !llvm.loop !133

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload.le.i.i.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !306 ; 2 uses
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
  br i1 %.not12.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, label %.outer.split.i.preheader.i.i, !llvm.loop !133

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i: ; preds = %.outer.split.i.i.i
  %i.r = sub i64 8192, %.sroa.6.0.ph28.i.i.i
  %i.s = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.s, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store i32 0, ptr %i.f, align 8, !tbaa !280
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.t, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.u, align 4, !tbaa !2441
  br label %bb.p

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.e, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %.sroa.020.0.i.i12.i = phi ptr [ %i.a, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.020.0.copyload.le.i.i.i, %bb.e ], [ %i.a, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %.sroa.4.0.i.i11.i = phi i64 [ %i.r, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.e ], [ 8192, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %i.v = call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine8do_writeEPvm to i64), i64 0, ptr noundef %.sroa.020.0.i.i12.i, i64 noundef %.sroa.4.0.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.v, ptr %i.w, align 4, !tbaa !2441
  switch i32 %i.v, label %bb.p [
    i32 -2, label %bb.f
    i32 -1, label %bb.l
    i32 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !7645, !nonnull !343, !align !538 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1793 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1463
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1794
  %i.ae = trunc i64 %i.z to i32
  %i.af = call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae)
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !1793 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1794
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i.i
  %i.ak = sub i64 %i.ah, %spec.select.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !7645, !nonnull !343, !align !538 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !306
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 %i.ak, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !333
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !333
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !735, !range !342, !noundef !343
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !730 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !745, !nonnull !343, !align !538
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !735
  %.pre72 = load ptr, ptr %i.d, align 8, !tbaa !7645
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.x, %bb.i ], [ %.pre72, %bb.j ] ; 2 uses
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !333
  %i.ba = load ptr, ptr %0, align 8, !tbaa !7646, !nonnull !343, !align !538 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !306
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !333
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !923
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINS4_6streamIRSB_EESt5arrayISE_Lm3EEPKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSQ_11async_writeISK_SM_EEN12async_simple4coro4LazyISU_EERT_T0_EUlOS10_E_SK_EENSY_IS10_EES12_RT1_ENKUlS10_E_clINSQ_21callback_awaitor_baseISU_NSQ_16callback_awaitorISU_EEE15awaitor_handlerEEEDaS10_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS10_iRS12_RKS16_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bg), !inline_history !7640
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.ag

bb.k:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !730
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINSB_6streamIRSI_EESt5arrayISL_Lm3EEPKSL_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSX_11async_writeISR_ST_EEN12async_simple4coro4LazyIS11_EERT_T0_EUlOS17_E_SR_EENS15_IS17_EES19_RT1_ENKUlS17_E_clINSX_21callback_awaitor_baseIS11_NSX_16callback_awaitorIS11_EEE15awaitor_handlerEEEDaS17_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES18_RKS19_(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bi), !inline_history !7641
  br label %bb.ag

bb.l:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !7645, !nonnull !343, !align !538 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 144 ; 3 uses
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %i.bl, align 8, !tbaa !333
  %i.bm = icmp eq i64 %.sroa.0.0.copyload.i.i.i12, -9223372036854775808
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 152 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !735, !range !342, !noundef !343
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !730 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !745, !nonnull !343, !align !538
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bv = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !7645
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16: ; preds = %bb.m, %bb.n
  %i.bw = phi ptr [ %i.bj, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  store i64 9223372036854775807, ptr %i.bl, align 8, !tbaa !333
  %i.bx = load ptr, ptr %0, align 8, !tbaa !7646, !nonnull !343, !align !538 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 280 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1463
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !1738
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 288 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1737
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = call i32 @BIO_read(ptr noundef %i.ca, ptr noundef %i.cb, i32 noundef %i.ce)
  %narrow.i17 = call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %i.cg = zext nneg i32 %narrow.i17 to i64
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1738 ; 2 uses
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !1737
  %spec.select.i.i18 = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %i.bx, ptr %6, align 8, !tbaa !951
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !306
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %spec.select.i.i18, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !333
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ck, align 8, !tbaa !1797
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cn = load <2 x ptr>, ptr %0, align 8, !tbaa !306
  store <2 x ptr> %i.cn, ptr %i.cm, align 8, !tbaa !306
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !tbaa.struct !2447
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cq = load <2 x i32>, ptr %i.b, align 8, !tbaa !279
  store <2 x i32> %i.cq, ptr %i.cp, align 8, !tbaa !279
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !564
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !2442
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !2442
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !2434, !nonnull !343, !align !538
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !949
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, ptr noundef nonnull align 8 dereferenceable(80) %i.cy, i64 80, i1 false), !tbaa.struct !2443
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.db = load i32, ptr %i.da, align 8, !tbaa !2432
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !2432
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1260
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !1260
  store i32 1, ptr %i.cl, align 8, !tbaa !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %spec.select.i1.i.i.i = call i64 @llvm.umin.i64(i64 %spec.select.i.i18, i64 65536)
  store ptr %i.ch, ptr %5, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.select.i1.i.i.i, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.bx, align 8, !tbaa !923
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS_15const_buffers_1ENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS4_INSE_6streamIRS9_EESt5arrayISJ_Lm3EEPKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNST_11async_writeISO_SQ_EEN12async_simple4coro4LazyISX_EERT_T0_EUlOS13_E_SO_EENS11_IS13_EES15_RT1_ENKUlS13_E_clINST_21callback_awaitor_baseISX_NST_16callback_awaitorISX_EEE15awaitor_handlerEEEDaS13_EUlDpOT_E_EEEEEES8_EEvRNS1_24base_implementation_typeERKS13_iRS15_RKS19_(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.dj), !inline_history !7642
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %i.bk, align 8, !tbaa !730
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
end_hunk_0
begin_hunk_1_@_ZN4asio6detail8write_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEPKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISA_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SA_EENSP_ISR_EEST_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EclESK_mi:bb.a
.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.q = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %.024.i = phi i64 [ %i.s, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %.017.idx22.i = phi i64 [ %.017.add.i, %bb.f ], [ %.017.add.peel.i, %bb.d ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.017.idx22.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.017.ptr.i, align 8, !tbaa !306, !noalias !7727
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx10.i, align 8, !tbaa !333, !noalias !7727 ; 2 uses
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
  br i1 %i.y, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit, !llvm.loop !132

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit: ; preds = %bb.f, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !1854, !nonnull !343, !align !538
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %i.z, ptr %5, align 8, !tbaa !951
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1855
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !2496
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !2497
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.af, align 8, !tbaa !566
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58, !inline_history !7722 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !567
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 0, ptr %i.ai, align 8, !tbaa !2498
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.d, ptr %i.aj, align 8, !tbaa !949
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !tbaa.struct !2443
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i32 %4, ptr %i.al, align 8, !tbaa !2489
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !1440
  call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENUlSX_E0_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(216) %5, i32 0, ptr nonnull %i.ah, i64 noundef 0, i32 noundef 1), !inline_history !7723
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.k

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12: ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !2444
  %i.aq = add i64 %i.ap, %3                       ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !2444
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !2433 ; 5 uses
  %.idx.i10 = shl nsw i64 %i.as, 4                ; 2 uses
  %i.at = icmp ne i64 %i.as, 3
  %i.au = icmp ne i64 %3, 0                       ; 2 uses
  %i.av = and i1 %i.au, %i.at
  br i1 %i.av, label %.lr.ph.i14, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

.lr.ph.i14:                                       ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.promoted19.i = load i64, ptr %i.aw, align 8, !tbaa !2435 ; 2 uses
  %.012.ptr.i.peel = getelementptr i8, ptr %0, i64 %.idx.i10
  %.sroa.4.0..sroa_idx.i15.peel = getelementptr i8, ptr %.012.ptr.i.peel, i64 16
  %.sroa.4.0.copyload.i16.peel = load i64, ptr %.sroa.4.0..sroa_idx.i15.peel, align 8, !tbaa !333
  %i.ax = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i16.peel, i64 %.promoted19.i) ; 2 uses
  %i.ay = icmp ult i64 %3, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i14
  %i.az = sub nuw i64 %3, %i.ax                   ; 2 uses
  %i.ba = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !2433
  %.012.add.i.peel = add nsw i64 %.idx.i10, 16    ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !2435
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
  %.sroa.4.0.copyload.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !333 ; 2 uses
  %i.bg = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i16
  br i1 %i.bg, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i14
  %i.bh = phi i64 [ %i.as, %.lr.ph.i14 ], [ %i.bf, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted19.i, %.lr.ph.i14 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i14 ], [ %.018.i, %.peel.next ]
  %i.bi = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.bi, ptr %i.aw, align 8, !tbaa !2435
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.bj = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i16 ; 2 uses
  %i.bk = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.bk, ptr %i.ar, align 8, !tbaa !2433
  %.012.add.i = add nsw i64 %.012.idx17.i, 16     ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !2435
  %i.bl = icmp ne i64 %.012.add.i, 48
  %i.bm = icmp ne i64 %i.bj, 0
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit, !llvm.loop !7724

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12, %.thread.i
  %i.bo = phi i64 [ %i.bh, %.thread.i ], [ %i.as, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12 ], [ %i.bk, %bb.h ]
  %i.bp = icmp ne i32 %1, 0                       ; 2 uses
  %or.cond.not = or i1 %i.bp, %i.au
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bq = phi i1 [ %i.be, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ], [ %i.bp, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ]
  %i.br = phi i64 [ %i.ba, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ], [ %i.bo, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !2445
  %.not = icmp uge i64 %i.aq, %i.bt
  %or.cond.not43 = or i1 %.not, %i.bq
  br i1 %or.cond.not43, label %bb.j, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, !llvm.loop !7725

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !7728, !nonnull !343, !align !538
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1010
  %i.by = tail call noundef zeroext i1 @_ZN12async_simple4Slot5clearENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, i64 noundef 1) ; 0 uses
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !1437 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %1, ptr %i.ca, align 8, !tbaa !280
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !563
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 %i.aq, ptr %i.cb, align 8, !tbaa !333
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !973 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr nonnull %i.cc), !inline_history !7726
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENUlSX_E0_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %6 = alloca %"class.asio::detail::write_op.3205", align 8 ; 17 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !2496
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a, %bb.ae
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ae ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7734, !nonnull !343, !align !538
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2446
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
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !333 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.l = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.l, label %.outer.split.i.i.i, label %bb.d, !llvm.loop !133

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload.le.i.i.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !306 ; 2 uses
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
  br i1 %.not12.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, label %.outer.split.i.preheader.i.i, !llvm.loop !133

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i: ; preds = %.outer.split.i.i.i
  %i.r = sub i64 8192, %.sroa.6.0.ph28.i.i.i
  %i.s = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.s, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store i32 0, ptr %i.f, align 8, !tbaa !280
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.t, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.u, align 4, !tbaa !2497
  br label %bb.p

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.e, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %.sroa.020.0.i.i12.i = phi ptr [ %i.a, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.020.0.copyload.le.i.i.i, %bb.e ], [ %i.a, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %.sroa.4.0.i.i11.i = phi i64 [ %i.r, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.e ], [ 8192, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %i.v = call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine8do_writeEPvm to i64), i64 0, ptr noundef %.sroa.020.0.i.i12.i, i64 noundef %.sroa.4.0.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.v, ptr %i.w, align 4, !tbaa !2497
  switch i32 %i.v, label %bb.p [
    i32 -2, label %bb.f
    i32 -1, label %bb.l
    i32 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !7734, !nonnull !343, !align !538 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1793 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1463
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1794
  %i.ae = trunc i64 %i.z to i32
  %i.af = call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae)
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !1793 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1794
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i.i
  %i.ak = sub i64 %i.ah, %spec.select.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !7734, !nonnull !343, !align !538 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !306
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 %i.ak, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !333
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !333
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !735, !range !342, !noundef !343
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !730 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !745, !nonnull !343, !align !538
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !735
  %.pre72 = load ptr, ptr %i.d, align 8, !tbaa !7734
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.x, %bb.i ], [ %.pre72, %bb.j ] ; 2 uses
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !333
  %i.ba = load ptr, ptr %0, align 8, !tbaa !7735, !nonnull !343, !align !538 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !306
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !333
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !923
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINS4_6streamIRSB_EESt5arrayISE_Lm3EEPKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSQ_11async_writeISK_SM_EEN12async_simple4coro4LazyISU_EERT_T0_EUlOS10_E_SK_EENSY_IS10_EES12_RT1_ENUlS10_E0_clINSQ_21callback_awaitor_baseISU_NSQ_16callback_awaitorISU_EEE15awaitor_handlerEEEDaS10_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS10_iRS12_RKS16_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bg), !inline_history !7729
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.ag

bb.k:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !730
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINSB_6streamIRSI_EESt5arrayISL_Lm3EEPKSL_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSX_11async_writeISR_ST_EEN12async_simple4coro4LazyIS11_EERT_T0_EUlOS17_E_SR_EENS15_IS17_EES19_RT1_ENUlS17_E0_clINSX_21callback_awaitor_baseIS11_NSX_16callback_awaitorIS11_EEE15awaitor_handlerEEEDaS17_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES18_RKS19_(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bi), !inline_history !7730
  br label %bb.ag

bb.l:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !7734, !nonnull !343, !align !538 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 144 ; 3 uses
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %i.bl, align 8, !tbaa !333
  %i.bm = icmp eq i64 %.sroa.0.0.copyload.i.i.i12, -9223372036854775808
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 152 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !735, !range !342, !noundef !343
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !730 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !745, !nonnull !343, !align !538
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bv = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !7734
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16: ; preds = %bb.m, %bb.n
  %i.bw = phi ptr [ %i.bj, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  store i64 9223372036854775807, ptr %i.bl, align 8, !tbaa !333
  %i.bx = load ptr, ptr %0, align 8, !tbaa !7735, !nonnull !343, !align !538 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 280 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1463
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !1738
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 288 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1737
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = call i32 @BIO_read(ptr noundef %i.ca, ptr noundef %i.cb, i32 noundef %i.ce)
  %narrow.i17 = call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %i.cg = zext nneg i32 %narrow.i17 to i64
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1738 ; 2 uses
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !1737
  %spec.select.i.i18 = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %i.bx, ptr %6, align 8, !tbaa !951
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !306
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %spec.select.i.i18, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !333
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ck, align 8, !tbaa !1797
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cn = load <2 x ptr>, ptr %0, align 8, !tbaa !306
  store <2 x ptr> %i.cn, ptr %i.cm, align 8, !tbaa !306
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !tbaa.struct !2447
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cq = load <2 x i32>, ptr %i.b, align 8, !tbaa !279
  store <2 x i32> %i.cq, ptr %i.cp, align 8, !tbaa !279
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !564
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !2498
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !2498
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !2494, !nonnull !343, !align !538
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !949
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, ptr noundef nonnull align 8 dereferenceable(80) %i.cy, i64 80, i1 false), !tbaa.struct !2443
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.db = load i32, ptr %i.da, align 8, !tbaa !2489
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !2489
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !tbaa.struct !1440
  store i32 1, ptr %i.cl, align 8, !tbaa !2500
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %spec.select.i1.i.i.i = call i64 @llvm.umin.i64(i64 %spec.select.i.i18, i64 65536)
  store ptr %i.ch, ptr %5, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.select.i1.i.i.i, ptr %i.de, align 8
  %i.df = load ptr, ptr %i.bx, align 8, !tbaa !923
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS_15const_buffers_1ENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS4_INSE_6streamIRS9_EESt5arrayISJ_Lm3EEPKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNST_11async_writeISO_SQ_EEN12async_simple4coro4LazyISX_EERT_T0_EUlOS13_E_SO_EENS11_IS13_EES15_RT1_ENUlS13_E0_clINST_21callback_awaitor_baseISX_NST_16callback_awaitorISX_EEE15awaitor_handlerEEEDaS13_EUlDpOT_E_EEEEEES8_EEvRNS1_24base_implementation_typeERKS13_iRS15_RKS19_(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(256) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.di), !inline_history !7731
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.dj = load ptr, ptr %i.bk, align 8, !tbaa !730
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINSB_6streamIRSI_EESt5arrayISL_Lm3EEPKSL_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSX_11async_writeISR_ST_EEN12async_simple4coro4LazyIS11_EERT_T0_EUlOS17_E_SR_EENS15_IS17_EES19_RT1_ENUlS17_E0_clINSX_21callback_awaitor_baseIS11_NSX_16callback_awaitorIS11_EEE15awaitor_handlerEEEDaS17_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES18_RKS19_(ptr noundef nonnull align 8 dereferenceable(96) %i.dj, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.dk), !inline_history !7730
end_hunk_1
begin_hunk_2_@_ZN4asio6detail8write_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt6vectorINS_12const_bufferESaISC_EEN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSL_11async_writeISA_SE_EEN12async_simple4coro4LazyISP_EERT_T0_EUlOSV_E_SA_EENST_ISV_EESX_RT1_ENKUlSV_E_clINSL_21callback_awaitor_baseISP_NSL_16callback_awaitorISP_EEE15awaitor_handlerEEEDaSV_EUlDpOT_E_EclESO_mi:bb.a

.lr.ph.i12:                                       ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.promoted19.i = load i64, ptr %i.ap, align 8, !tbaa !3558 ; 2 uses
  %.sroa.4.0..sroa_idx.i13.peel = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.0.copyload.i14.peel = load i64, ptr %.sroa.4.0..sroa_idx.i13.peel, align 8, !tbaa !333
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i14.peel, i64 %.promoted19.i) ; 2 uses
  %i.ar = icmp ult i64 %3, %i.aq
  br i1 %i.ar, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i12
  %i.as = sub nuw i64 %3, %i.aq                   ; 2 uses
  %i.at = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !3557
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !3558
  %i.av = icmp eq ptr %i.au, %i.aj
  %i.aw = icmp eq i64 %i.as, 0
  %.not5.i.peel = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %.not5.i.peel, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread, label %.peel.next

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread: ; preds = %bb.g
  %i.ax = icmp eq i32 %1, 0
  br label %bb.i

.peel.next:                                       ; preds = %bb.g, %bb.h
  %.018.i = phi i64 [ %i.bc, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.sroa.011.017.i = phi ptr [ %i.be, %bb.h ], [ %i.au, %bb.g ] ; 2 uses
  %i.ay = phi i64 [ %i.bd, %bb.h ], [ %i.at, %bb.g ] ; 2 uses
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 8
  %.sroa.4.0.copyload.i14 = load i64, ptr %.sroa.4.0..sroa_idx.i13, align 8, !tbaa !333 ; 2 uses
  %i.az = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i14
  br i1 %i.az, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i12
  %i.ba = phi i64 [ %i.al, %.lr.ph.i12 ], [ %i.ay, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted19.i, %.lr.ph.i12 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i12 ], [ %.018.i, %.peel.next ]
  %i.bb = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.bb, ptr %i.ap, align 8, !tbaa !3558
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.bc = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i14 ; 2 uses
  %i.bd = add i64 %i.ay, 1                        ; 3 uses
  store i64 %i.bd, ptr %i.ak, align 8, !tbaa !3557
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 16 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !3558
  %i.bf = icmp eq ptr %i.be, %i.aj
  %i.bg = icmp eq i64 %i.bc, 0
  %.not5.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %.not5.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit, label %.peel.next, !llvm.loop !9607

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i10, %.thread.i
  %i.bh = phi i64 [ %i.ba, %.thread.i ], [ %i.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i10 ], [ %i.bd, %bb.h ]
  %i.bi = icmp eq i32 %1, 0                       ; 2 uses
  %or.cond.not.not = and i1 %i.bi, %i.ao
  br i1 %or.cond.not.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit
  %i.bj = phi i1 [ %i.ax, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ], [ %i.bi, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit ]
  %i.bk = phi i64 [ %i.at, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ], [ %i.bh, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !3548
  %.not = icmp ult i64 %i.ag, %i.bm
  %or.cond = and i1 %.not, %i.bj
  br i1 %or.cond, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.j, !llvm.loop !9608

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1437 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %1, ptr %i.bp, align 8, !tbaa !280
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !563
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %i.ag, ptr %i.bq, align 8, !tbaa !333
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !973 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr nonnull %i.br), !inline_history !9609
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEE25initiate_async_write_someclINS_6detail8write_opIS8_St6vectorINS_12const_bufferESaISE_EEN9__gnu_cxx17__normal_iteratorIPKSE_SG_EENSB_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeIS8_SG_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_S8_EENSV_ISX_EESZ_RT1_ENKUlSX_E_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EENSB_16prepared_buffersISE_Lm64EEEEEvS10_RKSZ_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(264) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::ssl::detail::io_op.4393", align 8 ; 19 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3555   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1854, !nonnull !343, !align !538
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.d, ptr noundef nonnull align 8 dereferenceable(264) %2, i64 264, i1 false)
  store ptr %i.b, ptr %3, align 8, !tbaa !951
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !1855
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 280
  store i32 0, ptr %i.f, align 8, !tbaa !3562
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 284
  store i32 0, ptr %i.g, align 4, !tbaa !3563
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 288
  store i32 0, ptr %i.h, align 8, !tbaa !566
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !567
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 304
  store i64 0, ptr %i.k, align 8, !tbaa !3564
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load <2 x ptr>, ptr %1, align 8, !tbaa !306
  store <2 x ptr> %i.o, ptr %i.l, align 8, !tbaa !306
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 328
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.q, align 8, !tbaa !3556
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !3556
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3551
  store i32 %i.x, ptr %i.v, align 8, !tbaa !3551
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1260
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !1260
  invoke void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEclESU_mi(ptr noundef nonnull align 8 dereferenceable(392) %3, i32 0, ptr nonnull %i.j, i64 noundef 0, i32 noundef 1)
          to label %_ZN4asio3ssl6detail8async_ioINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEvS12_RNS1_11stream_coreERKS13_S18_.exit unwind label %bb.b, !inline_history !9612

bb.b:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !3247 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !3246
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #53
  br label %_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit

_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.ab

_ZN4asio3ssl6detail8async_ioINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEvS12_RNS1_11stream_coreERKS13_S18_.exit: ; preds = %bb.a
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !3247 ; 3 uses
  %.not.i.i.i.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i3, label %_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN4asio3ssl6detail8async_ioINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEvS12_RNS1_11stream_coreERKS13_S18_.exit
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !3246
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #53
  br label %_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit4

_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit4: ; preds = %_ZN4asio3ssl6detail8async_ioINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEvS12_RNS1_11stream_coreERKS13_S18_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEclESU_mi(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::detail::initiate_async_write", align 8 ; 4 uses
  %6 = alloca %"class.asio::detail::transfer_all_t", align 1 ; 3 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffer", align 8 ; 5 uses
  %9 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %4, ptr %i.b, align 8, !tbaa !3562
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a, %bb.ae
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ae ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9618, !nonnull !343, !align !538
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3553
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
  br i1 %.not.i.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i, label %bb.c

bb.c:                                             ; preds = %.outer.split.i.i.i
  %.sroa.4.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !333 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.l = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.l, label %.outer.split.i.i.i, label %bb.d, !llvm.loop !208

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload.le.i.i.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !306 ; 2 uses
  %i.m = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.m, label %bb.e, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.k, %i.j
  %.not13.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i, 8192
  %or.cond24.i.i.i = and i1 %i.n, %.not13.i.i.i
  br i1 %or.cond24.i.i.i, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.o = call i64 @llvm.umin.i64(i64 %.sroa.6.0.ph28.i.i.i, i64 %.sroa.4.0.copyload.i.i.i)
  %.fr.i.i = freeze i64 %i.o                      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.ph.i11.i.i, ptr align 1 %.sroa.020.0.copyload.le.i.i.i, i64 %.fr.i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ph.i11.i.i, i64 %.fr.i.i
  %i.q = sub i64 %.sroa.6.0.ph28.i.i.i, %.fr.i.i  ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not12.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit, label %.outer.split.i.preheader.i.i, !llvm.loop !208

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i: ; preds = %.outer.split.i.i.i
  %i.r = sub i64 8192, %.sroa.6.0.ph28.i.i.i
  %i.s = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.s, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store i32 0, ptr %i.f, align 8, !tbaa !280
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.t, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 0, ptr %i.u, align 4, !tbaa !3563
  br label %bb.p

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.e, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %.sroa.020.0.i.i12.i = phi ptr [ %i.a, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.020.0.copyload.le.i.i.i, %bb.e ], [ %i.a, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %.sroa.4.0.i.i11.i = phi i64 [ %i.r, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.e ], [ 8192, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %i.v = call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine8do_writeEPvm to i64), i64 0, ptr noundef %.sroa.020.0.i.i12.i, i64 noundef %.sroa.4.0.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3563
  switch i32 %i.v, label %bb.p [
    i32 -2, label %bb.f
    i32 -1, label %bb.l
    i32 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !9618, !nonnull !343, !align !538 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1793 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1463
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1794
  %i.ae = trunc i64 %i.z to i32
  %i.af = call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae)
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !1793 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1794
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i.i
  %i.ak = sub i64 %i.ah, %spec.select.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !9618, !nonnull !343, !align !538 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !306
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 %i.ak, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !333
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !333
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !735, !range !342, !noundef !343
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !730 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !745, !nonnull !343, !align !538
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !735
  %.pre68 = load ptr, ptr %i.d, align 8, !tbaa !9618
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.x, %bb.i ], [ %.pre68, %bb.j ] ; 2 uses
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !333
  %i.ba = load ptr, ptr %0, align 8, !tbaa !9619, !nonnull !343, !align !538 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !306
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !333
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !923
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINS4_6streamIRSB_EESt6vectorISE_SaISE_EEN9__gnu_cxx17__normal_iteratorIPKSE_SN_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSU_11async_writeISK_SN_EEN12async_simple4coro4LazyISY_EERT_T0_EUlOS14_E_SK_EENS12_IS14_EES16_RT1_ENKUlS14_E_clINSU_21callback_awaitor_baseISY_NSU_16callback_awaitorISY_EEE15awaitor_handlerEEEDaS14_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS14_iRS16_RKS1A_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bg), !inline_history !9613
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.ag

bb.k:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !730
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINSB_6streamIRSI_EESt6vectorISL_SaISL_EEN9__gnu_cxx17__normal_iteratorIPKSL_SU_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNS11_11async_writeISR_SU_EEN12async_simple4coro4LazyIS15_EERT_T0_EUlOS1B_E_SR_EENS19_IS1B_EES1D_RT1_ENKUlS1B_E_clINS11_21callback_awaitor_baseIS15_NS11_16callback_awaitorIS15_EEE15awaitor_handlerEEEDaS1B_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES1C_RKS1D_(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bi), !inline_history !9614
  br label %bb.ag

bb.l:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit, %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !9618, !nonnull !343, !align !538 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 144 ; 3 uses
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %i.bl, align 8, !tbaa !333
  %i.bm = icmp eq i64 %.sroa.0.0.copyload.i.i.i12, -9223372036854775808
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 152 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !735, !range !342, !noundef !343
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !730 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !745, !nonnull !343, !align !538
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bv = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !9618
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16: ; preds = %bb.m, %bb.n
  %i.bw = phi ptr [ %i.bj, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  store i64 9223372036854775807, ptr %i.bl, align 8, !tbaa !333
  %i.bx = load ptr, ptr %0, align 8, !tbaa !9619, !nonnull !343, !align !538
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 280 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1463
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !1738
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 288 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1737
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = call i32 @BIO_read(ptr noundef %i.ca, ptr noundef %i.cb, i32 noundef %i.ce)
  %narrow.i17 = call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %i.cg = zext nneg i32 %narrow.i17 to i64
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1738
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !1737
  %spec.select.i.i18 = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cg)
  store ptr %i.ch, ptr %8, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %spec.select.i.i18, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %i.bx, ptr %5, align 8, !tbaa !951
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  call void @_ZNK4asio6detail20initiate_async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEclINS_3ssl6detail5io_opIS6_NSA_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINS9_6streamIRS6_EESt6vectorISE_SaISE_EEN9__gnu_cxx17__normal_iteratorIPKSE_SN_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSU_11async_writeISK_SN_EEN12async_simple4coro4LazyISY_EERT_T0_EUlOS14_E_SK_EENS12_IS14_EES16_RT1_ENKUlS14_E_clINSU_21callback_awaitor_baseISY_NSU_16callback_awaitorISY_EEE15awaitor_handlerEEEDaS14_EUlDpOT_E_EEEENS_14mutable_bufferEST_EEvS17_RKS16_OS1A_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %6), !inline_history !9615
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %i.bk, align 8, !tbaa !730
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINSB_6streamIRSI_EESt6vectorISL_SaISL_EEN9__gnu_cxx17__normal_iteratorIPKSL_SU_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNS11_11async_writeISR_SU_EEN12async_simple4coro4LazyIS15_EERT_T0_EUlOS1B_E_SR_EENS19_IS1B_EES1D_RT1_ENKUlS1B_E_clINS11_21callback_awaitor_baseIS15_NS11_16callback_awaitorIS15_EEE15awaitor_handlerEEEDaS1B_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES1C_RKS1D_(ptr noundef nonnull align 8 dereferenceable(96) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.cl), !inline_history !9614
  br label %bb.ag

bb.p:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit
  %.not8 = icmp eq i32 %4, 0
  br i1 %.not8, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %0, align 8, !tbaa !9619, !nonnull !343, !align !538 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !9618, !nonnull !343, !align !538
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 320
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1738
  store ptr %i.cp, ptr %9, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !923
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINS4_6streamIRSB_EESt6vectorISE_SaISE_EEN9__gnu_cxx17__normal_iteratorIPKSE_SN_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSU_11async_writeISK_SN_EEN12async_simple4coro4LazyISY_EERT_T0_EUlOS14_E_SK_EENS12_IS14_EES16_RT1_ENKUlS14_E_clINSU_21callback_awaitor_baseISY_NSU_16callback_awaitorISY_EEE15awaitor_handlerEEEDaS14_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS14_iRS16_RKS1A_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.cu), !inline_history !9613
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %bb.ag

bb.r:                                             ; preds = %bb.p, %bb.a
  %.1 = phi i64 [ %.0, %bb.p ], [ %3, %bb.a ]     ; 3 uses
  %i.cv = icmp eq i64 %.1, -1
  br i1 %i.cv, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !566
  %.not61 = icmp eq i32 %i.cx, 0
  br i1 %.not61, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %1, ptr %i.cw, align 8, !tbaa !280
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %2, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !563
end_hunk_2
begin_hunk_3_@_ZN4asio6detail8write_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt6vectorINS_12const_bufferESaISC_EEN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSL_11async_writeISA_SE_EEN12async_simple4coro4LazyISP_EERT_T0_EUlOSV_E_SA_EENST_ISV_EESX_RT1_ENUlSV_E0_clINSL_21callback_awaitor_baseISP_NSL_16callback_awaitorISP_EEE15awaitor_handlerEEEDaSV_EUlDpOT_E_EclESO_mi:bb.a
  %.promoted19.i = load i64, ptr %i.ap, align 8, !tbaa !3558 ; 2 uses
  %.sroa.4.0..sroa_idx.i13.peel = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.0.copyload.i14.peel = load i64, ptr %.sroa.4.0..sroa_idx.i13.peel, align 8, !tbaa !333
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i14.peel, i64 %.promoted19.i) ; 2 uses
  %i.ar = icmp ult i64 %3, %i.aq
  br i1 %i.ar, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i12
  %i.as = sub nuw i64 %3, %i.aq                   ; 2 uses
  %i.at = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !3557
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !3558
  %i.av = icmp eq ptr %i.au, %i.aj
  %i.aw = icmp eq i64 %i.as, 0
  %.not5.i.peel = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %.not5.i.peel, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread, label %.peel.next

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread: ; preds = %bb.g
  %i.ax = icmp eq i32 %1, 0
  br label %bb.i

.peel.next:                                       ; preds = %bb.g, %bb.h
  %.018.i = phi i64 [ %i.bc, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.sroa.011.017.i = phi ptr [ %i.be, %bb.h ], [ %i.au, %bb.g ] ; 2 uses
  %i.ay = phi i64 [ %i.bd, %bb.h ], [ %i.at, %bb.g ] ; 2 uses
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 8
  %.sroa.4.0.copyload.i14 = load i64, ptr %.sroa.4.0..sroa_idx.i13, align 8, !tbaa !333 ; 2 uses
  %i.az = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i14
  br i1 %i.az, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i12
  %i.ba = phi i64 [ %i.al, %.lr.ph.i12 ], [ %i.ay, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted19.i, %.lr.ph.i12 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i12 ], [ %.018.i, %.peel.next ]
  %i.bb = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.bb, ptr %i.ap, align 8, !tbaa !3558
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.bc = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i14 ; 2 uses
  %i.bd = add i64 %i.ay, 1                        ; 3 uses
  store i64 %i.bd, ptr %i.ak, align 8, !tbaa !3557
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 16 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !3558
  %i.bf = icmp eq ptr %i.be, %i.aj
  %i.bg = icmp eq i64 %i.bc, 0
  %.not5.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %.not5.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit, label %.peel.next, !llvm.loop !9701

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i10, %.thread.i
  %i.bh = phi i64 [ %i.ba, %.thread.i ], [ %i.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i10 ], [ %i.bd, %bb.h ]
  %i.bi = icmp eq i32 %1, 0                       ; 2 uses
  %or.cond.not.not = and i1 %i.bi, %i.ao
  br i1 %or.cond.not.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit
  %i.bj = phi i1 [ %i.ax, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ], [ %i.bi, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit ]
  %i.bk = phi i64 [ %i.at, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ], [ %i.bh, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !3548
  %.not = icmp ult i64 %i.ag, %i.bm
  %or.cond = and i1 %.not, %i.bj
  br i1 %or.cond, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.j, !llvm.loop !9702

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9706, !nonnull !343, !align !538
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1010
  %i.br = tail call noundef zeroext i1 @_ZN12async_simple4Slot5clearENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.bq, i64 noundef 1) ; 0 uses
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !1437 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %1, ptr %i.bt, align 8, !tbaa !280
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !563
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 %i.ag, ptr %i.bu, align 8, !tbaa !333
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !973 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr nonnull %i.bv), !inline_history !9703
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEE25initiate_async_write_someclINS_6detail8write_opIS8_St6vectorINS_12const_bufferESaISE_EEN9__gnu_cxx17__normal_iteratorIPKSE_SG_EENSB_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeIS8_SG_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_S8_EENSV_ISX_EESZ_RT1_ENUlSX_E0_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EENSB_16prepared_buffersISE_Lm64EEEEEvS10_RKSZ_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(264) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::ssl::detail::io_op.4444", align 8 ; 19 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3555   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1854, !nonnull !343, !align !538
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.d, ptr noundef nonnull align 8 dereferenceable(264) %2, i64 264, i1 false)
  store ptr %i.b, ptr %3, align 8, !tbaa !951
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !1855
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 280
  store i32 0, ptr %i.f, align 8, !tbaa !3612
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 284
  store i32 0, ptr %i.g, align 4, !tbaa !3613
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 288
  store i32 0, ptr %i.h, align 8, !tbaa !566
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !567
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 304
  store i64 0, ptr %i.k, align 8, !tbaa !3614
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load <2 x ptr>, ptr %1, align 8, !tbaa !306
  store <2 x ptr> %i.o, ptr %i.l, align 8, !tbaa !306
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 328
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.q, align 8, !tbaa !3556
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !3556
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3610
  store i32 %i.x, ptr %i.v, align 8, !tbaa !3610
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !1440
  invoke void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEclESU_mi(ptr noundef nonnull align 8 dereferenceable(400) %3, i32 0, ptr nonnull %i.j, i64 noundef 0, i32 noundef 1)
          to label %_ZN4asio3ssl6detail8async_ioINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEvS12_RNS1_11stream_coreERKS13_S18_.exit unwind label %bb.b, !inline_history !9707

bb.b:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !3247 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !3246
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #53
  br label %_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit

_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.aa

_ZN4asio3ssl6detail8async_ioINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEvS12_RNS1_11stream_coreERKS13_S18_.exit: ; preds = %bb.a
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !3247 ; 3 uses
  %.not.i.i.i.i.i.i3 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i3, label %_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN4asio3ssl6detail8async_ioINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEvS12_RNS1_11stream_coreERKS13_S18_.exit
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !3246
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #53
  br label %_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit4

_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEED2Ev.exit4: ; preds = %_ZN4asio3ssl6detail8async_ioINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEvS12_RNS1_11stream_coreERKS13_S18_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEENS9_8write_opINS0_6streamIRS7_EESt6vectorISB_SaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SK_EENS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISH_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SH_EENSZ_IS11_EES13_RT1_ENUlS11_E0_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEclESU_mi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::detail::initiate_async_write", align 8 ; 4 uses
  %6 = alloca %"class.asio::detail::transfer_all_t", align 1 ; 3 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffer", align 8 ; 5 uses
  %9 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %4, ptr %i.b, align 8, !tbaa !3612
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a, %bb.ae
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ae ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9713, !nonnull !343, !align !538
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3553
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
  br i1 %.not.i.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i, label %bb.c

bb.c:                                             ; preds = %.outer.split.i.i.i
  %.sroa.4.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !333 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.l = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.l, label %.outer.split.i.i.i, label %bb.d, !llvm.loop !208

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload.le.i.i.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !306 ; 2 uses
  %i.m = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.m, label %bb.e, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.k, %i.j
  %.not13.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i, 8192
  %or.cond24.i.i.i = and i1 %i.n, %.not13.i.i.i
  br i1 %or.cond24.i.i.i, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.o = call i64 @llvm.umin.i64(i64 %.sroa.6.0.ph28.i.i.i, i64 %.sroa.4.0.copyload.i.i.i)
  %.fr.i.i = freeze i64 %i.o                      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.ph.i11.i.i, ptr align 1 %.sroa.020.0.copyload.le.i.i.i, i64 %.fr.i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ph.i11.i.i, i64 %.fr.i.i
  %i.q = sub i64 %.sroa.6.0.ph28.i.i.i, %.fr.i.i  ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not12.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit, label %.outer.split.i.preheader.i.i, !llvm.loop !208

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i: ; preds = %.outer.split.i.i.i
  %i.r = sub i64 8192, %.sroa.6.0.ph28.i.i.i
  %i.s = icmp eq i64 %.sroa.6.0.ph28.i.i.i, 8192
  br i1 %i.s, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store i32 0, ptr %i.f, align 8, !tbaa !280
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.t, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 0, ptr %i.u, align 4, !tbaa !3613
  br label %bb.p

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.e, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %.sroa.020.0.i.i12.i = phi ptr [ %i.a, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.020.0.copyload.le.i.i.i, %bb.e ], [ %i.a, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %.sroa.4.0.i.i11.i = phi i64 [ %i.r, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.e ], [ 8192, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %i.v = call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine8do_writeEPvm to i64), i64 0, ptr noundef %.sroa.020.0.i.i12.i, i64 noundef %.sroa.4.0.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3613
  switch i32 %i.v, label %bb.p [
    i32 -2, label %bb.f
    i32 -1, label %bb.l
    i32 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !9713, !nonnull !343, !align !538 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1793 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1463
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1794
  %i.ae = trunc i64 %i.z to i32
  %i.af = call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae)
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !1793 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1794
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i.i
  %i.ak = sub i64 %i.ah, %spec.select.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !9713, !nonnull !343, !align !538 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !306
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 %i.ak, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !333
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !333
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !735, !range !342, !noundef !343
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !730 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !745, !nonnull !343, !align !538
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !735
  %.pre68 = load ptr, ptr %i.d, align 8, !tbaa !9713
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.x, %bb.i ], [ %.pre68, %bb.j ] ; 2 uses
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !333
  %i.ba = load ptr, ptr %0, align 8, !tbaa !9714, !nonnull !343, !align !538 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !306
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !333
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !923
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINS4_6streamIRSB_EESt6vectorISE_SaISE_EEN9__gnu_cxx17__normal_iteratorIPKSE_SN_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSU_11async_writeISK_SN_EEN12async_simple4coro4LazyISY_EERT_T0_EUlOS14_E_SK_EENS12_IS14_EES16_RT1_ENUlS14_E0_clINSU_21callback_awaitor_baseISY_NSU_16callback_awaitorISY_EEE15awaitor_handlerEEEDaS14_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS14_iRS16_RKS1A_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bg), !inline_history !9708
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.ag

bb.k:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !730
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINSB_6streamIRSI_EESt6vectorISL_SaISL_EEN9__gnu_cxx17__normal_iteratorIPKSL_SU_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNS11_11async_writeISR_SU_EEN12async_simple4coro4LazyIS15_EERT_T0_EUlOS1B_E_SR_EENS19_IS1B_EES1D_RT1_ENUlS1B_E0_clINS11_21callback_awaitor_baseIS15_NS11_16callback_awaitorIS15_EEE15awaitor_handlerEEEDaS1B_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES1C_RKS1D_(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bi), !inline_history !9709
  br label %bb.ag

bb.l:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit, %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !9713, !nonnull !343, !align !538 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 144 ; 3 uses
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %i.bl, align 8, !tbaa !333
  %i.bm = icmp eq i64 %.sroa.0.0.copyload.i.i.i12, -9223372036854775808
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 152 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !735, !range !342, !noundef !343
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !730 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !745, !nonnull !343, !align !538
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bv = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !9713
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit16: ; preds = %bb.m, %bb.n
  %i.bw = phi ptr [ %i.bj, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  store i64 9223372036854775807, ptr %i.bl, align 8, !tbaa !333
  %i.bx = load ptr, ptr %0, align 8, !tbaa !9714, !nonnull !343, !align !538
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 280 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1463
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !1738
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 288 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1737
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = call i32 @BIO_read(ptr noundef %i.ca, ptr noundef %i.cb, i32 noundef %i.ce)
  %narrow.i17 = call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %i.cg = zext nneg i32 %narrow.i17 to i64
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1738
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !1737
  %spec.select.i.i18 = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cg)
  store ptr %i.ch, ptr %8, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %spec.select.i.i18, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %i.bx, ptr %5, align 8, !tbaa !951
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  call void @_ZNK4asio6detail20initiate_async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEclINS_3ssl6detail5io_opIS6_NSA_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINS9_6streamIRS6_EESt6vectorISE_SaISE_EEN9__gnu_cxx17__normal_iteratorIPKSE_SN_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSU_11async_writeISK_SN_EEN12async_simple4coro4LazyISY_EERT_T0_EUlOS14_E_SK_EENS12_IS14_EES16_RT1_ENUlS14_E0_clINSU_21callback_awaitor_baseISY_NSU_16callback_awaitorISY_EEE15awaitor_handlerEEEDaS14_EUlDpOT_E_EEEENS_14mutable_bufferEST_EEvS17_RKS16_OS1A_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %6), !inline_history !9710
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %i.bk, align 8, !tbaa !730
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  call void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINSB_6streamIRSI_EESt6vectorISL_SaISL_EEN9__gnu_cxx17__normal_iteratorIPKSL_SU_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNS11_11async_writeISR_SU_EEN12async_simple4coro4LazyIS15_EERT_T0_EUlOS1B_E_SR_EENS19_IS1B_EES1D_RT1_ENUlS1B_E0_clINS11_21callback_awaitor_baseIS15_NS11_16callback_awaitorIS15_EEE15awaitor_handlerEEEDaS1B_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES1C_RKS1D_(ptr noundef nonnull align 8 dereferenceable(96) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.cl), !inline_history !9709
  br label %bb.ag

bb.p:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm64EEEEclERNS1_6engineERSt10error_codeRm.exit
  %.not8 = icmp eq i32 %4, 0
  br i1 %.not8, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %0, align 8, !tbaa !9714, !nonnull !343, !align !538 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !9713, !nonnull !343, !align !538
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 320
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1738
  store ptr %i.cp, ptr %9, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !923
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm64EEEEENS0_8write_opINS4_6streamIRSB_EESt6vectorISE_SaISE_EEN9__gnu_cxx17__normal_iteratorIPKSE_SN_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSU_11async_writeISK_SN_EEN12async_simple4coro4LazyISY_EERT_T0_EUlOS14_E_SK_EENS12_IS14_EES16_RT1_ENUlS14_E0_clINSU_21callback_awaitor_baseISY_NSU_16callback_awaitorISY_EEE15awaitor_handlerEEEDaS14_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS14_iRS16_RKS1A_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.cu), !inline_history !9708
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %bb.ag

bb.r:                                             ; preds = %bb.p, %bb.a
  %.1 = phi i64 [ %.0, %bb.p ], [ %3, %bb.a ]     ; 3 uses
  %i.cv = icmp eq i64 %.1, -1
  br i1 %i.cv, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !566
  %.not61 = icmp eq i32 %i.cx, 0
  br i1 %.not61, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %1, ptr %i.cw, align 8, !tbaa !280
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %2, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !563
end_hunk_3
