Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.05?download=true
inline.NumInlined: 3172
inline.NumDeleted: 1268
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNCNvXs0_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio10connectionNtB9_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer13poll_outbound00Bd_:bb.a
  %.sroa.4.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i76, align 8, !alias.scope !1871
  %.sroa.5.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i77, align 8, !alias.scope !1871
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.qs, ptr %i.qw, align 8, !alias.scope !1871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qc, ptr noundef nonnull %i.qi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.gd unwind label %bb.gc

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.fz

bb.ge:                                            ; preds = %bb.fx, %bb.gc
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.qx, %bb.gc ], [ %i.qn, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.gl

bb.gf:                                            ; preds = %bb.fz, %bb.fu, %.thread162, %bb.gj
  %i.qy = invoke { ptr, ptr } @_RINvNtCsgV0iE8Xkxiy_15futures_channel7oneshot7channelINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEECs4KPtkQIfQGm_13libp2p_webrtc()
          to label %.thread181 unwind label %bb.gk ; 2 uses

bb.gg:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.qz = load ptr, ptr @_RNvNCNCNvXs0_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio10connectionNtBb_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer13poll_outbound0010___CALLSITE, align 8, !nonnull !14, !align !13, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr @18, ptr %i.af, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.ra, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.val51 = load ptr, ptr %i.pn, align 8, !nonnull !14, !noundef !14
  %i.rb = getelementptr inbounds nuw i8, ptr %.val51, i64 16
  %i.rc = invoke noundef i16 @_RNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB2_14RTCDataChannel2id(ptr noundef nonnull align 8 %i.rb)
          to label %bb.gh unwind label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 48
  store i16 %i.rc, ptr %i.ad, align 2
  store ptr %i.ad, ptr %i.ae, align 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @6, ptr %i.re, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ae, ptr %i.rf, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @7, ptr %i.rg, align 8
  store i64 1, ptr %i.ah, align 8
  %.sroa.7127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %.sroa.7127.0..sroa_idx, align 8
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 2, ptr %.sroa.8128.0..sroa_idx, align 8
  %.sroa.9129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.rd, ptr %.sroa.9129.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvXs0_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio10connectionNtBb_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer13poll_outbound000Bf_(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.gj unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.gl

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.gf

bb.gk:                                            ; preds = %bb.fs, %bb.fq, %bb.fo, %bb.gf
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

.thread181:                                       ; preds = %bb.gf
  %i.rj = extractvalue { ptr, ptr } %i.qy, 0      ; 2 uses
  %i.rk = extractvalue { ptr, ptr } %i.qy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 26
  store ptr %i.rj, ptr %i.w, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.rm, align 8
  store ptr %i.rk, ptr %i.pj, align 8
  store i8 0, ptr %i.pm, align 1
  %i.rn = load ptr, ptr %i.pn, align 8, !nonnull !14, !noundef !14
  store i8 0, ptr %i.rl, align 2
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.rn, ptr %i.ro, align 8
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.rj, ptr %.sroa.6141.0..sroa_idx, align 8
  %.sroa.7142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %.sroa.7142.0..sroa_idx, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.gr

bb.gl:                                            ; preds = %bb.ge, %bb.gi, %bb.ie, %bb.gk
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %bb.ie ], [ %i.ri, %bb.gk ], [ %i.rh, %bb.gi ], [ %.pn20.pn.pn.pn, %bb.ge ] ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.rr = load i8, ptr %i.rq, align 1, !range !22, !noundef !14
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.ig, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.gm:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8146.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11117.sroa.6, i64 40, i1 false)
  store i8 0, ptr %i.pm, align 1
  invoke void @_RNvXsi_NtNtCsl9hx9jpF0W9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.j
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex15MutexLockFutureNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.gm
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 0, ptr %i.ru, align 1
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  %i.rw = load ptr, ptr %i.rv, align 8, !alias.scope !1874, !nonnull !14, !noundef !14
  %i.rx = atomicrmw add ptr %i.rw, i64 -1 release, align 8, !noalias !1874
  %i.ry = icmp eq i64 %i.rx, 1
  br i1 %i.ry, label %bb.go, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEEECs4KPtkQIfQGm_13libp2p_webrtc.exit82

