Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.00?download=true
inline.NumInlined: 7368
inline.NumDeleted: 2382
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMs0_NtCsbCXxVlMkWND_6webrtc15peer_connectionNtB7_17RTCPeerConnection22set_remote_description0Cs4KPtkQIfQGm_13libp2p_webrtc:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit119.i: ; preds = %bb.xd, %bb.xc, %.body74.i, %bb.oc
  %i.avn = phi ptr [ %i.anx, %bb.oc ], [ %i.avh, %.body74.i ], [ %i.avh, %bb.xd ], [ %i.avh, %bb.xc ] ; 3 uses
  %i.avo = phi ptr [ %i.any, %bb.oc ], [ %i.avi, %.body74.i ], [ %i.avi, %bb.xd ], [ %i.avi, %bb.xc ] ; 3 uses
  %.pn35.pn.pn.pn.i = phi { ptr, i32 } [ %i.aqo, %bb.oc ], [ %.pn35.pn.pn.i, %.body74.i ], [ %.pn35.pn.pn.i, %bb.xd ], [ %.pn35.pn.pn.i, %bb.xc ] ; 3 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %1, i64 2338
  store i8 0, ptr %i.avp, align 2, !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !10395
  %i.avq = getelementptr inbounds nuw i8, ptr %1, i64 2339
  %i.avr = load i8, ptr %i.avq, align 1, !range !38, !noalias !10395, !noundef !17
  %i.avs = trunc nuw i8 %i.avr to i1
  br i1 %i.avs, label %bb.xe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit121.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit121.i: ; preds = %bb.xf, %bb.xe, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit119.i, %bb.ny
  %i.avt = phi ptr [ %i.anx, %bb.ny ], [ %i.avn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit119.i ], [ %i.avn, %bb.xf ], [ %i.avn, %bb.xe ] ; 3 uses
  %i.avu = phi ptr [ %i.any, %bb.ny ], [ %i.avo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit119.i ], [ %i.avo, %bb.xf ], [ %i.avo, %bb.xe ] ; 3 uses
  %.pn35.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aql, %bb.ny ], [ %.pn35.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit119.i ], [ %.pn35.pn.pn.pn.i, %bb.xf ], [ %.pn35.pn.pn.pn.i, %bb.xe ] ; 3 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %1, i64 2339
  store i8 0, ptr %i.avv, align 1, !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !10395
  %i.avw = getelementptr inbounds nuw i8, ptr %1, i64 2340
  %i.avx = load i8, ptr %i.avw, align 4, !range !38, !noalias !10395, !noundef !17
  %i.avy = trunc nuw i8 %i.avx to i1
  br i1 %i.avy, label %bb.xg, label %.body61.i

