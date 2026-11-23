Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.00?download=true
inline.NumInlined: 7368
inline.NumDeleted: 2382
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMs0_NtCsbCXxVlMkWND_6webrtc15peer_connectionNtB7_17RTCPeerConnection17start_rtp_senders0Cs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bq, ptr %i.bs, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender12RTCRtpSenderEECs4KPtkQIfQGm_13libp2p_webrtc.exit, %bb.t
  %i.bt = phi ptr [ %.pre167, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender12RTCRtpSenderEECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ %i.bq, %bb.t ]
  %i.bu = phi ptr [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender12RTCRtpSenderEECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ %.val54, %bb.t ] ; 3 uses
  %i.bv = icmp eq ptr %i.bu, %i.bt
  br i1 %i.bv, label %bb.mi, label %bb.mk

bb.v:                                             ; preds = %bb.od, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender12RTCRtpSenderEECs4KPtkQIfQGm_13libp2p_webrtc.exit99, %.body61, %bb.mm, %bb.nb, %bb.ny, %bb.ly, %bb.g
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.g, %bb.n, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender12RTCRtpSenderEECs4KPtkQIfQGm_13libp2p_webrtc.exit99, %bb.mj
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender12RTCRtpSenderEECs4KPtkQIfQGm_13libp2p_webrtc.exit99 ], [ %i.ajo, %bb.mj ], [ %i.ba, %bb.n ], [ %i.aq, %bb.g ], [ %i.ba, %bb.o ]
  store i8 2, ptr %i.ah, align 8
  resume { ptr, i32 } %.pn42.pn.pn

bb.w:                                             ; preds = %bb.a
  %.phi.trans.insert168 = getelementptr inbounds nuw i8, ptr %1, i64 782
  %.pre169 = load i8, ptr %.phi.trans.insert168, align 2, !range !66, !noalias !9376
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13149)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5397.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5364.i)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 782 ; 27 uses
  switch i8 %.pre169, label %default.unreachable207 [
    i8 0, label %bb.x
    i8 1, label %bb.ac
    i8 2, label %bb.ad
    i8 3, label %bb.ae
    i8 4, label %bb.fk
    i8 5, label %bb.y
    i8 6, label %bb.ho
    i8 7, label %bb.z
    i8 8, label %bb.bn
  ]

bb.x:                                             ; preds = %.thread208, %bb.w
  %i.bz = phi ptr [ %i.aml, %.thread208 ], [ %i.by, %bb.w ] ; 3 uses
  %i.ca = phi ptr [ %i.amk, %.thread208 ], [ %i.bx, %bb.w ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cb, i8 0, i64 6, i1 false), !noalias !9376
  %i.ce = load <2 x ptr>, ptr %i.cd, align 8, !noalias !9376
  %i.cf = load ptr, ptr %i.cd, align 8, !noalias !9376, !nonnull !17, !align !16, !noundef !17
  store <2 x ptr> %i.ce, ptr %i.cc, align 8, !noalias !9376
  %i.cg = invoke noundef zeroext i1 @_RNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB4_12RTCRtpSender8has_sent(ptr noundef nonnull align 8 %i.cf)
          to label %bb.aa unwind label %bb.el, !noalias !9377

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9376
  br label %bb.hd

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9376
  br label %bb.kd

bb.aa:                                            ; preds = %bb.x
  br i1 %i.cg, label %.thread159, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = load ptr, ptr %i.cc, align 8, !noalias !9376, !nonnull !17, !align !16, !noundef !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr %i.ci, ptr %i.cj, align 8, !noalias !9376
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !9376
  br label %bb.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.el, %bb.bm, %bb.am, %bb.al, %bb.af
  %i.ck = phi ptr [ %i.nx, %bb.el ], [ %i.fh, %bb.bm ], [ %i.cm, %bb.al ], [ %i.cm, %bb.af ], [ %i.cm, %bb.am ]
  %i.cl = phi ptr [ %i.ny, %bb.el ], [ %i.fi, %bb.bm ], [ %i.cn, %bb.al ], [ %i.cn, %bb.af ], [ %i.cn, %bb.am ]
  %.pn111.i = phi { ptr, i32 } [ %i.nz, %bb.el ], [ %.pn109.i, %bb.bm ], [ %i.da, %bb.al ], [ %i.cq, %bb.af ], [ %i.da, %bb.am ]
  store i8 2, ptr %i.ck, align 2, !noalias !9376
  br label %.body61

