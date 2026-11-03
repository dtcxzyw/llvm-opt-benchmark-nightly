Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.00?download=true
inline.NumInlined: 7368
inline.NumDeleted: 2382
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMs0_NtCsbCXxVlMkWND_6webrtc15peer_connectionNtB7_17RTCPeerConnection22set_remote_description0Cs4KPtkQIfQGm_13libp2p_webrtc:bb.a
bb.ri:                                            ; preds = %bb.rg
  store i8 1, ptr %i.azi, align 1, !noalias !10458
  store ptr %i.bbk, ptr %i.br, align 8, !noalias !10458
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @221, ptr %i.bbr, align 8, !noalias !10458
  %i.bbs = load ptr, ptr %i.azk, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 56
  %.val72.i.i = load ptr, ptr %i.bbt, align 8, !noalias !10459, !nonnull !17, !noundef !17
  %i.bbu = getelementptr i8, ptr %i.bbs, i64 64
  %.val73.i.i = load ptr, ptr %i.bbu, align 8, !noalias !10459, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %.val73.i.i, i64 16
  %i.bbw = load i64, ptr %i.bbv, align 8, !range !19, !invariant.load !17, !noalias !10459
  %i.bbx = add nsw i64 %i.bbw, -1
  %i.bby = and i64 %i.bbx, -16
  %i.bbz = getelementptr inbounds nuw i8, ptr %.val72.i.i, i64 %i.bby
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 16
  store i8 0, ptr %i.azi, align 1, !noalias !10458
  %i.bcb = getelementptr inbounds nuw i8, ptr %.val73.i.i, i64 24
  %i.bcc = load ptr, ptr %i.bcb, align 8, !invariant.load !17, !noalias !10459, !nonnull !17
  %i.bcd = invoke { ptr, ptr } %i.bcc(ptr noundef nonnull %i.bca, ptr noundef nonnull %i.bbk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @221)
          to label %bb.rj unwind label %bb.ry, !noalias !10459 ; 2 uses

bb.rj:                                            ; preds = %bb.ri
  %i.bce = extractvalue { ptr, ptr } %i.bcd, 0
  %i.bcf = extractvalue { ptr, ptr } %i.bcd, 1
  %i.bcg = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store ptr %i.bce, ptr %i.bcg, align 8, !noalias !10458
  %i.bch = getelementptr inbounds nuw i8, ptr %1, i64 2472
  store ptr %i.bcf, ptr %i.bch, align 8, !noalias !10458
  br label %bb.ro

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB1R_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit183.i.i: ; preds = %bb.wm, %bb.wl, %.body95.i.i
  store i8 0, ptr %i.bqs, align 1, !noalias !10458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !10458
  %i.bci = getelementptr inbounds nuw i8, ptr %1, i64 2456
  %i.bcj = load i8, ptr %i.bci, align 8, !range !38, !noalias !10458, !noundef !17
  %i.bck = trunc nuw i8 %i.bcj to i1
  br i1 %i.bck, label %bb.wn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i

bb.rk:                                            ; preds = %bb.wq, %bb.wo, %bb.wm, %bb.wk, %bb.wi, %bb.wg, %bb.we, %.thread219.i.i, %bb.wd, %bb.wb, %bb.wa, %bb.vz, %bb.vu, %bb.vh, %bb.uu, %bb.ur, %bb.uh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportEECs4KPtkQIfQGm_13libp2p_webrtc.exit134.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.rp, %bb.rl, %bb.ra, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportEECs4KPtkQIfQGm_13libp2p_webrtc.exit94.i.i
  %i.bcl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !10459
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.ra, %bb.qz, %bb.qy, %bb.qw
  %.pn.i.i = phi { ptr, i32 } [ %i.bax, %bb.qw ], [ %i.bay, %bb.ra ], [ %i.bay, %bb.qy ], [ %i.bay, %bb.qz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !10458
  call void @llvm.experimental.noalias.scope.decl(metadata !10480)
  call void @llvm.experimental.noalias.scope.decl(metadata !10481)
  %i.bcm = load ptr, ptr %i.bu, align 8, !alias.scope !10482, !noalias !10458, !nonnull !17, !noundef !17
  %i.bcn = atomicrmw add ptr %i.bcm, i64 -1 release, align 8, !noalias !10483
  %i.bco = icmp eq i64 %i.bcn, 1
  br i1 %i.bco, label %bb.rl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportEECs4KPtkQIfQGm_13libp2p_webrtc.exit94.i.i

bb.rl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportEECs4KPtkQIfQGm_13libp2p_webrtc.exit94.i.i unwind label %bb.rk, !noalias !10459

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportEECs4KPtkQIfQGm_13libp2p_webrtc.exit94.i.i, %bb.qt
  %.pn48.pn.pn.pn.pn.pn.pn.pn.ph.ph.i.i = phi { ptr, i32 } [ %i.bas, %bb.qt ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportEECs4KPtkQIfQGm_13libp2p_webrtc.exit94.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !10458
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i: ; preds = %bb.wo, %bb.wn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB1R_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit183.i.i, %bb.re
  %i.bcp = phi ptr [ %i.bqn, %bb.wn ], [ %i.bqn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB1R_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit183.i.i ], [ %i.bqn, %bb.wo ], [ %i.ayz, %bb.re ], [ %i.ayz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i ]
  %i.bcq = phi ptr [ %i.bqo, %bb.wn ], [ %i.bqo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB1R_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit183.i.i ], [ %i.bqo, %bb.wo ], [ %i.aza, %bb.re ], [ %i.aza, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i ]
  %i.bcr = phi ptr [ %i.bqp, %bb.wn ], [ %i.bqp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB1R_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit183.i.i ], [ %i.bqp, %bb.wo ], [ %i.azd, %bb.re ], [ %i.azd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i ]
  %i.bcs = phi ptr [ %i.bqq, %bb.wn ], [ %i.bqq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB1R_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit183.i.i ], [ %i.bqq, %bb.wo ], [ %i.aze, %bb.re ], [ %i.aze, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i ]
  %.pn48.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn.i.i, %bb.wn ], [ %.pn48.pn.pn.pn.pn.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB1R_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit183.i.i ], [ %.pn48.pn.pn.pn.pn.pn.i.i, %bb.wo ], [ %i.bbm, %bb.re ], [ %.pn48.pn.pn.pn.pn.pn.pn.pn.ph.ph.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i ]
  %i.bct = getelementptr inbounds nuw i8, ptr %1, i64 2456
  store i8 0, ptr %i.bct, align 8, !noalias !10458
  br label %.body.i.i

bb.rm:                                            ; preds = %bb.qh
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #31
          to label %.noexc110.i unwind label %bb.wr, !noalias !10396

.noexc110.i:                                      ; preds = %bb.rm
  unreachable

bb.rn:                                            ; preds = %bb.qh
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #31
          to label %.noexc111.i unwind label %bb.wr, !noalias !10396

.noexc111.i:                                      ; preds = %bb.rn
  unreachable

bb.ro:                                            ; preds = %bb.rj, %bb.qp
  %i.bcu = phi ptr [ %i.ayz, %bb.rj ], [ %i.anw, %bb.qp ] ; 13 uses
  %i.bcv = phi ptr [ %i.aza, %bb.rj ], [ %i.anv, %bb.qp ] ; 12 uses
  %i.bcw = phi ptr [ %i.azd, %bb.rj ], [ %.phi.trans.insert.i494, %bb.qp ] ; 13 uses
  %i.bcx = phi ptr [ %i.aze, %bb.rj ], [ %i.ayx, %bb.qp ] ; 13 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 4 uses
  %i.bcz = invoke { ptr, ptr } @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB10_4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB8_6marker4SendNtB2P_4SyncEL_EB2N_EL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bcy, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.rq unwind label %bb.rp, !noalias !10459 ; 2 uses

bb.rp:                                            ; preds = %bb.ro
  %i.bda = landingpad { ptr, i32 }
          cleanup
  %.val61.i.i = load ptr, ptr %i.bcy, align 8, !noalias !10458
  %i.bdb = getelementptr i8, ptr %1, i64 2472
  %.val62.i.i = load ptr, ptr %i.bdb, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtBW_4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB32_4SyncEL_EB30_EL_EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr %.val61.i.i, ptr nonnull %.val62.i.i) #29
          to label %.body95.i.i unwind label %bb.rk, !noalias !10459