bb.go:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEE9drop_slowCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rv) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEEECs4KPtkQIfQGm_13libp2p_webrtc.exit82 unwind label %bb.gp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex15MutexLockFutureNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit, %bb.l, %bb.gp
  %.pn45 = phi { ptr, i32 } [ %i.rz, %bb.gp ], [ %.pn43, %bb.l ], [ %.pn43, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex15MutexLockFutureNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit ]
  store i8 2, ptr %i.ai, align 4
  resume { ptr, i32 } %.pn45

bb.gp:                                            ; preds = %bb.ia, %bb.go
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEEECs4KPtkQIfQGm_13libp2p_webrtc.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEEECs4KPtkQIfQGm_13libp2p_webrtc.exit82: ; preds = %bb.hz, %bb.ia, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit, %bb.go
  %.sroa.8146.sroa.0.0 = phi i64 [ %.sroa.8168.i.sroa.0.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ %.sroa.8168.i.sroa.0.0, %bb.go ], [ %.sroa.8146.sroa.0.1, %bb.ia ], [ %.sroa.8146.sroa.0.1, %bb.hz ]
  %.sroa.7145.0 = phi ptr [ %.sroa.6167.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ %.sroa.6167.3.i, %bb.go ], [ %.sroa.7145.1, %bb.ia ], [ %.sroa.7145.1, %bb.hz ]
  %.sroa.4.0 = phi i64 [ %.sroa.0166.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ %.sroa.0166.3.i, %bb.go ], [ %.sroa.4.1, %bb.ia ], [ %.sroa.4.1, %bb.hz ]
  %.sroa.0144.0 = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ 0, %bb.go ], [ %.sroa.0144.1, %bb.ia ], [ %.sroa.0144.1, %bb.hz ]
  store i64 %.sroa.0144.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7145.0, ptr %.sroa.7145.0..sroa_idx, align 8
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8146.sroa.0.0, ptr %.sroa.8146.0..sroa_idx, align 8
  %.sroa.8146.sroa.3.0..sroa.8146.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8146.sroa.3.0..sroa.8146.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8146.sroa.3, i64 40, i1 false)
  br label %common.ret

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %.body, %bb.fm, %bb.ig, %bb.ih, %bb.gl
  %.pn40.pn = phi { ptr, i32 } [ %.pn37.pn, %bb.ig ], [ %.pn37.pn, %bb.gl ], [ %.pn37.pn, %bb.ih ], [ %eh.lpad-body, %.body ], [ %i.pl, %bb.fm ] ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.sa, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.sc = load i8, ptr %i.sb, align 1, !range !22, !noundef !14
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %bb.ii, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex15MutexLockFutureNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.gq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre167 = load i8, ptr %.phi.trans.insert166, align 8, !range !34
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  switch i8 %.pre167, label %default.unreachable180 [
    i8 0, label %bb.gr
    i8 1, label %bb.he
    i8 2, label %bb.hf
  ]

bb.gr:                                            ; preds = %.thread181, %bb.gq
  %i.sf = phi ptr [ %i.rp, %.thread181 ], [ %i.se, %bb.gq ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.sh = load ptr, ptr %i.sf, align 8, !nonnull !14, !noundef !14 ; 5 uses
  store ptr %i.sh, ptr %i.e, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.sj = load ptr, ptr %i.si, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sl = atomicrmw add ptr %i.sh, i64 1 monotonic, align 8
  %i.sm = icmp slt i64 %i.sl, 0
  br i1 %i.sm, label %bb.gs, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i83

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i83: ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.sh, ptr %i.d, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.sj, ptr %i.sn, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.so = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1169) 16, i64 noundef 8) #23 ; 4 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.gt, label %bb.gw, !prof !19