bb.ac:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #31
          to label %.noexc63 unwind label %bb.lu

.noexc63:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #31
          to label %.noexc64 unwind label %bb.lu

.noexc64:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.w
  %i.cm = phi ptr [ %i.bz, %bb.ab ], [ %i.by, %bb.w ] ; 11 uses
  %i.cn = phi ptr [ %i.ca, %bb.ab ], [ %i.bx, %bb.w ] ; 10 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  %i.cp = invoke fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB7_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEE4lock0Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.co, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.af, !noalias !9377 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.co) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.bl, !noalias !9377

bb.ag:                                            ; preds = %bb.ae
  %i.cr = icmp eq ptr %i.cp, null
  br i1 %i.cr, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 3 uses
  store ptr %i.cp, ptr %i.cs, align 8, !noalias !9376
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.cu = load i8, ptr %i.ct, align 8, !range !32, !noalias !9376, !noundef !17
  %cond.i.i59 = icmp eq i8 %i.cu, 3
  br i1 %cond.i.i59, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 888
  %i.cw = load i8, ptr %i.cv, align 8, !range !32, !noalias !9376, !noundef !17
  %cond.i.i.i60 = icmp eq i8 %i.cw, 3
  br i1 %cond.i.i.i60, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.cy = load i8, ptr %i.cx, align 8, !range !30, !noalias !9376, !noundef !17
  %cond.i.i.i.i = icmp eq i8 %i.cy, 4
  br i1 %cond.i.i.i.i, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 824
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.cz)
          to label %bb.an unwind label %bb.al, !noalias !9377

bb.al:                                            ; preds = %bb.ak
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.val2.i.i.i.i.i = load ptr, ptr %i.db, align 8, !noalias !9376, !align !16, !noundef !17 ; 2 uses
  %i.dc = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %i.dc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = getelementptr i8, ptr %1, i64 840
  %.val3.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !noalias !9376
  %i.de = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !noalias !9377, !nonnull !17, !noundef !17
  invoke void %i.df(ptr noundef %.val3.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.ap, !noalias !9377, !inline_history !1

bb.an:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.val.i.i.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !9376, !align !16, !noundef !17 ; 2 uses
  %i.dh = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.dh, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.di = getelementptr i8, ptr %1, i64 840
  %.val1.i.i.i.i.i = load ptr, ptr %i.di, align 8, !noalias !9376
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !9377, !nonnull !17, !noundef !17
  invoke void %i.dk(ptr noundef %.val1.i.i.i.i.i)
          to label %bb.aq unwind label %bb.el, !noalias !9377, !inline_history !60

bb.ap:                                            ; preds = %bb.am
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !9377
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.aj, %bb.ai, %bb.ah
  %.val141.i = load ptr, ptr %i.cs, align 8, !noalias !9376, !nonnull !17, !align !16, !noundef !17
  %i.dm = getelementptr i8, ptr %.val141.i, i64 56
  %.val142.i = load i64, ptr %i.dm, align 8, !noalias !9377, !noundef !17 ; 2 uses
  %i.dn = icmp ult i64 %.val142.i, 14593943096289203
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i64 %.val142.i, 0
  br i1 %i.do, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4ywFJ4GriGC_8smol_str7SmolStrEECs4KPtkQIfQGm_13libp2p_webrtc.exit345.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !9376, !nonnull !17, !align !16, !noundef !17
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 248
  %i.ds = invoke { ptr, i1 } @_RNvMNtCslqlypCAacxc_11webrtc_util4syncINtB2_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEE4lockCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.dr)
          to label %bb.as unwind label %bb.ek, !noalias !9377 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.dt = extractvalue { ptr, i1 } %i.ds, 0       ; 6 uses
  %i.du = extractvalue { ptr, i1 } %i.ds, 1       ; 2 uses
  %i.dv = zext i1 %i.du to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.val144.i = load ptr, ptr %i.dw, align 8, !noalias !9377, !noundef !17 ; 4 uses
  %magicptr.i.i = ptrtoint ptr %.val144.i to i64
  %magicptr.off.i.i = add i64 %magicptr.i.i, -1
  %switch.i.i = icmp ult i64 %magicptr.off.i.i, -2
  br i1 %switch.i.i, label %bb.at, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.at:                                            ; preds = %bb.as
  %i.dx = getelementptr inbounds nuw i8, ptr %.val144.i, i64 8
  %i.dy = atomicrmw add ptr %i.dx, i64 1 monotonic, align 8, !noalias !9377
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.au, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.au:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.at, %bb.as
  %.not.i.i = icmp eq ptr %.val144.i, null
  br i1 %.not.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread406.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i: ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 560
  br label %bb.bd

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread406.i: ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9376
  store ptr %.val144.i, ptr %i.n, align 8, !noalias !9376
  %i.ea = invoke noundef ptr @_RNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE7upgradeCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender4send00Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.av, !noalias !9377 ; 5 uses