.body61.i:                                        ; preds = %bb.xh, %bb.xg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit121.i, %bb.nv
  %i.avz = phi ptr [ %i.anx, %bb.nv ], [ %i.avt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit121.i ], [ %i.avt, %bb.xh ], [ %i.avt, %bb.xg ] ; 3 uses
  %i.awa = phi ptr [ %i.any, %bb.nv ], [ %i.avu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit121.i ], [ %i.avu, %bb.xh ], [ %i.avu, %bb.xg ] ; 3 uses
  %.pn35.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aqj, %bb.nv ], [ %.pn35.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerEECs4KPtkQIfQGm_13libp2p_webrtc.exit121.i ], [ %.pn35.pn.pn.pn.pn.i, %bb.xh ], [ %.pn35.pn.pn.pn.pn.i, %bb.xg ] ; 3 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %1, i64 2340
  store i8 0, ptr %i.awb, align 4, !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !10395
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 2341
  %i.awd = load i8, ptr %i.awc, align 1, !range !38, !noalias !10395, !noundef !17
  %i.awe = trunc nuw i8 %i.awd to i1
  br i1 %i.awe, label %bb.xi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs7J19AImF0JC_15portable_atomic10AtomicBoolEECs4KPtkQIfQGm_13libp2p_webrtc.exit124.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs7J19AImF0JC_15portable_atomic10AtomicBoolEECs4KPtkQIfQGm_13libp2p_webrtc.exit124.i: ; preds = %bb.xj, %bb.xi, %.body61.i, %bb.np
  %i.awf = phi ptr [ %i.anx, %bb.np ], [ %i.avz, %.body61.i ], [ %i.avz, %bb.xj ], [ %i.avz, %bb.xi ] ; 3 uses
  %i.awg = phi ptr [ %i.any, %bb.np ], [ %i.awa, %.body61.i ], [ %i.awa, %bb.xj ], [ %i.awa, %bb.xi ] ; 3 uses
  %.pn35.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.apy, %bb.np ], [ %.pn35.pn.pn.pn.pn.pn.i, %.body61.i ], [ %.pn35.pn.pn.pn.pn.pn.i, %bb.xj ], [ %.pn35.pn.pn.pn.pn.pn.i, %bb.xi ] ; 3 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %1, i64 2341
  store i8 0, ptr %i.awh, align 1, !noalias !10395
  %i.awi = getelementptr inbounds nuw i8, ptr %1, i64 2342 ; 2 uses
  %i.awj = load i8, ptr %i.awi, align 2, !range !38, !noalias !10395, !noundef !17
  %i.awk = trunc nuw i8 %i.awj to i1
  br i1 %i.awk, label %bb.xk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit126.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit126.i: ; preds = %bb.xl, %bb.xk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs7J19AImF0JC_15portable_atomic10AtomicBoolEECs4KPtkQIfQGm_13libp2p_webrtc.exit124.i
  store i8 0, ptr %i.awi, align 2, !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !10395
  %i.awl = getelementptr inbounds nuw i8, ptr %1, i64 2343
  %i.awm = load i8, ptr %i.awl, align 1, !range !38, !noalias !10395, !noundef !17
  %i.awn = trunc nuw i8 %i.awm to i1
  br i1 %i.awn, label %bb.xm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit128.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit128.i: ; preds = %bb.xn, %bb.xm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit126.i, %bb.nk
  %i.awo = phi ptr [ %i.anx, %bb.nk ], [ %i.awf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit126.i ], [ %i.awf, %bb.xn ], [ %i.awf, %bb.xm ]
  %i.awp = phi ptr [ %i.any, %bb.nk ], [ %i.awg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit126.i ], [ %i.awg, %bb.xn ], [ %i.awg, %bb.xm ]
  %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aps, %bb.nk ], [ %.pn35.pn.pn.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit126.i ], [ %.pn35.pn.pn.pn.pn.pn.pn.i, %bb.xn ], [ %.pn35.pn.pn.pn.pn.pn.pn.i, %bb.xm ]
  %i.awq = getelementptr inbounds nuw i8, ptr %1, i64 2343
  store i8 0, ptr %i.awq, align 1, !noalias !10395
  br label %bb.po

bb.po:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit128.i, %.body.i517
  %i.awr = phi ptr [ %i.awo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit128.i ], [ %i.anx, %.body.i517 ]
  %i.aws = phi ptr [ %i.awp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit128.i ], [ %i.any, %.body.i517 ]
  %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsc13h7DQFCSE_5tokio4sync6notify6NotifyEECs4KPtkQIfQGm_13libp2p_webrtc.exit128.i ], [ %eh.lpad-body.i518, %.body.i517 ]
  %i.awt = getelementptr inbounds nuw i8, ptr %1, i64 2344 ; 2 uses
  %i.awu = load i8, ptr %i.awt, align 8, !range !38, !noalias !10395, !noundef !17
  %i.awv = trunc nuw i8 %i.awu to i1
  br i1 %i.awv, label %bb.xp, label %bb.xo

bb.pp:                                            ; preds = %bb.xo, %bb.nc
  %i.aww = phi ptr [ %i.awr, %bb.xo ], [ %i.anx, %bb.nc ] ; 2 uses
  %i.awx = phi ptr [ %i.aws, %bb.xo ], [ %i.any, %bb.nc ] ; 2 uses
  %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.xo ], [ %i.apg, %bb.nc ] ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %1, i64 2345
  %i.awz = load i8, ptr %i.awy, align 1, !range !38, !noalias !10395, !noundef !17
  %i.axa = trunc nuw i8 %i.awz to i1
  br i1 %i.axa, label %bb.xq, label %bb.pq