bb.gt:                                            ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i83
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28
          to label %.noexc.i85 unwind label %bb.gu

.noexc.i85:                                       ; preds = %bb.gt
  unreachable

bb.gu:                                            ; preds = %bb.gt
  %i.sq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio10connection34register_data_channel_open_handler00EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #25
          to label %bb.hb unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.sr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.gw:                                            ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i83
  store ptr %i.sh, ptr %i.so, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store ptr %i.sj, ptr %i.ss, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB2_14RTCDataChannel7on_open(ptr noundef nonnull align 8 %i.sk, ptr noundef nonnull %i.so, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
          to label %bb.gy unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  %i.su = load ptr, ptr %i.e, align 8, !alias.scope !1877, !nonnull !14, !noundef !14
  %i.sv = atomicrmw add ptr %i.su, i64 -1 release, align 8, !noalias !1877
  %i.sw = icmp eq i64 %i.sv, 1
  br i1 %i.sw, label %bb.gz, label %bb.hh

bb.gz:                                            ; preds = %bb.gy
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #22
          to label %bb.hh unwind label %bb.ha

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit8.i: ; preds = %bb.hc, %bb.hb, %bb.ha
  %.pn3.i = phi { ptr, i32 } [ %i.sx, %bb.ha ], [ %.pn4.i, %bb.hc ], [ %.pn4.i, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 2, ptr %i.sg, align 8
  br label %.body86

bb.ha:                                            ; preds = %bb.gz
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit8.i

bb.hb:                                            ; preds = %bb.gx, %bb.gu
  %.pn4.i = phi { ptr, i32 } [ %i.sq, %bb.gu ], [ %i.st, %bb.gx ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %i.sy = load ptr, ptr %i.e, align 8, !alias.scope !1880, !nonnull !14, !noundef !14
  %i.sz = atomicrmw add ptr %i.sy, i64 -1 release, align 8, !noalias !1880
  %i.ta = icmp eq i64 %i.sz, 1
  br i1 %i.ta, label %bb.hc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit8.i

bb.hc:                                            ; preds = %bb.hb
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit8.i unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.tb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.he:                                            ; preds = %bb.gq
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #27
          to label %.noexc88 unwind label %bb.hg

.noexc88:                                         ; preds = %bb.he
  unreachable

bb.hf:                                            ; preds = %bb.gq
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #27
          to label %.noexc89 unwind label %bb.hg

.noexc89:                                         ; preds = %bb.hf
  unreachable

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %.body86

.body86:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit8.i, %bb.hg
  %i.td = phi ptr [ %i.se, %bb.hg ], [ %i.sf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit8.i ]
  %eh.lpad-body87 = phi { ptr, i32 } [ %i.tc, %bb.hg ], [ %.pn3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit8.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio10connection34register_data_channel_open_handler0EBJ_(ptr noundef nonnull align 8 %i.td) #25
          to label %.body91 unwind label %bb.k

bb.hh:                                            ; preds = %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.sg, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.te, align 8
  br label %bb.hi

.body91:                                          ; preds = %.body86, %bb.hu, %bb.hs, %bb.ho, %bb.hn, %bb.hj
  %.pn37 = phi { ptr, i32 } [ %i.to, %bb.hn ], [ %i.ub, %bb.hu ], [ %i.tk, %bb.hj ], [ %i.tw, %bb.hs ], [ %i.to, %bb.ho ], [ %eh.lpad-body87, %.body86 ]
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 8, !range !22, !noundef !14
  %i.th = trunc nuw i8 %i.tg to i1
  br i1 %i.th, label %bb.id, label %bb.ic

bb.hi:                                            ; preds = %bb.b, %bb.hh
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.tj = invoke { i64, ptr } @_RNvXs8_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ti, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hk unwind label %bb.hj     ; 2 uses

bb.hj:                                            ; preds = %bb.hi
  %i.tk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ti) #25
          to label %.body91 unwind label %bb.k

bb.hk:                                            ; preds = %bb.hi
  %i.tl = extractvalue { i64, ptr } %i.tj, 0
  %i.tm = extractvalue { i64, ptr } %i.tj, 1      ; 2 uses
  %i.tn = trunc nuw i64 %i.tl to i1
  br i1 %i.tn, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %common.ret

bb.hm:                                            ; preds = %bb.hk
  invoke void @_RNvXsa_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ti)
          to label %bb.hp unwind label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.to = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  %i.tp = load ptr, ptr %i.ti, align 8, !alias.scope !1883, !nonnull !14, !noundef !14
  %i.tq = atomicrmw add ptr %i.tp, i64 -1 release, align 8, !noalias !1884
  %i.tr = icmp eq i64 %i.tq, 1
  br i1 %i.tr, label %bb.ho, label %.body91

bb.ho:                                            ; preds = %bb.hn
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerIBx_NtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEE9drop_slowCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ti) #22
          to label %.body91 unwind label %bb.hr

bb.hp:                                            ; preds = %bb.hm
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  %i.ts = load ptr, ptr %i.ti, align 8, !alias.scope !1887, !nonnull !14, !noundef !14
  %i.tt = atomicrmw add ptr %i.ts, i64 -1 release, align 8, !noalias !1888
  %i.tu = icmp eq i64 %i.tt, 1
  br i1 %i.tu, label %bb.hq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.hq:                                            ; preds = %bb.hp
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerIBx_NtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEE9drop_slowCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ti) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.hs