bb.av:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread406.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.body170.i unwind label %bb.aw, !noalias !9377

bb.aw:                                            ; preds = %bb.av
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !9377
  unreachable

_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender4send00Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread406.i
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.be, !noalias !9377

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender4send00Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9376
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9378)
  %.not.i173.i = icmp eq ptr %i.ea, null
  br i1 %.not.i173.i, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9379
  store ptr %i.ea, ptr %i.m, align 8, !noalias !9380
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  invoke void @_RNvMNtCsbCXxVlMkWND_6webrtc15rtp_transceiverNtB2_17RTCRtpTransceiver3mid(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ed, ptr noundef nonnull align 8 %i.ee)
          to label %bb.ba unwind label %bb.ay, !noalias !9377

bb.ay:                                            ; preds = %bb.ax
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = atomicrmw add ptr %i.ea, i64 -1 release, align 8, !noalias !9381
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.az, label %.body170.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #26
          to label %.body170.i unwind label %bb.bc, !noalias !9382

bb.ba:                                            ; preds = %bb.ax
  %i.ei = atomicrmw add ptr %i.ea, i64 -1 release, align 8, !noalias !9383
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.bb, label %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender4send0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #26
          to label %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender4send0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.be, !noalias !9377

bb.bc:                                            ; preds = %bb.az
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !9382
  unreachable

_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender4send0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9379
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender4send0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.bd:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i
  %i.el = phi ptr [ %3, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i ], [ %i.ed, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender4send00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ]
  store i8 -1, ptr %i.el, align 8, !alias.scope !9378, !noalias !9376
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender4send0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.be:                                            ; preds = %bb.bb, %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender4send00Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body170.i

.body170.i:                                       ; preds = %bb.be, %bb.az, %bb.ay, %bb.av
  %eh.lpad-body171.i = phi { ptr, i32 } [ %i.eb, %bb.av ], [ %i.em, %bb.be ], [ %i.ef, %bb.az ], [ %i.ef, %bb.ay ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr nonnull %i.dt, i8 %i.dv) #29
          to label %bb.bm unwind label %bb.bl, !noalias !9377

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender4send0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.bd, %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender4send0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  br i1 %i.du, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender4send0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.eo = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !9376
  %i.ep = and i64 %i.eo, 9223372036854775807
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bg, !prof !28

bb.bg:                                            ; preds = %bb.bf
  %i.er = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc177.i unwind label %bb.ef, !noalias !9377

.noexc177.i:                                      ; preds = %bb.bg
  br i1 %i.er, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.noexc177.i
  store atomic i8 1, ptr %i.en monotonic, align 4, !noalias !9377
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bh, %.noexc177.i, %bb.bf, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender4send0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.es = atomicrmw xchg ptr %i.dt, i32 0 release, align 4, !noalias !9377
  %i.et = icmp eq i32 %i.es, 2
  br i1 %i.et, label %bb.bi, label %bb.bj, !prof !29

bb.bi:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dt)
          to label %bb.bj unwind label %bb.ef, !noalias !9377