bb.pq:                                            ; preds = %bb.xq, %bb.pp, %bb.na
  %i.axb = phi ptr [ %i.aww, %bb.xq ], [ %i.aww, %bb.pp ], [ %i.anx, %bb.na ] ; 2 uses
  %i.axc = phi ptr [ %i.awx, %bb.xq ], [ %i.awx, %bb.pp ], [ %i.any, %bb.na ] ; 2 uses
  %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.xq ], [ %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.pp ], [ %i.ape, %bb.na ] ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %1, i64 2345
  store i8 0, ptr %i.axd, align 1, !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !10395
  %i.axe = getelementptr inbounds nuw i8, ptr %1, i64 2346 ; 2 uses
  %i.axf = load i8, ptr %i.axe, align 2, !range !38, !noalias !10395, !noundef !17
  %i.axg = trunc nuw i8 %i.axf to i1
  br i1 %i.axg, label %bb.xs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor11InterceptorNtNtB4_6marker4SendNtB1S_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit132.i

bb.pr:                                            ; preds = %bb.mx
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #31
          to label %.noexc525 unwind label %bb.yb

.noexc525:                                        ; preds = %bb.pr
  unreachable

bb.ps:                                            ; preds = %bb.mx
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #31
          to label %.noexc526 unwind label %bb.yb

.noexc526:                                        ; preds = %bb.ps
  unreachable

bb.pt:                                            ; preds = %bb.pa, %bb.mz
  %i.axh = phi ptr [ %i.anx, %bb.pa ], [ %i.anw, %bb.mz ] ; 6 uses
  %i.axi = phi ptr [ %i.any, %bb.pa ], [ %i.anv, %bb.mz ] ; 5 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %1, i64 2360 ; 3 uses
  %i.axk = invoke fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB7_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEE4lock0Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.axj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.pv unwind label %bb.pu, !noalias !10396 ; 2 uses

bb.pu:                                            ; preds = %bb.pt
  %i.axl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.axj) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.pb, !noalias !10396

bb.pv:                                            ; preds = %bb.pt
  %i.axm = icmp eq ptr %i.axk, null
  br i1 %i.axm, label %bb.pw, label %bb.px

bb.pw:                                            ; preds = %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !10395
  br label %.thread1502

bb.px:                                            ; preds = %bb.pv
  %i.axn = getelementptr inbounds nuw i8, ptr %1, i64 2304 ; 2 uses
  store ptr %i.axk, ptr %i.axn, align 8, !noalias !10395
  %i.axo = getelementptr inbounds nuw i8, ptr %1, i64 2472
  %i.axp = load i8, ptr %i.axo, align 8, !range !32, !noalias !10395, !noundef !17
  %cond.i.i508 = icmp eq i8 %i.axp, 3
  br i1 %cond.i.i508, label %bb.py, label %.thread.i509

bb.py:                                            ; preds = %bb.px
  %i.axq = getelementptr inbounds nuw i8, ptr %1, i64 2464
  %i.axr = load i8, ptr %i.axq, align 8, !range !32, !noalias !10395, !noundef !17
  %cond.i.i.i511 = icmp eq i8 %i.axr, 3
  br i1 %cond.i.i.i511, label %bb.pz, label %.thread.i509

bb.pz:                                            ; preds = %bb.py
  %i.axs = getelementptr inbounds nuw i8, ptr %1, i64 2392
  %i.axt = load i8, ptr %i.axs, align 8, !range !30, !noalias !10395, !noundef !17
  %cond.i.i.i.i512 = icmp eq i8 %i.axt, 4
  br i1 %cond.i.i.i.i512, label %bb.qa, label %.thread.i509

bb.qa:                                            ; preds = %bb.pz
  %i.axu = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.axu)
          to label %bb.qd unwind label %bb.qb, !noalias !10396

bb.qb:                                            ; preds = %bb.qa
  %i.axv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %.val2.i.i.i.i.i513 = load ptr, ptr %i.axw, align 8, !noalias !10395, !align !16, !noundef !17 ; 2 uses
  %i.axx = icmp eq ptr %.val2.i.i.i.i.i513, null
  br i1 %i.axx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.axy = getelementptr i8, ptr %1, i64 2416
  %.val3.i.i.i.i.i514 = load ptr, ptr %i.axy, align 8, !noalias !10395
  %i.axz = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i513, i64 24
  %i.aya = load ptr, ptr %i.axz, align 8, !noalias !10396, !nonnull !17, !noundef !17
  invoke void %i.aya(ptr noundef %.val3.i.i.i.i.i514)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.qf, !noalias !10396, !inline_history !1