bb.hr:                                            ; preds = %bb.ho
  %i.tv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.hs:                                            ; preds = %bb.hq
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %.body91

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.hp, %bb.hq
  %i.tx = icmp eq ptr %i.tm, null
  br i1 %i.tx, label %bb.ht, label %bb.hy

bb.ht:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1889
  store i64 0, ptr %i.c, align 8, !noalias !1889
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1889
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1889
  %i.ty = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.ty, align 8, !noalias !1889
  store ptr %i.c, ptr %i.b, align 8, !noalias !1889
  %i.tz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @204, ptr %i.tz, align 8, !noalias !1889
  %i.ua = invoke noundef zeroext i1 @_RNvXs5_NtCsgV0iE8Xkxiy_15futures_channel7oneshotNtB5_8CanceledNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.hv unwind label %bb.hu, !noalias !1890

bb.hu:                                            ; preds = %bb.hw, %bb.ht
  %i.ub = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.body91 unwind label %bb.hx, !noalias !1890

bb.hv:                                            ; preds = %bb.ht
  br i1 %i.ua, label %bb.hw, label %bb.ib, !prof !19

bb.hw:                                            ; preds = %bb.hv
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #27
          to label %.noexc.i.i93 unwind label %bb.hu, !noalias !1890

.noexc.i.i93:                                     ; preds = %bb.hw
  unreachable

bb.hx:                                            ; preds = %bb.hu
  %i.uc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1890
  unreachable

bb.hy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.ud = ptrtoint ptr %i.tm to i64
  br label %bb.hz

bb.hz:                                            ; preds = %bb.ib, %bb.hy
  %.sroa.8146.sroa.0.1 = phi i64 [ %.sroa.6150.0.copyload, %bb.ib ], [ undef, %bb.hy ] ; 2 uses
  %.sroa.7145.1 = phi ptr [ %.sroa.5.0.copyload, %bb.ib ], [ undef, %bb.hy ] ; 2 uses
  %.sroa.4.1 = phi i64 [ %.sroa.0149.0.copyload, %bb.ib ], [ %i.ud, %bb.hy ] ; 2 uses
  %.sroa.0144.1 = phi i64 [ 6, %bb.ib ], [ -1, %bb.hy ] ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store <4 x i8> zeroinitializer, ptr %i.ue, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  %i.ug = load ptr, ptr %i.uf, align 8, !alias.scope !1893, !nonnull !14, !noundef !14
  %i.uh = atomicrmw add ptr %i.ug, i64 -1 release, align 8, !noalias !1893
  %i.ui = icmp eq i64 %i.uh, 1
  br i1 %i.ui, label %bb.ia, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEEECs4KPtkQIfQGm_13libp2p_webrtc.exit82