bb.rq:                                            ; preds = %bb.ro
  %i.bdc = extractvalue { ptr, ptr } %i.bcz, 0    ; 2 uses
  %i.bdd = icmp eq ptr %i.bdc, null
  br i1 %i.bdd, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !10458
  br label %bb.ws

bb.rs:                                            ; preds = %bb.rq
  %i.bde = extractvalue { ptr, ptr } %i.bcz, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bde) ]
  %i.bdf = getelementptr inbounds nuw i8, ptr %1, i64 2454
  store i8 1, ptr %i.bdf, align 2, !noalias !10458
  %i.bdg = getelementptr inbounds nuw i8, ptr %1, i64 2376
  store ptr %i.bdc, ptr %i.bdg, align 8, !noalias !10458
  %i.bdh = getelementptr inbounds nuw i8, ptr %1, i64 2384
  store ptr %i.bde, ptr %i.bdh, align 8, !noalias !10458
  %.val63.i.i = load ptr, ptr %i.bcy, align 8, !noalias !10458 ; 5 uses
  %i.bdi = getelementptr i8, ptr %1, i64 2472     ; 2 uses
  %.val64.i.i = load ptr, ptr %i.bdi, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17 ; 5 uses
  %i.bdj = load ptr, ptr %.val64.i.i, align 8, !invariant.load !17, !noalias !10459 ; 2 uses
  %.not.i.i.i.i501 = icmp eq ptr %i.bdj, null
  br i1 %.not.i.i.i.i501, label %bb.ru, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val63.i.i) ]
  invoke void %i.bdj(ptr noundef nonnull %.val63.i.i)
          to label %bb.ru unwind label %bb.rw, !noalias !10459

bb.ru:                                            ; preds = %bb.rt, %bb.rs
  %i.bdk = getelementptr inbounds nuw i8, ptr %.val64.i.i, i64 8
  %i.bdl = load i64, ptr %i.bdk, align 8, !range !18, !invariant.load !17, !noalias !10459 ; 2 uses
  %i.bdm = icmp eq i64 %i.bdl, 0
  br i1 %i.bdm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtBW_4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB32_4SyncEL_EB30_EL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.bdn = getelementptr inbounds nuw i8, ptr %.val64.i.i, i64 16
  %i.bdo = load i64, ptr %i.bdn, align 8, !range !19, !invariant.load !17, !noalias !10459
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val63.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val63.i.i, i64 noundef range(i64 1, 0) %i.bdl, i64 noundef range(i64 1, 536870913) %i.bdo) #27, !noalias !10459
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtBW_4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB32_4SyncEL_EB30_EL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.rw:                                            ; preds = %bb.rt
  %i.bdp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %.val64.i.i, i64 8
  %i.bdr = load i64, ptr %i.bdq, align 8, !range !18, !invariant.load !17, !noalias !10459 ; 2 uses
  %i.bds = icmp eq i64 %i.bdr, 0
  br i1 %i.bds, label %.body95.i.i, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.bdt = getelementptr inbounds nuw i8, ptr %.val64.i.i, i64 16
  %i.bdu = load i64, ptr %i.bdt, align 8, !range !19, !invariant.load !17, !noalias !10459
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val63.i.i, i64 noundef range(i64 1, 0) %i.bdr, i64 noundef range(i64 1, 536870913) %i.bdu) #27, !noalias !10459
  br label %.body95.i.i

bb.ry:                                            ; preds = %bb.ri
  %i.bdv = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtBW_4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB32_4SyncEL_EB30_EL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.rv, %bb.ru
  %i.bdw = getelementptr inbounds nuw i8, ptr %1, i64 2408 ; 5 uses
  %i.bdx = load ptr, ptr %i.bdw, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 264
  %i.bdz = load i8, ptr %i.bdy, align 8, !range !38, !noalias !10459, !noundef !17
  %i.bea = trunc nuw i8 %i.bdz to i1
  br i1 %i.bea, label %bb.rz, label %.critedge.i.i

bb.rz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtBW_4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB32_4SyncEL_EB30_EL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !10458
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdx, i64 48
  %.val67.i.i = load ptr, ptr %i.beb, align 8, !noalias !10459, !nonnull !17, !noundef !17
  %.val80.i.i = load ptr, ptr %i.bcx, align 8, !noalias !10458, !nonnull !17, !noundef !17
  %i.bec = getelementptr i8, ptr %1, i64 2368
  %.val81.i.i = load ptr, ptr %i.bec, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %.val81.i.i, i64 16
  %i.bee = load i64, ptr %i.bed, align 8, !range !19, !invariant.load !17, !noalias !10459
  %i.bef = add nsw i64 %i.bee, -1
  %i.beg = and i64 %i.bef, -16
  %i.beh = getelementptr inbounds nuw i8, ptr %.val80.i.i, i64 %i.beg
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 16
  %i.bej = getelementptr inbounds nuw i8, ptr %.val81.i.i, i64 64
  %i.bek = load ptr, ptr %i.bej, align 8, !invariant.load !17, !noalias !10459, !nonnull !17
  %i.bel = invoke noundef i8 %i.bek(ptr noundef nonnull %i.bei)
          to label %bb.sa unwind label %bb.tn, !noalias !10459

bb.sa:                                            ; preds = %bb.rz
  %i.bem = getelementptr inbounds nuw i8, ptr %.val67.i.i, i64 16
  invoke void @_RNvMs_NtNtCsbCXxVlMkWND_6webrtc3api12media_engineNtB4_11MediaEngine18get_codecs_by_kind(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noundef nonnull align 8 %i.bem, i8 noundef %i.bel)
          to label %bb.sb unwind label %bb.tn, !noalias !10459

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.st, %bb.sc, %.split32.us.i22.i.i.i.i.invoke.i.i, %.split.us161.i.i.i.i.i.i
  %lpad.loopexit.split-lp3006 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq) #29
          to label %.body103.i.i unwind label %bb.rk, !noalias !10459

bb.sb:                                            ; preds = %bb.sa
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.val74.i.i = load ptr, ptr %i.ben, align 8, !noalias !10458, !nonnull !17, !noundef !17 ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.val75.i.i = load i64, ptr %i.beo, align 8, !noalias !10458, !noundef !17 ; 2 uses
  %.idx.i.i502 = mul nuw nsw i64 %.val75.i.i, 112
  %i.bep = getelementptr inbounds nuw i8, ptr %.val74.i.i, i64 %.idx.i.i502
  %.not.i.i108.i = icmp eq i64 %.val75.i.i, 0
  br i1 %.not.i.i108.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtBU_10rtp_senderNtB2Y_12RTCRtpSender21add_encoding_internal00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.sb
  %i.beq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bes = getelementptr inbounds nuw i8, ptr %i.av, i64 72 ; 3 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 3 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.bev = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bew = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 4 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  br label %bb.sc

bb.sc:                                            ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %i.bfa = phi ptr [ %.val74.i.i, %.lr.ph.i.i.i ], [ %i.bfb, %.backedge.i.i.i ] ; 3 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 112 ; 2 uses
  %i.bfc = getelementptr i8, ptr %i.bfa, i64 8
  %.val.i.i.i = load ptr, ptr %i.bfc, align 8, !noalias !10484, !nonnull !17, !noundef !17 ; 2 uses
  %i.bfd = getelementptr i8, ptr %i.bfa, i64 16
  %.val2.i.i.i = load i64, ptr %i.bfd, align 8, !noalias !10484, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !10485
  invoke void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val2.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 1)
          to label %.noexc97.i.i503 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10459