bb.qd:                                            ; preds = %bb.qa
  %i.ayb = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %.val.i.i.i.i.i515 = load ptr, ptr %i.ayb, align 8, !noalias !10395, !align !16, !noundef !17 ; 2 uses
  %i.ayc = icmp eq ptr %.val.i.i.i.i.i515, null
  br i1 %i.ayc, label %.thread.i509, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.ayd = getelementptr i8, ptr %1, i64 2416
  %.val1.i.i.i.i.i516 = load ptr, ptr %i.ayd, align 8, !noalias !10395
  %i.aye = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i515, i64 24
  %i.ayf = load ptr, ptr %i.aye, align 8, !noalias !10396, !nonnull !17, !noundef !17
  invoke void %i.ayf(ptr noundef %.val1.i.i.i.i.i516)
          to label %.thread.i509 unwind label %bb.wx, !noalias !10396, !inline_history !60

bb.qf:                                            ; preds = %bb.qc
  %i.ayg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !10396
  unreachable

.thread.i509:                                     ; preds = %bb.qe, %bb.qd, %bb.pz, %bb.py, %bb.px
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !10395
  %.val55.i = load ptr, ptr %i.axn, align 8, !noalias !10395, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %.val55.i, i64 40
  %3 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %.val55.i, i64 1
  %5 = getelementptr inbounds nuw i8, <2 x ptr> %4, <2 x i64> <i64 1992, i64 40>
  %i.ayi = getelementptr inbounds nuw i8, ptr %1, i64 1992
  %i.ayj = getelementptr inbounds nuw i8, ptr %1, i64 2336
  store i8 0, ptr %i.ayj, align 8, !noalias !10395
  %i.ayk = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.ayl = load ptr, ptr %i.ayk, align 8, !noalias !10395, !nonnull !17, !noundef !17 ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.ayn = load ptr, ptr %i.aym, align 8, !noalias !10395, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %.sroa.7155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2392
  store ptr %i.ayl, ptr %.sroa.7155.0..sroa_idx.i, align 8, !noalias !10395
  %.sroa.8156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2400
  store ptr %i.ayn, ptr %.sroa.8156.0..sroa_idx.i, align 8, !noalias !10395
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2432
  store ptr %i.ayi, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !10395
  %.sroa.11.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %1, i64 2440
  store ptr %i.ayh, ptr %.sroa.11.0..sroa_idx.i510, align 8, !noalias !10395
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2458 ; 2 uses
  store i8 0, ptr %.sroa.13.0..sroa_idx.i, align 2, !noalias !10395
  br label %bb.qi