bb.ia:                                            ; preds = %bb.hz
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEE9drop_slowCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uf) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEEECs4KPtkQIfQGm_13libp2p_webrtc.exit82 unwind label %bb.gp

bb.ib:                                            ; preds = %bb.hv
  %.sroa.0149.0.copyload = load i64, ptr %i.c, align 8, !noalias !1894
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1894
  %.sroa.6150.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1889
  br label %bb.hz

bb.ic:                                            ; preds = %bb.id, %.body91
  store i8 0, ptr %i.tf, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 2, !range !22, !noundef !14
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %bb.if, label %bb.ie

bb.id:                                            ; preds = %.body91
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(8) %i.um) #25
          to label %bb.ic unwind label %bb.k

bb.ie:                                            ; preds = %bb.if, %bb.ic
  store i8 0, ptr %i.uj, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.gl

bb.if:                                            ; preds = %bb.ic
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjplCpEenHXG_11webrtc_data12data_channel11DataChannelEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(8) %i.w) #25
          to label %bb.ie unwind label %bb.k

bb.ig:                                            ; preds = %bb.gl
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !1897, !nonnull !14, !noundef !14
  %i.up = atomicrmw add ptr %i.uo, i64 -1 release, align 8, !noalias !1897
  %i.uq = icmp eq i64 %i.up, 1
  br i1 %i.uq, label %bb.ih, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.ih:                                            ; preds = %bb.ig
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.un) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.k

bb.ii:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc12data_channel14RTCDataChannelEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  invoke void @_RNvXsi_NtNtCsl9hx9jpF0W9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex15MutexLockFutureNtNtCsbCXxVlMkWND_6webrtc15peer_connection17RTCPeerConnectionEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp6streamNtB4_6Stream5close0Cs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !20, !noundef !14
  switch i8 %i.b, label %default.unreachable41 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.t
  ]

default.unreachable41:                            ; preds = %bb.ac, %bb.z, %bb.w, %bb.t, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !align !13, !noundef !14 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !captures !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #27
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = invoke fastcc noundef zeroext i1 @_RNCNvMs_NtCslqlypCAacxc_11webrtc_util6bufferNtB6_6Buffer5close0Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtCslqlypCAacxc_11webrtc_util6bufferNtBI_6Buffer5close0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.g) #25
          to label %.body unwind label %bb.s

bb.g:                                             ; preds = %bb.e
  br i1 %i.h, label %common.ret, label %bb.h

common.ret:                                       ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SendermE4send0ECs4KPtkQIfQGm_13libp2p_webrtc.exit, %_RNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB7_6SendermE7reserve0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %.sink42 = phi i16 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SendermE4send0ECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ -2, %_RNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB7_6SendermE7reserve0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ -2, %bb.g ]
  %.sink = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SendermE4send0ECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ 4, %_RNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB7_6SendermE7reserve0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ 3, %bb.g ]
  store i16 %.sink42, ptr %0, align 8
  store i8 %.sink, ptr %i.a, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !21, !noundef !14
  %cond.i = icmp eq i8 %i.k, 3
  br i1 %cond.i, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.m = load i8, ptr %i.l, align 8, !range !21, !noundef !14
  %cond.i.i = icmp eq i8 %i.m, 3
  br i1 %cond.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = load i8, ptr %i.n, align 8, !range !21, !noundef !14
  %cond.i.i.i = icmp eq i8 %i.o, 3
  br i1 %cond.i.i.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load i8, ptr %i.p, align 8, !range !20, !noundef !14
  %cond.i.i.i.i = icmp eq i8 %i.q, 4
  br i1 %cond.i.i.i.i, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
end_hunk_0