.noexc97.i.i503:                                  ; preds = %bb.sc
  call void @llvm.experimental.noalias.scope.decl(metadata !10486)
  %i.bfe = load i64, ptr %i.av, align 8, !range !21, !alias.scope !10486, !noalias !10485, !noundef !17
  switch i64 %i.bfe, label %default.unreachable2347 [
    i64 0, label %.preheader.i.i.i.i.i.i
    i64 1, label %bb.sq
    i64 2, label %bb.sr
  ]

.preheader.i.i.i.i.i.i:                           ; preds = %.noexc97.i.i503
  %i.bff = load i8, ptr %i.bez, align 2, !range !38, !alias.scope !10486, !noalias !10485
  %i.bfg = trunc nuw i8 %i.bff to i1
  %i.bfh = load ptr, ptr %i.bes, align 8, !alias.scope !10486, !noalias !10485, !nonnull !17 ; 5 uses
  %i.bfi = load i64, ptr %i.bet, align 8, !alias.scope !10486, !noalias !10485 ; 16 uses
  br i1 %i.bfg, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i
  %.promoted206.i.i.i.i.i.i = load i8, ptr %i.bey, align 8, !alias.scope !10486, !noalias !10485
  %.promoted157.i.i.i.i.i.i = load i64, ptr %i.beq, align 8, !alias.scope !10486, !noalias !10485 ; 13 uses
  %i.bfj = trunc nuw i8 %.promoted206.i.i.i.i.i.i to i1 ; 2 uses
  %i.bfk = icmp eq i64 %.promoted157.i.i.i.i.i.i, 0
  br i1 %i.bfk, label %bb.sf, label %bb.sd

bb.sd:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %.not.i.i.us.i.peel.i.i.i.i.i = icmp ult i64 %.promoted157.i.i.i.i.i.i, %i.bfi
  br i1 %.not.i.i.us.i.peel.i.i.i.i.i, label %bb.se, label %.split.i.i.us.i.peel.i.i.i.i.i

.split.i.i.us.i.peel.i.i.i.i.i:                   ; preds = %bb.sd
  %i.bfl = icmp eq i64 %.promoted157.i.i.i.i.i.i, %i.bfi
  br i1 %i.bfl, label %bb.sf, label %.split.us161.i.i.i.i.i.i

bb.se:                                            ; preds = %bb.sd
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %.promoted157.i.i.i.i.i.i
  %i.bfn = load i8, ptr %i.bfm, align 1, !alias.scope !10487, !noalias !10488, !noundef !17
  %i.bfo = icmp sgt i8 %i.bfn, -65
  br i1 %i.bfo, label %bb.sf, label %.split.us161.i.i.i.i.i.i

bb.sf:                                            ; preds = %bb.se, %.split.i.i.us.i.peel.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %.promoted157.i.i.i.i.i.i ; 4 uses
  %i.bfq = icmp samesign eq i64 %.promoted157.i.i.i.i.i.i, %i.bfi
  br i1 %i.bfq, label %.split166.us.i.i.i.i.i.i, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bfr = load i8, ptr %i.bfp, align 1, !noalias !10489, !noundef !17 ; 5 uses
  %i.bfs = icmp sgt i8 %i.bfr, -1
  br i1 %i.bfs, label %bb.sh, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.peel.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.peel.i.i.i.i.i: ; preds = %bb.sg
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfp, i64 1
  %i.bfu = and i8 %i.bfr, 31
  %i.bfv = zext nneg i8 %i.bfu to i32             ; 3 uses
  %i.bfw = add nuw nsw i64 %.promoted157.i.i.i.i.i.i, 1
  %i.bfx = icmp samesign ne i64 %i.bfw, %i.bfi
  call void @llvm.assume(i1 %i.bfx)
  %i.bfy = load i8, ptr %i.bft, align 1, !noalias !10489, !noundef !17
  %i.bfz = shl nuw nsw i32 %i.bfv, 6
  %i.bga = and i8 %i.bfy, 63
  %i.bgb = zext nneg i8 %i.bga to i32             ; 2 uses
  %i.bgc = or disjoint i32 %i.bfz, %i.bgb
  %i.bgd = icmp samesign ugt i8 %i.bfr, -33
  br i1 %i.bgd, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.peel.i.i.i.i.i, label %bb.si

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.peel.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.peel.i.i.i.i.i
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfp, i64 2
  %i.bgf = add nuw nsw i64 %.promoted157.i.i.i.i.i.i, 2
  %i.bgg = icmp samesign ne i64 %i.bgf, %i.bfi
  call void @llvm.assume(i1 %i.bgg)
  %i.bgh = load i8, ptr %i.bge, align 1, !noalias !10489, !noundef !17
  %i.bgi = shl nuw nsw i32 %i.bgb, 6
  %i.bgj = and i8 %i.bgh, 63
  %i.bgk = zext nneg i8 %i.bgj to i32
  %i.bgl = or disjoint i32 %i.bgi, %i.bgk         ; 2 uses
  %i.bgm = shl nuw nsw i32 %i.bfv, 12
  %i.bgn = or disjoint i32 %i.bgl, %i.bgm
  %i.bgo = icmp samesign ugt i8 %i.bfr, -17
  br i1 %i.bgo, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i.peel.i.i.i.i.i, label %bb.si

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i.peel.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.peel.i.i.i.i.i
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bfp, i64 3
  %i.bgq = add nuw nsw i64 %.promoted157.i.i.i.i.i.i, 3
  %i.bgr = icmp samesign ne i64 %i.bgq, %i.bfi
  call void @llvm.assume(i1 %i.bgr)
  %i.bgs = load i8, ptr %i.bgp, align 1, !noalias !10489, !noundef !17
  %i.bgt = shl nuw nsw i32 %i.bfv, 18
  %i.bgu = and i32 %i.bgt, 1835008
  %i.bgv = shl nuw nsw i32 %i.bgl, 6
  %i.bgw = and i8 %i.bgs, 63
  %i.bgx = zext nneg i8 %i.bgw to i32
  %i.bgy = or disjoint i32 %i.bgv, %i.bgx
  %i.bgz = or disjoint i32 %i.bgy, %i.bgu
  br label %bb.si

bb.sh:                                            ; preds = %bb.sg
  %i.bha = zext nneg i8 %i.bfr to i32
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i.peel.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.peel.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.peel.i.i.i.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i = phi i32 [ %i.bgn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.peel.i.i.i.i.i ], [ %i.bgz, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i.peel.i.i.i.i.i ], [ %i.bgc, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.peel.i.i.i.i.i ], [ %i.bha, %bb.sh ] ; 4 uses
  %i.bhb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bhb)
  br i1 %i.bfj, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bhc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i, 128
  br i1 %i.bhc, label %.lr.ph.i.i.i.i.i.i, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.bhd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i, 2048
  br i1 %i.bhd, label %.lr.ph.i.i.i.i.i.i, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.bhe = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i, 65536
  %..i.us.i.peel.i.i.i.i.i = select i1 %i.bhe, i64 3, i64 4
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.sl, %bb.sk, %bb.sj
  %.sroa.01.0.i.us.i.peel.i.i.i.i.i = phi i64 [ 2, %bb.sk ], [ %..i.us.i.peel.i.i.i.i.i, %bb.sl ], [ 1, %bb.sj ]
  %i.bhf = add i64 %.sroa.01.0.i.us.i.peel.i.i.i.i.i, %.promoted157.i.i.i.i.i.i ; 15 uses
  %i.bhg = icmp eq i64 %i.bhf, 0
  br i1 %i.bhg, label %bb.so, label %bb.sm

bb.sm:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.us.i.i.i.i.i.i = icmp ult i64 %i.bhf, %i.bfi
  br i1 %.not.i.i.us.i.i.i.i.i.i, label %bb.sn, label %.split.i.i.us.i.i.i.i.i.i

.split.i.i.us.i.i.i.i.i.i:                        ; preds = %bb.sm
  %i.bhh = icmp eq i64 %i.bhf, %i.bfi
  br i1 %i.bhh, label %bb.so, label %.split.us161.i.i.i.i.i.i