bb.bj:                                            ; preds = %bb.bi, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %.val134.i = load ptr, ptr %i.cs, align 8, !noalias !9376, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.eu = getelementptr i8, ptr %.val134.i, i64 48
  %.val149.i = load ptr, ptr %i.eu, align 8, !noalias !9377, !nonnull !17, !noundef !17 ; 3 uses
  %i.ev = getelementptr i8, ptr %.val134.i, i64 56
  %.val150.i = load i64, ptr %i.ev, align 8, !noalias !9377, !noundef !17
  %i.ew = getelementptr inbounds nuw [632 x i8], ptr %.val149.i, i64 %.val150.i ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 584
  store ptr %.val149.i, ptr %i.ex, align 8, !noalias !9376
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %i.ew, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !9376
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i64 0, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !9376
  br label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersECs4KPtkQIfQGm_13libp2p_webrtc.exit222.i, %bb.bj
  %i.ey = phi ptr [ %i.ld, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersECs4KPtkQIfQGm_13libp2p_webrtc.exit222.i ], [ %i.cm, %bb.bj ] ; 10 uses
  %i.ez = phi ptr [ %i.le, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersECs4KPtkQIfQGm_13libp2p_webrtc.exit222.i ], [ %i.cn, %bb.bj ] ; 10 uses
  %i.fa = phi ptr [ %.pre435.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersECs4KPtkQIfQGm_13libp2p_webrtc.exit222.i ], [ %i.ew, %bb.bj ]
  %i.fb = phi ptr [ %.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersECs4KPtkQIfQGm_13libp2p_webrtc.exit222.i ], [ %.val149.i, %bb.bj ] ; 3 uses
  %i.fc = icmp eq ptr %i.fb, %i.fa
  br i1 %i.fc, label %bb.ee, label %bb.ec

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit340.i: ; preds = %bb.le, %.body234.i, %.body227.i, %bb.ef, %.body219.i
  %i.fd = phi ptr [ %i.ahv, %bb.le ], [ %i.nj, %bb.ef ], [ %i.ahv, %.body234.i ], [ %i.mp, %.body219.i ], [ %i.ey, %.body227.i ]
  %i.fe = phi ptr [ %i.ahw, %bb.le ], [ %i.nk, %bb.ef ], [ %i.ahw, %.body234.i ], [ %i.mq, %.body219.i ], [ %i.ez, %.body227.i ]
  %.pn105.pn.pn.i = phi { ptr, i32 } [ %.pn102.pn.i, %bb.le ], [ %i.nl, %bb.ef ], [ %.pn102.pn.i, %.body234.i ], [ %.pn100.i, %.body219.i ], [ %eh.lpad-body228.i, %.body227.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4ywFJ4GriGC_8smol_str7SmolStrEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ff) #29
          to label %bb.bm unwind label %bb.bl, !noalias !9377

bb.bl:                                            ; preds = %bb.lt, %bb.lr, %bb.lq, %bb.ln, %bb.lm, %bb.le, %bb.lc, %bb.la, %bb.kz, %bb.kx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor9RTPWriterNtNtB4_6marker4SendNtB2b_4SyncEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit336.i, %bb.ku, %bb.ks, %bb.kq, %bb.ke, %bb.jf, %bb.iz, %.body295.i, %bb.he, %bb.fl, %bb.dq, %.body203.i, %bb.cw, %.body187.i, %bb.bm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit340.i, %.body170.i, %bb.af
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !9377
  unreachable