bb.qg:                                            ; preds = %bb.wu, %.body112.i
  %i.ayo = phi ptr [ %i.bnr, %bb.wu ], [ %i.bwo, %.body112.i ]
  %i.ayp = phi ptr [ %i.bns, %bb.wu ], [ %i.bwp, %.body112.i ]
  %.pn33.i497 = phi { ptr, i32 } [ %i.bwx, %bb.wu ], [ %eh.lpad-body113.i, %.body112.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !10395
  %i.ayq = getelementptr inbounds nuw i8, ptr %1, i64 2304
  invoke void @_RNvXsd_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ayq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.pb, !noalias !10396

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.wx, %bb.qg, %bb.qc, %bb.qb, %bb.pu
  %i.ayr = phi ptr [ %i.bxb, %bb.wx ], [ %i.ayo, %bb.qg ], [ %i.axh, %bb.qb ], [ %i.axh, %bb.pu ], [ %i.axh, %bb.qc ]
  %i.ays = phi ptr [ %i.bxc, %bb.wx ], [ %i.ayp, %bb.qg ], [ %i.axi, %bb.qb ], [ %i.axi, %bb.pu ], [ %i.axi, %bb.qc ]
  %.pn35.i498 = phi { ptr, i32 } [ %i.bxd, %bb.wx ], [ %.pn33.i497, %bb.qg ], [ %i.axv, %bb.qb ], [ %i.axl, %bb.pu ], [ %i.axv, %bb.qc ]
  %i.ayt = getelementptr inbounds nuw i8, ptr %1, i64 2336 ; 2 uses
  %i.ayu = load i8, ptr %i.ayt, align 8, !range !38, !noalias !10395, !noundef !17
  %i.ayv = trunc nuw i8 %i.ayu to i1
  br i1 %i.ayv, label %bb.wz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local10TrackLocalNtNtB4_6marker4SendNtB28_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.qh:                                            ; preds = %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !10395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !10395
  %.phi.trans.insert.i494 = getelementptr inbounds nuw i8, ptr %1, i64 2458 ; 4 uses
  %.pre.i495 = load i8, ptr %.phi.trans.insert.i494, align 2, !range !30, !noalias !10458
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 2360 ; 4 uses
  switch i8 %.pre.i495, label %default.unreachable2347 [
    i8 0, label %._crit_edge2181
    i8 1, label %bb.rm
    i8 2, label %bb.rn
    i8 3, label %bb.qp
    i8 4, label %bb.qq
  ]

._crit_edge2181:                                  ; preds = %bb.qh
  %.phi.trans.insert2182 = getelementptr inbounds nuw i8, ptr %1, i64 2432
  %i.ayx = load <2 x ptr>, ptr %.phi.trans.insert2182, align 8, !noalias !10458
  %.phi.trans.insert2186 = getelementptr inbounds nuw i8, ptr %1, i64 2392
  %.pre2187 = load ptr, ptr %.phi.trans.insert2186, align 8, !noalias !10458
  %.phi.trans.insert2188 = getelementptr inbounds nuw i8, ptr %1, i64 2400
  %.pre2189 = load ptr, ptr %.phi.trans.insert2188, align 8, !noalias !10458
  br label %bb.qi

bb.qi:                                            ; preds = %._crit_edge2181, %.thread.i509
  %i.ayy = phi ptr [ %i.axh, %.thread.i509 ], [ %i.anw, %._crit_edge2181 ] ; 7 uses
  %i.ayz = phi ptr [ %i.axi, %.thread.i509 ], [ %i.anv, %._crit_edge2181 ] ; 7 uses
  %i.aza = phi ptr [ %i.ayn, %.thread.i509 ], [ %.pre2189, %._crit_edge2181 ]
  %i.azb = phi ptr [ %i.ayl, %.thread.i509 ], [ %.pre2187, %._crit_edge2181 ]
  %i.azc = phi ptr [ %.sroa.13.0..sroa_idx.i, %.thread.i509 ], [ %.phi.trans.insert.i494, %._crit_edge2181 ] ; 7 uses
  %i.azd = phi ptr [ %i.axj, %.thread.i509 ], [ %i.ayw, %._crit_edge2181 ] ; 8 uses
  %i.aze = phi <2 x ptr> [ %5, %.thread.i509 ], [ %i.ayx, %._crit_edge2181 ]
  %i.azf = getelementptr inbounds nuw i8, ptr %1, i64 2457
  %i.azg = getelementptr inbounds nuw i8, ptr %1, i64 2456
  %i.azh = getelementptr inbounds nuw i8, ptr %1, i64 2455 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %1, i64 2452
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 2408 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.azi, i8 0, i64 6, i1 false), !noalias !10458
  store <2 x ptr> %i.aze, ptr %i.azj, align 8, !noalias !10458
  store i8 1, ptr %i.azf, align 1, !noalias !10458
  store ptr %i.azb, ptr %i.azd, align 8, !noalias !10458
  %i.azk = getelementptr inbounds nuw i8, ptr %1, i64 2368
  store ptr %i.aza, ptr %i.azk, align 8, !noalias !10458
  %i.azl = getelementptr inbounds nuw i8, ptr %1, i64 2448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !10458
  %i.azm = invoke noundef nonnull ptr @_RNvNtNtCsdUmLYe2zWzt_4rand4rngs6thread3rng()
          to label %.noexc.i109.i unwind label %bb.qr, !noalias !10459 ; 5 uses

.noexc.i109.i:                                    ; preds = %bb.qi
  store ptr %i.azm, ptr %i.ax, align 8, !noalias !10458
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 16 ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azm, i64 336 ; 2 uses
  %i.azp = load i64, ptr %i.azo, align 16, !alias.scope !10460, !noalias !10461, !noundef !17 ; 2 uses
  %i.azq = icmp ugt i64 %i.azp, 63
  br i1 %i.azq, label %bb.qj, label %bb.qm

bb.qj:                                            ; preds = %.noexc.i109.i
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azm, i64 272
  invoke void @_RNvXs2_NtNtCsdUmLYe2zWzt_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCsfjWNAcMKzW0_11rand_chacha6chacha12ChaCha12CoreNtNtCsAw9FzwlFkx_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.azr, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.azn)
          to label %._crit_edge.i.i.i unwind label %bb.qk, !noalias !10459