bb.sn:                                            ; preds = %bb.sm
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %i.bhf
  %i.bhj = load i8, ptr %i.bhi, align 1, !alias.scope !10487, !noalias !10490, !noundef !17
  %i.bhk = icmp sgt i8 %i.bhj, -65
  br i1 %i.bhk, label %bb.so, label %.split.us161.i.i.i.i.i.i

bb.so:                                            ; preds = %bb.sn, %.split.i.i.us.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bhl = icmp samesign eq i64 %i.bhf, %i.bfi
  br i1 %i.bhl, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %i.bhf
  %i.bhn = load i8, ptr %i.bhm, align 1, !noalias !10491, !noundef !17 ; 3 uses
  %i.bho = icmp sgt i8 %i.bhn, -1
  br i1 %i.bho, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.i.i.i.i.i: ; preds = %bb.sp
  %i.bhp = add nuw nsw i64 %i.bhf, 1
  %i.bhq = icmp samesign ne i64 %i.bhp, %i.bfi
  call void @llvm.assume(i1 %i.bhq)
  %i.bhr = icmp samesign ugt i8 %i.bhn, -33
  br i1 %i.bhr, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.i.i.i.i.i
  %i.bhs = add nuw nsw i64 %i.bhf, 2
  %i.bht = icmp samesign ne i64 %i.bhs, %i.bfi
  call void @llvm.assume(i1 %i.bht)
  %i.bhu = icmp samesign ugt i8 %i.bhn, -17
  br i1 %i.bhu, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.i.i.i.i.i
  %i.bhv = add nuw nsw i64 %i.bhf, 3
  %i.bhw = icmp samesign ne i64 %i.bhv, %i.bfi
  call void @llvm.assume(i1 %i.bhw)
  br label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i

.split.us161.i.i.i.i.i.i:                         ; preds = %bb.sn, %.split.i.i.us.i.i.i.i.i.i, %bb.se, %.split.i.i.us.i.peel.i.i.i.i.i
  %.lcssa40.i.i.i.i.i = phi i64 [ %.promoted157.i.i.i.i.i.i, %.split.i.i.us.i.peel.i.i.i.i.i ], [ %.promoted157.i.i.i.i.i.i, %bb.se ], [ %i.bhf, %.split.i.i.us.i.i.i.i.i.i ], [ %i.bhf, %bb.sn ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bfh, i64 noundef %i.bfi, i64 noundef %.lcssa40.i.i.i.i.i, i64 noundef %i.bfi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #31
          to label %.noexc98.i.i507 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10459

.noexc98.i.i507:                                  ; preds = %.split.us161.i.i.i.i.i.i
  unreachable

.split166.us.i.i.i.i.i.i:                         ; preds = %bb.sf
  br i1 %i.bfj, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i

bb.sq:                                            ; preds = %.noexc97.i.i503
  %i.bhx = load i64, ptr %i.bet, align 8, !alias.scope !10486, !noalias !10485, !noundef !17 ; 2 uses
  %i.bhy = load i64, ptr %i.beq, align 8, !alias.scope !10486, !noalias !10485, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.bhy, %i.bhx
  br i1 %.not.i.i.i.i.i.i, label %bb.ss, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i

bb.sr:                                            ; preds = %.noexc97.i.i503
  %i.bhz = load i64, ptr %i.ber, align 8, !alias.scope !10486, !noalias !10485, !noundef !17 ; 2 uses
  %i.bia = icmp eq i64 %i.bhz, -1
  %i.bib = load ptr, ptr %i.bes, align 8, !alias.scope !10486, !noalias !10485, !nonnull !17, !noundef !17 ; 8 uses
  %i.bic = load i64, ptr %i.bet, align 8, !alias.scope !10486, !noalias !10485, !noundef !17 ; 10 uses
  %i.bid = load ptr, ptr %i.beu, align 8, !alias.scope !10486, !noalias !10485, !nonnull !17, !noundef !17 ; 5 uses
  %i.bie = load i64, ptr %i.bev, align 8, !alias.scope !10486, !noalias !10485, !noundef !17 ; 15 uses
  %i.bif = add nsw i64 %i.bie, -1                 ; 5 uses
  br i1 %i.bia, label %bb.td, label %bb.sv

bb.ss:                                            ; preds = %bb.sq
  %i.big = load ptr, ptr %i.bes, align 8, !alias.scope !10486, !noalias !10485, !nonnull !17, !noundef !17
  %i.bih = load i8, ptr %i.bey, align 8, !alias.scope !10486, !noalias !10485, !noundef !17 ; 2 uses
  %i.bii = sub nuw i64 %i.bhx, %i.bhy             ; 4 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %i.big, i64 %i.bhy ; 2 uses
  %i.bik = icmp samesign ult i64 %i.bii, 16
  br i1 %i.bik, label %.lr.ph.i.i.i.i.i.i.i, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.bil = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.bih, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bij, i64 noundef range(i64 0, -9223372036854775808) %i.bii)
          to label %.noexc99.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10459 ; 2 uses

.noexc99.i.i:                                     ; preds = %bb.st
  %i.bim = extractvalue { i64, i64 } %i.bil, 0
  %i.bin = extractvalue { i64, i64 } %i.bil, 1
  %i.bio = trunc nuw i64 %i.bim to i1
  br i1 %i.bio, label %.loopexit43.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ss, %bb.su
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.bis, %bb.su ], [ 0, %bb.ss ] ; 3 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.biq = load i8, ptr %i.bip, align 1, !alias.scope !10492, !noalias !10493, !noundef !17
  %i.bir = icmp eq i8 %i.biq, %i.bih
  br i1 %i.bir, label %.loopexit43.i.i.i.i.i.i, label %bb.su

bb.su:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bis = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i.i.i.i = icmp eq i64 %i.bis, %i.bii
  br i1 %exitcond.not.i7.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit43.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc99.i.i
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.bin, %.noexc99.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.bit = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.bii
  call void @llvm.assume(i1 %i.bit)
  %i.biu = add nuw i64 %i.bhy, 1
  %i.biv = add i64 %i.biu, %.sroa.5.0.i.i.i.i.i.i.i
  br label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i

bb.sv:                                            ; preds = %bb.sr
  call void @llvm.experimental.noalias.scope.decl(metadata !10494)
  call void @llvm.experimental.noalias.scope.decl(metadata !10495)
  call void @llvm.experimental.noalias.scope.decl(metadata !10496)
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.bew, align 8, !alias.scope !10497, !noalias !10485 ; 2 uses
  %i.biw = add i64 %.promoted.i.i.i.i.i.i.i, %i.bif ; 2 uses
  %i.bix = icmp ult i64 %i.biw, %i.bic
  br i1 %i.bix, label %.lr.ph.i8.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i

.lr.ph.i8.i.i.i.i.i.i:                            ; preds = %bb.sv
  %i.biy = load i64, ptr %i.bex, align 8, !alias.scope !10497, !noalias !10485, !noundef !17
  %i.biz = load i64, ptr %i.beq, align 8, !alias.scope !10497, !noalias !10485
  %.fr60.i.i.i.i.i.i.i = freeze i64 %i.biz        ; 4 uses
  %i.bja = load i64, ptr %i.bey, align 8, !alias.scope !10497, !noalias !10485 ; 2 uses
  %i.bjb = sub i64 %i.bie, %i.bja
  %invariant.op = sub i64 1, %.fr60.i.i.i.i.i.i.i
  br label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.sy, %.lr.ph.i8.i.i.i.i.i.i
  %.sink70.i.i25.i.i.i.i.i = phi i64 [ %.sink70.i.i.i.i.i.i.i, %bb.sy ], [ %i.bhz, %.lr.ph.i8.i.i.i.i.i.i ] ; 3 uses
  %.sink71.i.i22.i.i.i.i.i = phi i64 [ %.sink71.i.i.i.i.i.i.i, %bb.sy ], [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i8.i.i.i.i.i.i ] ; 6 uses
  %i.bjc = phi i64 [ %i.bjl, %bb.sy ], [ %i.biw, %.lr.ph.i8.i.i.i.i.i.i ]
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bib, i64 %i.bjc
  %i.bje = load i8, ptr %i.bjd, align 1, !alias.scope !10495, !noalias !10493, !noundef !17
  %i.bjf = and i8 %i.bje, 63
  %i.bjg = zext nneg i8 %i.bjf to i64
  %i.bjh = shl nuw i64 1, %i.bjg
  %i.bji = and i64 %i.bjh, %i.biy
  %.not.i9.i.i.i.i.i.i = icmp eq i64 %i.bji, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %bb.sw, label %bb.sx