bb.bm:                                            ; preds = %bb.ek, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit340.i, %.body170.i
  %i.fh = phi ptr [ %i.nt, %bb.ek ], [ %i.fd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit340.i ], [ %i.cm, %.body170.i ]
  %i.fi = phi ptr [ %i.nu, %bb.ek ], [ %i.fe, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit340.i ], [ %i.cn, %.body170.i ]
  %.pn109.i = phi { ptr, i32 } [ %i.nv, %bb.ek ], [ %.pn105.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit340.i ], [ %eh.lpad-body171.i, %.body170.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXsd_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.bl, !noalias !9377

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4ywFJ4GriGC_8smol_str7SmolStrEECs4KPtkQIfQGm_13libp2p_webrtc.exit345.i: ; preds = %bb.lj, %bb.li, %bb.lh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit342.i, %bb.aq
  %i.fk = phi ptr [ %i.cm, %bb.aq ], [ %i.rk, %bb.lj ], [ %i.rk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit342.i ], [ %i.rk, %bb.lh ], [ %i.rk, %bb.li ] ; 2 uses
  %i.fl = phi ptr [ %i.cn, %bb.aq ], [ %i.rl, %bb.lj ], [ %i.rl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit342.i ], [ %i.rl, %bb.lh ], [ %i.rl, %bb.li ] ; 2 uses
  %.sroa.0395.1.i = phi i64 [ 180, %bb.aq ], [ %.sroa.3.sroa.0.0.copyload.i, %bb.lj ], [ %.sroa.3.sroa.0.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local29InterceptorToTrackLocalWriterEECs4KPtkQIfQGm_13libp2p_webrtc.exit342.i ], [ %.sroa.3.sroa.0.0.copyload.i, %bb.lh ], [ %.sroa.3.sroa.0.0.copyload.i, %bb.li ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXsd_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %bb.lv unwind label %bb.el, !noalias !9377

bb.bn:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9376
  %.phi.trans.insert439.i = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 11 uses
  %.pre440.i = load i8, ptr %.phi.trans.insert439.i, align 8, !range !32, !noalias !9384
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 12 uses
  switch i8 %.pre440.i, label %default.unreachable207 [
    i8 0, label %..thread.i.i_crit_edge
    i8 1, label %bb.bo
    i8 2, label %bb.bp
    i8 3, label %bb.bq
  ]

..thread.i.i_crit_edge:                           ; preds = %bb.bn
  %.pre171 = load ptr, ptr %i.fn, align 8, !noalias !9384
  br label %.thread.i.i

.body14.i.i:                                      ; preds = %.body.i.i
  store i8 2, ptr %i.jh, align 8, !noalias !9384
  br label %.body187.i

.thread.i.i:                                      ; preds = %..thread.i.i_crit_edge, %.thread.i
  %i.fo = phi ptr [ %i.afa, %.thread.i ], [ %i.by, %..thread.i.i_crit_edge ]
  %i.fp = phi ptr [ %i.afb, %.thread.i ], [ %i.bx, %..thread.i.i_crit_edge ]
  %i.fq = phi ptr [ %i.agi, %.thread.i ], [ %.pre171, %..thread.i.i_crit_edge ] ; 2 uses
  %i.fr = phi ptr [ %.sroa.8393.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert439.i, %..thread.i.i_crit_edge ]
  %i.fs = phi ptr [ %i.afc, %.thread.i ], [ %i.fn, %..thread.i.i_crit_edge ]
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 2 uses
  store ptr %i.fq, ptr %i.ft, align 8, !noalias !9384
  %.sroa.819.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  store i8 0, ptr %.sroa.819.0..sroa_idx.i.i, align 8, !noalias !9384
  br label %.thread.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #31
          to label %.noexc189.i.a unwind label %bb.cu, !noalias !9377

.noexc189.i.a:                                    ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bn
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #31
          to label %.noexc190.i unwind label %bb.cu, !noalias !9377

.noexc190.i:                                      ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bn
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 9 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !32, !noalias !9385
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 10 uses
  switch i8 %.pre.i.i, label %default.unreachable207 [
    i8 0, label %..thread.i.i_crit_edge.i
    i8 1, label %bb.bs
    i8 2, label %bb.bt
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB6_12RTCRtpSender14get_parameters0Cs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #31
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #31
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = invoke fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB7_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEE4lock0Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.p, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.p) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit71 unwind label %bb.au

bb.h:                                             ; preds = %bb.f
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersEECs4KPtkQIfQGm_13libp2p_webrtc.exit, %bb.bn, %bb.i
  %.sink = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec21RTCRtpCodecParametersEECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ 4, %bb.bn ], [ 3, %bb.i ]
  store i8 %.sink, ptr %i.j, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  store ptr %i.q, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.u = load i8, ptr %i.t, align 8, !range !32, !noundef !17
  %cond.i = icmp eq i8 %i.u, 3
  br i1 %cond.i, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = load i8, ptr %i.v, align 8, !range !32, !noundef !17
  %cond.i.i = icmp eq i8 %i.w, 3
  br i1 %cond.i.i, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load i8, ptr %i.x, align 8, !range !30, !noundef !17
  %cond.i.i.i = icmp eq i8 %i.y, 4
  br i1 %cond.i.i.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.z)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i.i.i = load ptr, ptr %i.ab, align 8, !align !16, !noundef !17 ; 2 uses
  %i.ac = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit71, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr i8, ptr %1, i64 80
  %.val3.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !17, !noundef !17
  invoke void %i.af(ptr noundef %.val3.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit71 unwind label %bb.r, !inline_history !1

bb.p:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i.i = load ptr, ptr %i.ag, align 8, !align !16, !noundef !17 ; 2 uses
  %i.ah = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.ah, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr i8, ptr %1, i64 80
  %.val1.i.i.i.i = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !17, !noundef !17
  invoke void %i.ak(ptr noundef %.val1.i.i.i.i)
          to label %bb.t unwind label %bb.w, !inline_history !60

bb.r:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.t:                                             ; preds = %bb.p, %bb.l, %bb.k, %bb.j, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val37 = load ptr, ptr %i.i, align 8, !nonnull !17, !align !16, !noundef !17
  %i.an = getelementptr i8, ptr %.val37, i64 56
  %.val44 = load i64, ptr %i.an, align 8, !noundef !17 ; 3 uses
  %i.ao = icmp ult i64 %.val44, 14593943096289203
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11649
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 14593943096289203) %.val44, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc47 unwind label %bb.s