._crit_edge.i.i.i:                                ; preds = %bb.qj
  %.pre.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !10462, !noalias !10458
  br label %bb.qm

bb.qk:                                            ; preds = %bb.qj
  %i.azs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10463)
  call void @llvm.experimental.noalias.scope.decl(metadata !10464)
  call void @llvm.experimental.noalias.scope.decl(metadata !10465)
  %i.azt = load ptr, ptr %i.ax, align 8, !alias.scope !10466, !noalias !10458, !nonnull !17, !noundef !17 ; 2 uses
  %i.azu = load i64, ptr %i.azt, align 8, !noalias !10467, !noundef !17
  %i.azv = add i64 %i.azu, -1                     ; 2 uses
  store i64 %i.azv, ptr %i.azt, align 8, !noalias !10467
  %i.azw = icmp eq i64 %i.azv, 0
  br i1 %i.azw, label %bb.ql, label %.body.i.i

bb.ql:                                            ; preds = %bb.qk
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtNtCsdUmLYe2zWzt_4rand4rngs9reseeding12ReseedingRngNtNtCsfjWNAcMKzW0_11rand_chacha6chacha12ChaCha12CoreNtNtCsAw9FzwlFkx_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #26
          to label %.body.i.i unwind label %bb.qo, !noalias !10459

bb.qm:                                            ; preds = %._crit_edge.i.i.i, %.noexc.i109.i
  %i.azx = phi ptr [ %i.azm, %.noexc.i109.i ], [ %.pre.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.azy = phi i64 [ %i.azp, %.noexc.i109.i ], [ 0, %._crit_edge.i.i.i ] ; 2 uses
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.azy
  %i.baa = load i32, ptr %i.azz, align 4, !alias.scope !10460, !noalias !10461, !noundef !17 ; 2 uses
  %i.bab = add nuw nsw i64 %i.azy, 1
  store i64 %i.bab, ptr %i.azo, align 16, !alias.scope !10460, !noalias !10461
  call void @llvm.experimental.noalias.scope.decl(metadata !10468)
  call void @llvm.experimental.noalias.scope.decl(metadata !10469)
  call void @llvm.experimental.noalias.scope.decl(metadata !10470)
  %i.bac = load i64, ptr %i.azx, align 8, !noalias !10471, !noundef !17
  %i.bad = add i64 %i.bac, -1                     ; 2 uses
  store i64 %i.bad, ptr %i.azx, align 8, !noalias !10471
  %i.bae = icmp eq i64 %i.bad, 0
  br i1 %i.bae, label %bb.qn, label %bb.qs

bb.qn:                                            ; preds = %bb.qm
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtNtCsdUmLYe2zWzt_4rand4rngs9reseeding12ReseedingRngNtNtCsfjWNAcMKzW0_11rand_chacha6chacha12ChaCha12CoreNtNtCsAw9FzwlFkx_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #26
          to label %bb.qs unwind label %bb.qr, !noalias !10459

bb.qo:                                            ; preds = %bb.ql
  %i.baf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !10459
  unreachable

bb.qp:                                            ; preds = %bb.qh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !10458
  br label %bb.ro

bb.qq:                                            ; preds = %bb.qh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !10458
  br label %bb.ut

.body.i.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i, %bb.qr, %bb.ql, %bb.qk
  %i.bag = phi ptr [ %i.bco, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i ], [ %i.ayy, %bb.qr ], [ %i.ayy, %bb.ql ], [ %i.ayy, %bb.qk ]
  %i.bah = phi ptr [ %i.bcp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i ], [ %i.ayz, %bb.qr ], [ %i.ayz, %bb.ql ], [ %i.ayz, %bb.qk ]
  %i.bai = phi ptr [ %i.bcq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i ], [ %i.azc, %bb.qr ], [ %i.azc, %bb.ql ], [ %i.azc, %bb.qk ]
  %i.baj = phi ptr [ %i.bcr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i ], [ %i.azd, %bb.qr ], [ %i.azd, %bb.ql ], [ %i.azd, %bb.qk ] ; 3 uses
  %.pn48.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn.pn.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.i.i ], [ %i.ban, %bb.qr ], [ %i.azs, %bb.ql ], [ %i.azs, %bb.qk ]
  %i.bak = getelementptr inbounds nuw i8, ptr %1, i64 2457 ; 2 uses
  %i.bal = load i8, ptr %i.bak, align 1, !range !38, !noalias !10458, !noundef !17
  %i.bam = trunc nuw i8 %i.bal to i1
  br i1 %i.bam, label %bb.wp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local10TrackLocalNtNtB4_6marker4SendNtB28_4SyncEL_EECs4KPtkQIfQGm_13libp2p_webrtc.exit187.i.i