bb.sw:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.bjj = add i64 %.sink71.i.i22.i.i.i.i.i, %i.bie
  br label %bb.sy

bb.sx:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %..i.i10.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i25.i.i.i.i.i, i64 %.fr60.i.i.i.i.i.i.i) ; 2 uses
  %i.bjk = icmp ult i64 %..i.i10.i.i.i.i.i.i, %i.bie
  br i1 %i.bjk, label %.lr.ph2820, label %.preheader36.i.i.i.i.i.i.i.preheader

bb.sy:                                            ; preds = %bb.tc, %bb.tb, %bb.sw
  %.sink71.i.i.i.i.i.i.i = phi i64 [ %i.bkh, %bb.tc ], [ %i.bkg, %bb.tb ], [ %i.bjj, %bb.sw ] ; 2 uses
  %.sink70.i.i.i.i.i.i.i = phi i64 [ 0, %bb.tc ], [ %i.bjb, %bb.tb ], [ 0, %bb.sw ]
  %i.bjl = add i64 %.sink71.i.i.i.i.i.i.i, %i.bif ; 2 uses
  %i.bjm = icmp ult i64 %i.bjl, %i.bic
  br i1 %i.bjm, label %.lr.ph.split.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i

bb.sz:                                            ; preds = %.lr.ph2820
  %i.bjn = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i2818, 1 ; 2 uses
  %i.bjo = icmp ult i64 %i.bjn, %i.bie
  br i1 %i.bjo, label %.lr.ph2820, label %.preheader36.i.i.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.i.i.preheader:             ; preds = %bb.sz, %bb.sx
  %i.bjp = icmp ult i64 %.sink70.i.i25.i.i.i.i.i, %.fr60.i.i.i.i.i.i.i
  br i1 %i.bjp, label %.lr.ph2822, label %.split.us.i11.i.i.i.i.i.i

.lr.ph2820:                                       ; preds = %bb.sx, %bb.sz
  %.sroa.04.0.i.i.i.i.i.i.i2818 = phi i64 [ %i.bjn, %bb.sz ], [ %..i.i10.i.i.i.i.i.i, %bb.sx ] ; 4 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sroa.04.0.i.i.i.i.i.i.i2818
  %i.bjr = load i8, ptr %i.bjq, align 1, !alias.scope !10496, !noalias !10493, !noundef !17
  %i.bjs = add i64 %.sroa.04.0.i.i.i.i.i.i.i2818, %.sink71.i.i22.i.i.i.i.i ; 2 uses
  %i.bjt = icmp ult i64 %i.bjs, %i.bic
  call void @llvm.assume(i1 %i.bjt)
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bib, i64 %i.bjs
  %i.bjv = load i8, ptr %i.bju, align 1, !alias.scope !10495, !noalias !10493, !noundef !17
  %.not21.i.i.i.i.i.i.i = icmp eq i8 %i.bjr, %i.bjv
  br i1 %.not21.i.i.i.i.i.i.i, label %bb.sz, label %bb.tc

.preheader36.i.i.i.i.i.i.i:                       ; preds = %bb.ta
  %i.bjw = icmp ult i64 %.sink70.i.i25.i.i.i.i.i, %i.bjy
  br i1 %i.bjw, label %.lr.ph2822, label %.split.us.i11.i.i.i.i.i.i

.split.us.i11.i.i.i.i.i.i:                        ; preds = %.preheader36.i.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i.i
  %i.bjx = add i64 %.sink71.i.i22.i.i.i.i.i, %i.bie
  br label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i

.lr.ph2822:                                       ; preds = %.preheader36.i.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i.i.i2821 = phi i64 [ %i.bjy, %.preheader36.i.i.i.i.i.i.i ], [ %.fr60.i.i.i.i.i.i.i, %.preheader36.i.i.i.i.i.i.i.preheader ]
  %i.bjy = add i64 %.sroa.2.0.i.i.i.i.i.i.i2821, -1 ; 6 uses
  %i.bjz = icmp ult i64 %i.bjy, %i.bie
  br i1 %i.bjz, label %bb.ta, label %.split32.us.i22.i.i.i.i.invoke.i.i

bb.ta:                                            ; preds = %.lr.ph2822
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bid, i64 %i.bjy
  %i.bkb = load i8, ptr %i.bka, align 1, !alias.scope !10496, !noalias !10493, !noundef !17
  %i.bkc = add i64 %i.bjy, %.sink71.i.i22.i.i.i.i.i ; 2 uses
  %i.bkd = icmp ult i64 %i.bkc, %i.bic
  call void @llvm.assume(i1 %i.bkd)
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bib, i64 %i.bkc
  %i.bkf = load i8, ptr %i.bke, align 1, !alias.scope !10495, !noalias !10493, !noundef !17
  %.not20.i.i.i.i.i.i.i = icmp eq i8 %i.bkb, %i.bkf
  br i1 %.not20.i.i.i.i.i.i.i, label %.preheader36.i.i.i.i.i.i.i, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.bkg = add i64 %.sink71.i.i22.i.i.i.i.i, %i.bja
  br label %bb.sy

bb.tc:                                            ; preds = %.lr.ph2820
  %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i22.i.i.i.i.i, %invariant.op
  %i.bkh = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i.i.i2818
  br label %bb.sy

bb.td:                                            ; preds = %bb.sr
  call void @llvm.experimental.noalias.scope.decl(metadata !10498)
  call void @llvm.experimental.noalias.scope.decl(metadata !10499)
  call void @llvm.experimental.noalias.scope.decl(metadata !10500)
  %.promoted.i12.i.i.i.i.i.i = load i64, ptr %i.bew, align 8, !alias.scope !10501, !noalias !10485 ; 3 uses
  %i.bki = add i64 %.promoted.i12.i.i.i.i.i.i, %i.bif ; 3 uses
  %i.bkj = icmp ult i64 %i.bki, %i.bic
  br i1 %i.bkj, label %.lr.ph.i15.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i