.noexc47:                                         ; preds = %bb.t
  %i.ap = load i64, ptr %i.b, align 8, !range !23, !noalias !11649, !noundef !17
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !82, !noalias !11649, !noundef !17 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.u, label %bb.v, !prof !29

bb.u:                                             ; preds = %.noexc47
  %i.au = load i64, ptr %i.at, align 8, !noalias !11649
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.au) #32
          to label %.noexc48 unwind label %bb.s

.noexc48:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %.noexc47
  %i.av = load ptr, ptr %i.at, align 8, !noalias !11649, !nonnull !17, !noundef !17
  %i.aw = icmp samesign ule i64 %.val44, %i.as
  tail call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11649
  store i64 %i.as, ptr %i.h, align 8, !alias.scope !11649
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.ax, align 8, !alias.scope !11649
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !alias.scope !11649
  %.val36 = load ptr, ptr %i.i, align 8, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.az = getelementptr i8, ptr %.val36, i64 48
  %.val45 = load ptr, ptr %i.az, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ba = getelementptr i8, ptr %.val36, i64 56
  %.val46 = load i64, ptr %i.ba, align 8, !noundef !17 ; 2 uses
  %.idx = mul nuw nsw i64 %.val46, 632
  %i.bb = getelementptr inbounds nuw i8, ptr %.val45, i64 %.idx
  %i.bc = icmp eq i64 %.val46, 0
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.bh, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsd_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.x unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit71: ; preds = %bb.g, %bb.n, %bb.o, %bb.bi, %bb.w
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %bb.bi ], [ %i.bh, %bb.w ], [ %i.aa, %bb.n ], [ %i.r, %bb.g ], [ %i.aa, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bj

bb.w:                                             ; preds = %bb.q, %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit71

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %.val32 = load ptr, ptr %i.bk, align 8, !nonnull !17, !noundef !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 265
  %i.bn = load i8, ptr %i.bm, align 1, !range !20, !noundef !17
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvMs_NtNtCsbCXxVlMkWND_6webrtc3api12media_engineNtB4_11MediaEngine26get_rtp_parameters_by_kind(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bo, ptr noundef nonnull align 8 %i.bl, i8 noundef %i.bn, i8 noundef 2)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.z:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr %i.bi, align 8, !nonnull !17, !align !16, !noundef !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 248
  %i.bs = invoke { ptr, i1 } @_RNvMNtCslqlypCAacxc_11webrtc_util4syncINtB2_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEE4lockCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.br)
          to label %bb.aa unwind label %bb.bz     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bt = extractvalue { ptr, i1 } %i.bs, 0       ; 6 uses
  %i.bu = extractvalue { ptr, i1 } %i.bs, 1       ; 2 uses
  %i.bv = zext i1 %i.bu to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val39 = load ptr, ptr %i.bw, align 8, !noundef !17 ; 4 uses
  %magicptr.i = ptrtoint ptr %.val39 to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.ab, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %.val39, i64 8
  %i.by = atomicrmw add ptr %i.bx, i64 1 monotonic, align 8
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.ac, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender14get_parameters0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.body51:                                          ; preds = %bb.af, %bb.ad
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.ca, %bb.ad ], [ %i.cd, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr nonnull %i.bt, i8 %i.bv) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.au

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.ab, %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.not.i = icmp eq ptr %.val39, null
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender14get_parameters0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.val39, ptr %i.a, align 8
  %i.cc = invoke noundef ptr @_RNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE7upgradeCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender14get_parameters0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body51 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender14get_parameters0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.ae
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc53.a unwind label %bb.ad

.noexc53.a:                                       ; preds = %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender14get_parameters0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender14get_parameters0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender14get_parameters0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %.noexc53.a, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit
  %.sroa.02.0.i = phi ptr [ %i.cc, %.noexc53.a ], [ null, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit ]
  store ptr %.sroa.02.0.i, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender14get_parameters0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.cg = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ch = and i64 %i.cg, 9223372036854775807
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ai, !prof !28