bb.qr:                                            ; preds = %bb.qn, %bb.qi
  %i.ban = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.qs:                                            ; preds = %bb.qn, %bb.qm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !10458
  store i32 %i.baa, ptr %i.azl, align 8, !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !10458
  %i.bao = load ptr, ptr %i.azj, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 104
  %i.baq = invoke noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender17RTPSenderInternalE9downgradeCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bap)
          to label %bb.qu unwind label %bb.qt, !noalias !10459 ; 2 uses

bb.qt:                                            ; preds = %bb.qs
  %i.bar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i

bb.qu:                                            ; preds = %bb.qs
  store ptr %i.baq, ptr %i.bv, align 8, !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !10458
  %i.bas = load ptr, ptr %i.azj, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 40
  %.val66.i.i = load ptr, ptr %i.bat, align 8, !noalias !10459, !nonnull !17, !noundef !17 ; 3 uses
  %i.bau = atomicrmw add ptr %.val66.i.i, i64 1 monotonic, align 8, !noalias !10459
  %i.bav = icmp slt i64 %i.bau, 0
  br i1 %i.bav, label %bb.qv, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.qv:                                            ; preds = %bb.qu
  call void @llvm.trap()
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportEECs4KPtkQIfQGm_13libp2p_webrtc.exit94.i.i: ; preds = %bb.rl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !10458
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender17RTPSenderInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future16SrtpWriterFutureEECs4KPtkQIfQGm_13libp2p_webrtc.exit185.sink.split.sink.split.i.i unwind label %bb.rk, !noalias !10459

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.qu
  store ptr %.val66.i.i, ptr %i.bu, align 8, !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !10458
  invoke void @_RNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEE3newCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bt, ptr noundef null, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219)
          to label %bb.qx unwind label %bb.qw, !noalias !10459

bb.qw:                                            ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.baw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.qx:                                            ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc14dtls_transport16RTCDtlsTransportENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !10458
  invoke void @_RNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp7session7SessionEEE3newCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bs, ptr noundef null, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220)
          to label %bb.rb unwind label %bb.qy, !noalias !10459

bb.qy:                                            ; preds = %bb.qx
  %i.bax = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !10458
  call void @llvm.experimental.noalias.scope.decl(metadata !10472)
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10473)
  call void @llvm.experimental.noalias.scope.decl(metadata !10474)
  %i.baz = load ptr, ptr %i.bay, align 8, !alias.scope !10475, !noalias !10458, !noundef !17 ; 2 uses
  %i.bba = icmp eq ptr %i.baz, null
  br i1 %i.bba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.bbb = atomicrmw sub ptr %i.baz, i64 1 release, align 8, !noalias !10476
  %i.bbc = icmp eq i64 %i.bbb, 1
  br i1 %i.bbc, label %bb.ra, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.ra:                                            ; preds = %bb.qz
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamE9drop_slowCsbCXxVlMkWND_6webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bay) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs4OgC6VQp05E_11webrtc_srtp6stream6StreamEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.rk, !noalias !10459

bb.rb:                                            ; preds = %bb.qx
  %i.bbd = load ptr, ptr %i.azj, align 8, !noalias !10458, !nonnull !17, !align !16, !noundef !17
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 24
  %.val77.i.i = load ptr, ptr %i.bbe, align 8, !noalias !10459, !nonnull !17, !noundef !17 ; 2 uses
  %i.bbf = atomicrmw add ptr %.val77.i.i, i64 1 monotonic, align 8, !noalias !10459
  %i.bbg = icmp slt i64 %i.bbf, 0
  br i1 %i.bbg, label %bb.rc, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.rc:                                            ; preds = %bb.rb
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_future19SequenceTransformerENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.rb
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !10477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i64 48, i1 false), !noalias !10458
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false), !noalias !10458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !10458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !10458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !10458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !10458
  store i64 1, ptr %i.aw, align 8, !noalias !10477
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 1, ptr %i.bbh, align 8, !noalias !10477
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store ptr %i.baq, ptr %i.bbi, align 8, !noalias !10458
end_hunk_0