.lr.ph.i15.i.i.i.i.i.i:                           ; preds = %bb.td
  %i.bkk = load i64, ptr %i.bex, align 8, !alias.scope !10501, !noalias !10485, !noundef !17 ; 2 uses
  %i.bkl = load i64, ptr %i.beq, align 8, !alias.scope !10501, !noalias !10485
  %.fr215.i.i.i.i.i.i = freeze i64 %i.bkl         ; 10 uses
  %i.bkm = load i64, ptr %i.bey, align 8, !alias.scope !10501, !noalias !10485
  %umax.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr215.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.bie) ; 2 uses
  %i.bkn = add i64 %.fr215.i.i.i.i.i.i, -1        ; 2 uses
  %.first_iter.i16.i.i.i.i.i.i = icmp ult i64 %i.bkn, %i.bie
  %reass.sub95.i.i.i.i.i = sub i64 1, %.fr215.i.i.i.i.i.i ; 2 uses
  br i1 %.first_iter.i16.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.i.i.preheader:          ; preds = %.lr.ph.i15.i.i.i.i.i.i
  %exitcond.not.i17.i.i.i.i.i.i2824.not = icmp ult i64 %.fr215.i.i.i.i.i.i, %i.bie
  br label %.lr.ph.split.us.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader:       ; preds = %.lr.ph.i15.i.i.i.i.i.i
  %exitcond.not.i17.i.i.us.i.i.i.i2829.not = icmp ult i64 %.fr215.i.i.i.i.i.i, %i.bie
  %.not34.i.us.i.i.us.i.i.i.i2832 = icmp eq i64 %.fr215.i.i.i.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.i.i.i:                 ; preds = %.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader, %bb.tg
  %.sink.i18.i28.i.us.i.i.i.i = phi i64 [ %.sink.i18.i.i.us.i.i.i.i, %bb.tg ], [ %.promoted.i12.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader ] ; 7 uses
  %i.bko = phi i64 [ %i.blm, %bb.tg ], [ %i.bki, %.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader ]
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bib, i64 %i.bko
  %i.bkq = load i8, ptr %i.bkp, align 1, !alias.scope !10499, !noalias !10493, !noundef !17
  %i.bkr = and i8 %i.bkq, 63
  %i.bks = zext nneg i8 %i.bkr to i64
  %i.bkt = shl nuw i64 1, %i.bks
  %i.bku = and i64 %i.bkt, %i.bkk
  %.not.us.i.i.i.us.i.i.i.i = icmp eq i64 %i.bku, 0
  br i1 %.not.us.i.i.i.us.i.i.i.i, label %bb.tf, label %.preheader35.i.i.i.us.i.i.i.i.preheader

.preheader35.i.i.i.us.i.i.i.i.preheader:          ; preds = %.lr.ph.split.us.i.i.i.us.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i.i.i2829.not, label %.lr.ph2831, label %.preheader.i19.us.i.i.us.i.i.i.i.preheader

.preheader35.i.i.i.us.i.i.i.i:                    ; preds = %.lr.ph2831
  %i.bkv = add i64 %.sroa.04.0.us.i.i.i.us.i.i.i.i2830, 1 ; 2 uses
  %exitcond.not.i17.i.i.us.i.i.i.i = icmp eq i64 %i.bkv, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i.i.i, label %.preheader.i19.us.i.i.us.i.i.i.i.preheader, label %.lr.ph2831

.preheader.i19.us.i.i.us.i.i.i.i.preheader:       ; preds = %.preheader35.i.i.i.us.i.i.i.i, %.preheader35.i.i.i.us.i.i.i.i.preheader
  br i1 %.not34.i.us.i.i.us.i.i.i.i2832, label %.split.us.i21.i.i.i.i.i.i, label %.lr.ph2834

.lr.ph2831:                                       ; preds = %.preheader35.i.i.i.us.i.i.i.i.preheader, %.preheader35.i.i.i.us.i.i.i.i
  %.sroa.04.0.us.i.i.i.us.i.i.i.i2830 = phi i64 [ %i.bkv, %.preheader35.i.i.i.us.i.i.i.i ], [ %.fr215.i.i.i.i.i.i, %.preheader35.i.i.i.us.i.i.i.i.preheader ] ; 4 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sroa.04.0.us.i.i.i.us.i.i.i.i2830
  %i.bkx = load i8, ptr %i.bkw, align 1, !alias.scope !10500, !noalias !10493, !noundef !17
  %i.bky = add i64 %.sroa.04.0.us.i.i.i.us.i.i.i.i2830, %.sink.i18.i28.i.us.i.i.i.i ; 2 uses
  %i.bkz = icmp ult i64 %i.bky, %i.bic
  call void @llvm.assume(i1 %i.bkz)
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bib, i64 %i.bky
  %i.blb = load i8, ptr %i.bla, align 1, !alias.scope !10499, !noalias !10493, !noundef !17
  %.not21.us.i.i.i.us.i.i.i.i = icmp eq i8 %i.bkx, %i.blb
  br i1 %.not21.us.i.i.i.us.i.i.i.i, label %.preheader35.i.i.i.us.i.i.i.i, label %bb.te

bb.te:                                            ; preds = %.lr.ph2831
  %.reass282.i.reass.i.us.i.i.i.i = add i64 %.sink.i18.i28.i.us.i.i.i.i, %reass.sub95.i.i.i.i.i
  %i.blc = add i64 %.reass282.i.reass.i.us.i.i.i.i, %.sroa.04.0.us.i.i.i.us.i.i.i.i2830
  br label %bb.tg

.preheader.i19.us.i.i.us.i.i.i.i:                 ; preds = %.lr.ph2834
  %.not34.i.us.i.i.us.i.i.i.i = icmp eq i64 %i.bld, 0
  br i1 %.not34.i.us.i.i.us.i.i.i.i, label %.split.us.i21.i.i.i.i.i.i, label %.lr.ph2834

.lr.ph2834:                                       ; preds = %.preheader.i19.us.i.i.us.i.i.i.i.preheader, %.preheader.i19.us.i.i.us.i.i.i.i
  %.sroa.2.0.us.i.us.i.i.us.i.i.i.i2833 = phi i64 [ %i.bld, %.preheader.i19.us.i.i.us.i.i.i.i ], [ %.fr215.i.i.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.i.i.preheader ]
  %i.bld = add i64 %.sroa.2.0.us.i.us.i.i.us.i.i.i.i2833, -1 ; 4 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bid, i64 %i.bld
  %i.blf = load i8, ptr %i.ble, align 1, !alias.scope !10500, !noalias !10493, !noundef !17
  %i.blg = add i64 %i.bld, %.sink.i18.i28.i.us.i.i.i.i ; 2 uses
  %i.blh = icmp ult i64 %i.blg, %i.bic
  call void @llvm.assume(i1 %i.blh)
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bib, i64 %i.blg
  %i.blj = load i8, ptr %i.bli, align 1, !alias.scope !10499, !noalias !10493, !noundef !17
  %.not20.us.i.us.i.i.us.i.i.i.i = icmp eq i8 %i.blf, %i.blj
  br i1 %.not20.us.i.us.i.i.us.i.i.i.i, label %.preheader.i19.us.i.i.us.i.i.i.i, label %.split.us.i.i.us.i.i.i.i

.split.us.i.i.us.i.i.i.i:                         ; preds = %.lr.ph2834
  %i.blk = add i64 %.sink.i18.i28.i.us.i.i.i.i, %i.bkm
  br label %bb.tg

bb.tf:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i.i.i.i
  %i.bll = add i64 %.sink.i18.i28.i.us.i.i.i.i, %i.bie
  br label %bb.tg