bb.ai:                                            ; preds = %bb.ah
  %i.cj = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc54 unwind label %bb.al

.noexc54:                                         ; preds = %bb.ai
  br i1 %i.cj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.noexc54
  store atomic i8 1, ptr %i.cf monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.aj, %.noexc54, %bb.ah, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender14get_parameters0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.ck = atomicrmw xchg ptr %i.bt, i32 0 release, align 4
  %i.cl = icmp eq i32 %i.ck, 2
  br i1 %i.cl, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit, !prof !29

bb.ak:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11650)
  %i.cn = load ptr, ptr %i.cb, align 8, !alias.scope !11650, !noundef !17 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = atomicrmw add ptr %i.cn, i64 -1 release, align 8, !noalias !11651
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.au

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.ak
  %i.cr = load ptr, ptr %i.cb, align 8, !noundef !17 ; 2 uses
  %.not13 = icmp eq ptr %i.cr, null
  br i1 %.not13, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.cs, ptr %i.ct, align 8
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i8 0, ptr %.sroa.894.0..sroa_idx, align 8
  br label %bb.bk

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.cu = load ptr, ptr %i.bi, align 8, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %.val = load ptr, ptr %i.cv, align 8, !nonnull !17, !noundef !17
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 265
  %i.cy = load i8, ptr %i.cx, align 1, !range !20, !noundef !17
  invoke void @_RNvMs_NtNtCsbCXxVlMkWND_6webrtc3api12media_engineNtB4_11MediaEngine18get_codecs_by_kind(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.cw, i8 noundef %i.cy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsbCXxVlMkWND_6webrtc15rtp_transceiverNtBG_17RTCRtpTransceiver10get_codecs0ECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.by

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsbCXxVlMkWND_6webrtc15rtp_transceiverNtBG_17RTCRtpTransceiver10get_codecs0ECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.bw, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bv, %bb.ap
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11652)
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !11652, !noundef !17 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit58, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsbCXxVlMkWND_6webrtc15rtp_transceiverNtBG_17RTCRtpTransceiver10get_codecs0ECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.dc = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !11653
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit58

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit58 unwind label %bb.bz

.body76:                                          ; preds = %bb.bl, %bb.bt, %bb.bu, %bb.by
  %.pn16.pn = phi { ptr, i32 } [ %i.fk, %bb.bu ], [ %i.fk, %bb.bt ], [ %i.ey, %bb.bl ], [ %i.fw, %bb.by ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11654)
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !11654, !noundef !17 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.as

bb.as:                                            ; preds = %.body76
  %i.dh = atomicrmw add ptr %i.df, i64 -1 release, align 8, !noalias !11655
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.bi, %bb.at, %bb.an, %.body51, %bb.bl, %bb.g, %.body68, %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %.body51, %bb.as, %.body76, %bb.at, %bb.am, %bb.al, %bb.an, %bb.bz, %.body79
  %.pn19 = phi { ptr, i32 } [ %eh.lpad-body80, %.body79 ], [ %i.fx, %bb.bz ], [ %i.cm, %bb.am ], [ %.pn16.pn, %bb.as ], [ %i.cm, %bb.an ], [ %i.cm, %bb.al ], [ %.pn16.pn, %bb.at ], [ %.pn16.pn, %.body76 ], [ %eh.lpad-body52, %.body51 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver9rtp_codec16RTCRtpParametersECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dk) #29
          to label %bb.av unwind label %bb.au

bb.av:                                            ; preds = %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEECs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ %i.bp, %bb.y ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver22RTCRtpCodingParametersEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dl) #29
          to label %bb.bj unwind label %bb.au

bb.aw:                                            ; preds = %.lr.ph, %bb.bh
  %.sroa.083.0105 = phi ptr [ %.val45, %.lr.ph ], [ %i.dm, %bb.bh ] ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.083.0105, i64 632 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.083.0105, i64 320
  %.val34 = load ptr, ptr %i.dn, align 8, !nonnull !17, !noundef !17
  %i.do = getelementptr i8, ptr %.sroa.083.0105, i64 328
  %.val35 = load ptr, ptr %i.do, align 8, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val35, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !19, !invariant.load !17
  %i.dr = add nsw i64 %i.dq, -1
  %i.ds = and i64 %i.dr, -16
  %i.dt = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.val35, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !invariant.load !17, !nonnull !17
  %i.dx = invoke { ptr, i64 } %i.dw(ptr noundef nonnull %i.du)
          to label %bb.ax unwind label %bb.ay     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.dy = extractvalue { ptr, i64 } %i.dx, 0      ; 2 uses
  %i.dz = extractvalue { ptr, i64 } %i.dx, 1
  %.not.i61 = icmp eq ptr %i.dy, null             ; 2 uses
  %spec.select.i = select i1 %.not.i61, ptr inttoptr (i64 1 to ptr), ptr %i.dy
  %spec.select5.i = select i1 %.not.i61, i64 0, i64 %i.dz
  invoke void @_RINvMsy_Cs4ywFJ4GriGC_8smol_strNtB6_4Repr3newReECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select.i, i64 noundef %spec.select5.i)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body68

bb.az:                                            ; preds = %bb.ax
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.083.0105, i64 624
  %i.ec = load i32, ptr %i.eb, align 8, !noundef !17
  %i.ed = load ptr, ptr %i.bd, align 8, !nonnull !17, !align !16, !noundef !17
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 266
  %i.ef = load i8, ptr %i.ee, align 2, !noundef !17
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.083.0105, i64 360
  %i.eh = load ptr, ptr %i.eg, align 8, !noundef !17
  %.not.i63.not = icmp eq ptr %i.eh, null
  br i1 %.not.i63.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ei = getelementptr i8, ptr %.sroa.083.0105, i64 616
  %.val.i = load i32, ptr %i.ei, align 8, !noundef !17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %spec.select.i66 = phi i32 [ %.val.i, %bb.ba ], [ 0, %bb.az ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i32 %i.ec, ptr %i.be, align 8
  store i8 %i.ef, ptr %i.bf, align 8
  store i32 %spec.select.i66, ptr %i.bg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !11656)
  call void @llvm.experimental.noalias.scope.decl(metadata !11657)
  call void @llvm.experimental.noalias.scope.decl(metadata !11658)
  call void @llvm.experimental.noalias.scope.decl(metadata !11659)
  %i.ej = load i64, ptr %i.ay, align 8, !alias.scope !11660, !noundef !17 ; 3 uses
  %i.ek = load i64, ptr %i.h, align 8, !range !18, !alias.scope !11660, !noundef !17
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver22RTCRtpCodingParametersE8grow_oneCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bh unwind label %bb.bd, !noalias !11661

bb.bd:                                            ; preds = %bb.bc
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11662)
  call void @llvm.experimental.noalias.scope.decl(metadata !11663)
  call void @llvm.experimental.noalias.scope.decl(metadata !11664)
  %i.en = load i8, ptr %i.g, align 8, !range !93, !alias.scope !11665, !noundef !17
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.en, 25
  br i1 %switch.i.i.i.i.i, label %.body68, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11666)
  call void @llvm.experimental.noalias.scope.decl(metadata !11667)
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !11668, !nonnull !17, !noundef !17
  %i.eq = atomicrmw add ptr %i.ep, i64 -1 release, align 8, !noalias !11668
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.bf, label %.body68

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCsbCXxVlMkWND_6webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eo) #26
          to label %.body68 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body68:                                          ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ay
  %.pn25 = phi { ptr, i32 } [ %i.ea, %bb.ay ], [ %i.em, %bb.bd ], [ %i.em, %bb.bf ], [ %i.em, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver22RTCRtpCodingParametersEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #29
          to label %bb.bi unwind label %bb.au

bb.bh:                                            ; preds = %bb.bc, %bb.bb
  %i.et = load ptr, ptr %i.ax, align 8, !alias.scope !11660, !nonnull !17, !noundef !17
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.et, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.ev = add i64 %i.ej, 1
  store i64 %i.ev, ptr %i.ay, align 8, !alias.scope !11660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ew = icmp eq ptr %i.dm, %i.bb
  br i1 %i.ew, label %._crit_edge, label %bb.aw

bb.bi:                                            ; preds = %bb.s, %.body68
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25, %.body68 ], [ %i.am, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsd_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit71 unwind label %bb.au

bb.bj:                                            ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit71
  %.pn25.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit71 ], [ %.pn19.pn, %bb.av ]
  store i8 2, ptr %i.j, align 8
end_hunk_1