bb.tg:                                            ; preds = %bb.tf, %.split.us.i.i.us.i.i.i.i, %bb.te
  %.sink.i18.i.i.us.i.i.i.i = phi i64 [ %i.bll, %bb.tf ], [ %i.blc, %bb.te ], [ %i.blk, %.split.us.i.i.us.i.i.i.i ] ; 2 uses
  %i.blm = add i64 %.sink.i18.i.i.us.i.i.i.i, %i.bif ; 2 uses
  %i.bln = icmp ult i64 %i.blm, %i.bic
  br i1 %i.bln, label %.lr.ph.split.us.i.i.i.us.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.preheader, %bb.tj
  %.sink.i18.i28.i.i.i.i.i = phi i64 [ %.sink.i18.i.i.i.i.i.i, %bb.tj ], [ %.promoted.i12.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.blo = phi i64 [ %i.bme, %bb.tj ], [ %i.bki, %.lr.ph.split.us.i.i.i.i.i.i.i.preheader ]
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bib, i64 %i.blo
  %i.blq = load i8, ptr %i.blp, align 1, !alias.scope !10499, !noalias !10493, !noundef !17
  %i.blr = and i8 %i.blq, 63
  %i.bls = zext nneg i8 %i.blr to i64
  %i.blt = shl nuw i64 1, %i.bls
  %i.blu = and i64 %i.blt, %i.bkk
  %.not.us.i.i.i.i.i.i.i = icmp eq i64 %i.blu, 0
  br i1 %.not.us.i.i.i.i.i.i.i, label %bb.ti, label %.preheader35.i.i.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i.i.i2824.not, label %.lr.ph2826, label %.preheader.split.i21.i.i.i.i.i.i

.preheader35.i.i.i.i.i.i.i:                       ; preds = %.lr.ph2826
  %i.blv = add i64 %.sroa.04.0.us.i.i.i.i.i.i.i2825, 1 ; 2 uses
  %exitcond.not.i17.i.i.i.i.i.i = icmp eq i64 %i.blv, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i.i.i, label %.preheader.split.i21.i.i.i.i.i.i, label %.lr.ph2826

.preheader.split.i21.i.i.i.i.i.i:                 ; preds = %.preheader35.i.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i = icmp eq i64 %.fr215.i.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i.i.i, label %.split.us.i21.i.i.i.i.i.i, label %.split32.us.i22.i.i.i.i.invoke.i.i

.lr.ph2826:                                       ; preds = %.preheader35.i.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i.i.i2825 = phi i64 [ %i.blv, %.preheader35.i.i.i.i.i.i.i ], [ %.fr215.i.i.i.i.i.i, %.preheader35.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sroa.04.0.us.i.i.i.i.i.i.i2825
  %i.blx = load i8, ptr %i.blw, align 1, !alias.scope !10500, !noalias !10493, !noundef !17
  %i.bly = add i64 %.sroa.04.0.us.i.i.i.i.i.i.i2825, %.sink.i18.i28.i.i.i.i.i ; 2 uses
  %i.blz = icmp ult i64 %i.bly, %i.bic
  call void @llvm.assume(i1 %i.blz)
  %i.bma = getelementptr inbounds nuw i8, ptr %i.bib, i64 %i.bly
  %i.bmb = load i8, ptr %i.bma, align 1, !alias.scope !10499, !noalias !10493, !noundef !17
  %.not21.us.i.i.i.i.i.i.i = icmp eq i8 %i.blx, %i.bmb
  br i1 %.not21.us.i.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i.i, label %bb.th

bb.th:                                            ; preds = %.lr.ph2826
  %.reass282.i.reass.i.i.i.i.i = add i64 %.sink.i18.i28.i.i.i.i.i, %reass.sub95.i.i.i.i.i
  %i.bmc = add i64 %.reass282.i.reass.i.i.i.i.i, %.sroa.04.0.us.i.i.i.i.i.i.i2825
  br label %bb.tj

bb.ti:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %i.bmd = add i64 %.sink.i18.i28.i.i.i.i.i, %i.bie
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.th
  %.sink.i18.i.i.i.i.i.i = phi i64 [ %i.bmd, %bb.ti ], [ %i.bmc, %bb.th ] ; 2 uses
  %i.bme = add i64 %.sink.i18.i.i.i.i.i.i, %i.bif ; 2 uses
  %i.bmf = icmp ult i64 %i.bme, %i.bic
  br i1 %i.bmf, label %.lr.ph.split.us.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i

.split.us.i21.i.i.i.i.i.i:                        ; preds = %.preheader.i19.us.i.i.us.i.i.i.i.preheader, %.preheader.i19.us.i.i.us.i.i.i.i, %.preheader.split.i21.i.i.i.i.i.i
  %.sink.i18.i28.i13.i.i.i.i = phi i64 [ %.sink.i18.i28.i.i.i.i.i, %.preheader.split.i21.i.i.i.i.i.i ], [ %.sink.i18.i28.i.us.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.i.i ], [ %.sink.i18.i28.i.us.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.i.i.preheader ]
  %i.bmg = add i64 %.sink.i18.i28.i13.i.i.i.i, %i.bie
  br label %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i

.split32.us.i22.i.i.i.i.invoke.i.i:               ; preds = %.preheader.split.i21.i.i.i.i.i.i, %.lr.ph2822
  %3 = phi i64 [ %i.bjy, %.lr.ph2822 ], [ %i.bkn, %.preheader.split.i21.i.i.i.i.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef range(i64 0, -9223372036854775808) %i.bie, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #31
          to label %.split32.us.i22.i.i.i.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10459

.split32.us.i22.i.i.i.i.cont.i.i:                 ; preds = %.split32.us.i22.i.i.i.i.invoke.i.i
  unreachable

_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i: ; preds = %bb.sy, %bb.tj, %bb.tg, %bb.su, %bb.td, %bb.sv, %.noexc99.i.i, %bb.sq, %.split166.us.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10485
  br label %.backedge.i.i.i

_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i.i.i.i.i.i, %bb.sp, %.split.us.i21.i.i.i.i.i.i, %.split.us.i11.i.i.i.i.i.i, %.loopexit43.i.i.i.i.i.i, %.split166.us.i.i.i.i.i.i, %bb.so, %bb.si
  %.sroa.10.0.i.i.i.i.i = phi i64 [ %i.bfi, %.split166.us.i.i.i.i.i.i ], [ %i.bjx, %.split.us.i11.i.i.i.i.i.i ], [ %i.bfi, %bb.so ], [ %i.biv, %.loopexit43.i.i.i.i.i.i ], [ %i.bmg, %.split.us.i21.i.i.i.i.i.i ], [ %.promoted157.i.i.i.i.i.i, %bb.si ], [ %i.bhf, %bb.sp ], [ %i.bhf, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i.i.i.i.i.i ], [ %i.bhf, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i.i.i.i.i.i ], [ %i.bhf, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10485
  %i.bmh = sub nuw i64 %.val2.i.i.i, %.sroa.10.0.i.i.i.i.i
  %i.bmi = icmp eq i64 %i.bmh, 3
  br i1 %i.bmi, label %.split.i.i.i, label %.backedge.i.i.i

.split.i.i.i:                                     ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i
  %i.bmj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.10.0.i.i.i.i.i ; 2 uses
  %i.bmk = load i16, ptr %i.bmj, align 1
  %i.bml = xor i16 %i.bmk, 29810
  %i.bmm = getelementptr i8, ptr %i.bmj, i64 2
  %i.bmn = load i8, ptr %i.bmm, align 1
  %i.bmo = zext i8 %i.bmn to i16
  %i.bmp = xor i16 %i.bmo, 120
  %i.bmq = or i16 %i.bml, %i.bmp
  %i.bmr = icmp ne i16 %i.bmq, 0
  %i.bms = zext i1 %i.bmr to i32
  %i.bmt = icmp eq i32 %i.bms, 0
  br i1 %i.bmt, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtBU_10rtp_senderNtB2Y_12RTCRtpSender21add_encoding_internal00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.split.i.i.i, %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i
  %.not26.i.i.i = icmp eq ptr %i.bfb, %i.bep
  br i1 %.not26.i.i.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtBU_10rtp_senderNtB2Y_12RTCRtpSender21add_encoding_internal00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.sc

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtBU_10rtp_senderNtB2Y_12RTCRtpSender21add_encoding_internal00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %.backedge.i.i.i, %.split.i.i.i, %bb.sb
  %.lcssa20.i.i.i = phi i1 [ false, %bb.sb ], [ false, %.backedge.i.i.i ], [ true, %.split.i.i.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.tl unwind label %bb.tk, !noalias !10459

bb.tk:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtBU_10rtp_senderNtB2Y_12RTCRtpSender21add_encoding_internal00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.bmu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.body103.i.i unwind label %bb.tm, !noalias !10459

bb.tl:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtBU_10rtp_senderNtB2Y_12RTCRtpSender21add_encoding_internal00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i504 unwind label %bb.tn, !noalias !10459

bb.tm:                                            ; preds = %bb.tk
  %i.bmv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !10459
  unreachable

bb.tn:                                            ; preds = %bb.tl, %bb.sa, %bb.rz
  %i.bmw = landingpad { ptr, i32 }
          cleanup
  br label %.body103.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i504: ; preds = %bb.tl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !10458
  br i1 %.lcssa20.i.i.i, label %bb.tp, label %bb.to

.critedge.i.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtBW_4sync3ArcDNtCsfFK4IlX6vQW_11interceptor10RTCPReaderNtNtB4_6marker4SendNtB32_4SyncEL_EB30_EL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !10458
  br label %bb.to

bb.to:                                            ; preds = %.critedge.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i504
  store ptr null, ptr %i.bp, align 8, !noalias !10458
  br label %bb.tw

bb.tp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !10458
  %i.bmx = invoke noundef nonnull ptr @_RNvNtNtCsdUmLYe2zWzt_4rand4rngs6thread3rng()
          to label %.noexc108.i.i unwind label %bb.ty, !noalias !10459 ; 5 uses

.noexc108.i.i:                                    ; preds = %bb.tp
  store ptr %i.bmx, ptr %i.au, align 8, !noalias !10458
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 16 ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmx, i64 336 ; 2 uses
  %i.bna = load i64, ptr %i.bmz, align 16, !alias.scope !10502, !noalias !10503, !noundef !17 ; 2 uses
  %i.bnb = icmp ugt i64 %i.bna, 63
  br i1 %i.bnb, label %bb.tq, label %bb.tt

bb.tq:                                            ; preds = %.noexc108.i.i
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmx, i64 272
  invoke void @_RNvXs2_NtNtCsdUmLYe2zWzt_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCsfjWNAcMKzW0_11rand_chacha6chacha12ChaCha12CoreNtNtCsAw9FzwlFkx_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bnc, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.bmy)
          to label %._crit_edge.i106.i.i unwind label %bb.tr, !noalias !10459

._crit_edge.i106.i.i:                             ; preds = %bb.tq
  %.pre.i107.i.i = load ptr, ptr %i.au, align 8, !alias.scope !10504, !noalias !10458
  br label %bb.tt

bb.tr:                                            ; preds = %bb.tq
  %i.bnd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10505)
  call void @llvm.experimental.noalias.scope.decl(metadata !10506)
  call void @llvm.experimental.noalias.scope.decl(metadata !10507)
  %i.bne = load ptr, ptr %i.au, align 8, !alias.scope !10508, !noalias !10458, !nonnull !17, !noundef !17 ; 2 uses
  %i.bnf = load i64, ptr %i.bne, align 8, !noalias !10509, !noundef !17
  %i.bng = add i64 %i.bnf, -1                     ; 2 uses
  store i64 %i.bng, ptr %i.bne, align 8, !noalias !10509
  %i.bnh = icmp eq i64 %i.bng, 0
  br i1 %i.bnh, label %bb.ts, label %.body110.i.i

bb.ts:                                            ; preds = %bb.tr
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtNtCsdUmLYe2zWzt_4rand4rngs9reseeding12ReseedingRngNtNtCsfjWNAcMKzW0_11rand_chacha6chacha12ChaCha12CoreNtNtCsAw9FzwlFkx_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #26
          to label %.body110.i.i unwind label %bb.tv, !noalias !10459

bb.tt:                                            ; preds = %._crit_edge.i106.i.i, %.noexc108.i.i
  %i.bni = phi ptr [ %i.bmx, %.noexc108.i.i ], [ %.pre.i107.i.i, %._crit_edge.i106.i.i ] ; 2 uses
  %i.bnj = phi i64 [ %i.bna, %.noexc108.i.i ], [ 0, %._crit_edge.i106.i.i ] ; 2 uses
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bmy, i64 %i.bnj
  %i.bnl = load i32, ptr %i.bnk, align 4, !alias.scope !10502, !noalias !10503, !noundef !17 ; 2 uses
  %i.bnm = add nuw nsw i64 %i.bnj, 1
  store i64 %i.bnm, ptr %i.bmz, align 16, !alias.scope !10502, !noalias !10503
  call void @llvm.experimental.noalias.scope.decl(metadata !10510)
  call void @llvm.experimental.noalias.scope.decl(metadata !10511)
  call void @llvm.experimental.noalias.scope.decl(metadata !10512)
  %i.bnn = load i64, ptr %i.bni, align 8, !noalias !10513, !noundef !17
  %i.bno = add i64 %i.bnn, -1                     ; 2 uses
  store i64 %i.bno, ptr %i.bni, align 8, !noalias !10513
  %i.bnp = icmp eq i64 %i.bno, 0
  br i1 %i.bnp, label %bb.tu, label %bb.tz

bb.tu:                                            ; preds = %bb.tt
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtNtCsdUmLYe2zWzt_4rand4rngs9reseeding12ReseedingRngNtNtCsfjWNAcMKzW0_11rand_chacha6chacha12ChaCha12CoreNtNtCsAw9FzwlFkx_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #26
          to label %bb.tz unwind label %bb.ty, !noalias !10459

bb.tv:                                            ; preds = %bb.ts
  %i.bnq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !10459
  unreachable

bb.tw:                                            ; preds = %bb.vj, %bb.to
  %i.bnr = phi ptr [ %i.bqv, %bb.vj ], [ %i.bcu, %bb.to ] ; 5 uses
  %i.bns = phi ptr [ %i.bqw, %bb.vj ], [ %i.bcv, %bb.to ] ; 5 uses
  %i.bnt = phi ptr [ %i.bqx, %bb.vj ], [ %i.bcw, %bb.to ] ; 3 uses
  %i.bnu = phi ptr [ %i.bqy, %bb.vj ], [ %i.bcx, %bb.to ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !10458
  %i.bnv = getelementptr inbounds nuw i8, ptr %1, i64 2408 ; 3 uses
  %i.bnw = load ptr, ptr %i.bnv, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 96
  %.val69.i.i = load ptr, ptr %i.bnx, align 8, !noalias !10459, !nonnull !17, !noundef !17 ; 2 uses
  %i.bny = atomicrmw add ptr %.val69.i.i, i64 1 monotonic, align 8, !noalias !10459
  %i.bnz = icmp slt i64 %i.bny, 0
  br i1 %i.bnz, label %bb.tx, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs7J19AImF0JC_15portable_atomic10AtomicBoolENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.tx:                                            ; preds = %bb.tw
  call void @llvm.trap()
  unreachable

bb.ty:                                            ; preds = %bb.tu, %bb.tp
  %i.boa = landingpad { ptr, i32 }
          cleanup
  br label %.body110.i.i

bb.tz:                                            ; preds = %bb.tu, %bb.tt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10458
  store i32 %i.bnl, ptr %i.bcy, align 8, !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !10458
  %i.bob = load ptr, ptr %i.bdw, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 104
  %i.bod = invoke noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender17RTPSenderInternalE9downgradeCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.boc)
          to label %bb.ub unwind label %bb.ua, !noalias !10459 ; 2 uses

bb.ua:                                            ; preds = %bb.tz
  %i.boe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit179.sink.split.sink.split.i.i

bb.ub:                                            ; preds = %bb.tz
  store ptr %i.bod, ptr %i.bo, align 8, !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !10458
  %i.bof = load ptr, ptr %i.bdw, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 40
  %.val65.i.i = load ptr, ptr %i.bog, align 8, !noalias !10459, !nonnull !17, !noundef !17 ; 3 uses
  %i.boh = atomicrmw add ptr %.val65.i.i, i64 1 monotonic, align 8, !noalias !10459
  %i.boi = icmp slt i64 %i.boh, 0
  br i1 %i.boi, label %bb.uc, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit113.i.i

bb.uc:                                            ; preds = %bb.ub
  call void @llvm.trap()
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportEECs4KPtkQIfQGm_13libp2p_webrtc.exit134.i.i: ; preds = %bb.ur, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit117.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !10458
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender17RTPSenderInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit179.sink.split.sink.split.i.i unwind label %bb.rk, !noalias !10459

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit113.i.i: ; preds = %bb.ub
  store ptr %.val65.i.i, ptr %i.bn, align 8, !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !10458
  invoke void @_RNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEE3newCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bm, ptr noundef null, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223)
          to label %bb.ue unwind label %bb.ud, !noalias !10459

bb.ud:                                            ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit113.i.i
  %i.boj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit117.i.i
end_hunk_0
