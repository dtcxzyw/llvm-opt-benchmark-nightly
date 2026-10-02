Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.04?download=true
inline.NumInlined: 3800
inline.NumDeleted: 1337
begin_hunk_0_@_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMs3_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver12rtp_receiverNtB1E_14RTCRtpReceiver15receive_for_rtx00EENtB4_6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4593
  %.val13.i = load ptr, ptr %i.u, align 8, !noalias !4593
  %.val14.i = load ptr, ptr %i.v, align 8, !noalias !4593, !nonnull !17, !align !16, !noundef !17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs8Nt8RkXewNx_3rtp6packet6PacketINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEENtNtCsfFK4IlX6vQW_11interceptor5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr %.val13.i, ptr nonnull %.val14.i) #29
          to label %.body.i unwind label %bb.al

_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtCs8Nt8RkXewNx_3rtp6packet6PacketINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEENtNtCsfFK4IlX6vQW_11interceptor5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.l
  %i.z = load i64, ptr %i.a, align 8, !range !60, !noalias !4593, !noundef !17
  %i.aa = icmp eq i64 %i.z, -2
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtCs8Nt8RkXewNx_3rtp6packet6PacketINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEENtNtCsfFK4IlX6vQW_11interceptor5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4593
  br label %_RNCNCNvMs3_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver12rtp_receiverNtB9_14RTCRtpReceiver15receive_for_rtx00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.o:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtCs8Nt8RkXewNx_3rtp6packet6PacketINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEENtNtCsfFK4IlX6vQW_11interceptor5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !4593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4593
  %.val15.i = load ptr, ptr %i.u, align 8, !noalias !4593 ; 5 uses
  %.val16.i = load ptr, ptr %i.v, align 8, !noalias !4593, !nonnull !17, !align !16, !noundef !17 ; 5 uses
  %i.ab = load ptr, ptr %.val16.i, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
  invoke void %i.ab(ptr noundef nonnull %.val15.i)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !18, !invariant.load !17 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !19, !invariant.load !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #27
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !18, !invariant.load !17 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !19, !invariant.load !17
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #27
  br label %.body.i

bb.u:                                             ; preds = %bb.x, %bb.w
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.v:                                             ; preds = %bb.r, %bb.q
  %.val19.i = load i64, ptr %i.b, align 8, !range !24, !noalias !4593, !noundef !17
  %.not.i.i = icmp eq i64 %.val19.i, -1
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCs8Nt8RkXewNx_3rtp6packet6PacketINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEENtNtCsfFK4IlX6vQW_11interceptor5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b)
          to label %bb.y unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCs8Nt8RkXewNx_3rtp6packet6PacketINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEENtNtCsfFK4IlX6vQW_11interceptor5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b)
          to label %bb.ag unwind label %bb.u

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4593
  br label %bb.i

bb.z:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4593
  %i.ao = getelementptr i8, ptr %.val, i64 16
  %.val18.i = load ptr, ptr %i.ao, align 8, !noalias !4593, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !19, !invariant.load !17
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = and i64 %i.ar, -16
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = getelementptr i8, ptr %.val, i64 80
  %.val.i = load ptr, ptr %i.av, align 8, !noalias !4593, !nonnull !17, !noundef !17
  %i.aw = getelementptr i8, ptr %.val, i64 88
  %.val12.i = load i64, ptr %i.aw, align 8, !noalias !4593, !noundef !17
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.val18.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !17, !nonnull !17
  %i.ba = invoke { ptr, ptr } %i.az(ptr noundef nonnull %i.au, ptr noalias nofree noundef nonnull %.val.i, i64 noundef %.val12.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax)
          to label %bb.ab unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %bb.z
  %i.bc = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.ba, 1      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 96
  store ptr %i.bc, ptr %i.be, align 8, !noalias !4593
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 104
  store ptr %i.bd, ptr %i.bf, align 8, !noalias !4593
  br label %bb.l

.body.i:                                          ; preds = %bb.aa, %bb.u, %bb.t, %bb.s, %bb.m
  %.pn4.i = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %i.ah, %bb.s ], [ %i.y, %bb.m ], [ %i.bb, %bb.aa ], [ %i.an, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4593
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #29
          to label %.body23.i unwind label %bb.al

bb.ac:                                            ; preds = %bb.ag, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body23.i unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ag:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4593
  br label %bb.ac

bb.ah:                                            ; preds = %bb.ae
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.ae
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 24
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEECs4KPtkQIfQGm_13libp2p_webrtc.exit26.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEECs4KPtkQIfQGm_13libp2p_webrtc.exit26.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4601)
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !4601, !noalias !4593, !noundef !17 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_RNCNCNvMs3_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver12rtp_receiverNtB9_14RTCRtpReceiver15receive_for_rtx00Cs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEECs4KPtkQIfQGm_13libp2p_webrtc.exit26.i
  %i.bp = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !4602
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.aj, label %_RNCNCNvMs3_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver12rtp_receiverNtB9_14RTCRtpReceiver15receive_for_rtx00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsfFK4IlX6vQW_11interceptor9RTPReaderNtNtCskKLDkoKarTP_4core6marker4SendNtB1m_4SyncEL_E9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bm) #26
          to label %_RNCNCNvMs3_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver12rtp_receiverNtB9_14RTCRtpReceiver15receive_for_rtx00Cs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor9RTPReaderNtNtB4_6marker4SendNtB2b_4SyncEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.ak, %bb.e, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %.pn10.i = phi { ptr, i32 } [ %i.br, %bb.ak ], [ %.pn8.i, %bb.e ], [ %.pn8.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %.pn8.i, %bb.d ]
  store i8 2, ptr %i.c, align 8, !noalias !4593
  resume { ptr, i32 } %.pn10.i

bb.ak:                                            ; preds = %bb.aj
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsfFK4IlX6vQW_11interceptor9RTPReaderNtNtB4_6marker4SendNtB2b_4SyncEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.al:                                            ; preds = %.body.i, %bb.m, %.body23.i, %bb.e
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNCNCNvMs3_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver12rtp_receiverNtB9_14RTCRtpReceiver15receive_for_rtx00Cs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEECs4KPtkQIfQGm_13libp2p_webrtc.exit26.i, %bb.ai, %bb.aj
  %storemerge.i = phi i8 [ 3, %bb.n ], [ 1, %bb.aj ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEECs4KPtkQIfQGm_13libp2p_webrtc.exit26.i ], [ 1, %bb.ai ]
  %common.ret.op.i = phi i1 [ true, %bb.n ], [ false, %bb.aj ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjjEECs4KPtkQIfQGm_13libp2p_webrtc.exit26.i ], [ false, %bb.ai ]
  store i8 %storemerge.i, ptr %i.c, align 8, !noalias !4593
  ret i1 %common.ret.op.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMs_NtNtCshnIq71uePFX_11webrtc_sctp5timer9rtx_timerINtB1D_8RtxTimerNtNtNtB1H_11association20association_internal19AssociationInternalE5start00EENtB4_6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  %i.b = alloca [112 x i8], align 8               ; 16 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17 ; 78 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 185 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !range !42, !noalias !4677, !noundef !17
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.ao
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 128
  store i64 0, ptr %i.e, align 8, !noalias !4677
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4677
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4677
  br label %bb.at

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4677
  %.phi.trans.insert165.i = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %.val.i83.pre.i = load ptr, ptr %.phi.trans.insert165.i, align 8, !alias.scope !4678, !noalias !4679
  %.phi.trans.insert167.i = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %.val1.i84.pre.i = load ptr, ptr %.phi.trans.insert167.i, align 8, !alias.scope !4678, !noalias !4679
  br label %bb.bo

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4677
  %.phi.trans.insert157.i = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %.val.i.pre.i = load ptr, ptr %.phi.trans.insert157.i, align 8, !alias.scope !4680, !noalias !4681
  %.phi.trans.insert159.i = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %.val1.i.pre.i = load ptr, ptr %.phi.trans.insert159.i, align 8, !alias.scope !4680, !noalias !4681
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4677
  br label %bb.ck

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %bb.c
  %i.f = phi i64 [ %.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.h = load i64, ptr %i.g, align 8, !noalias !4677, !noundef !17
  %i.i = invoke noundef i64 @_RNvNtNtCshnIq71uePFX_11webrtc_sctp5timer9rtx_timer22calculate_next_timeout(i64 noundef %i.h, i64 noundef %i.f)
          to label %bb.ai unwind label %bb.ag     ; 2 uses

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #30
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #30
  unreachable

bb.l:                                             ; preds = %bb.bk, %bb.g
  %.val1.i.i = phi ptr [ %.val1.i.pre.i, %bb.g ], [ %i.di, %bb.bk ]
  %.val.i.i = phi ptr [ %.val.i.pre.i, %bb.g ], [ %i.dh, %bb.bk ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4680)
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !17, !noalias !4682, !nonnull !17
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #32
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.m, !inline_history !65

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !4677
  %.val62.i = load ptr, ptr %i.k, align 8, !noalias !4677, !nonnull !17, !align !16, !noundef !17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr %.val.i, ptr nonnull %.val62.i) #29
          to label %.body.i unwind label %bb.bx

_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4677
  br label %_RNCNCNvMs_NtNtCshnIq71uePFX_11webrtc_sctp5timer9rtx_timerINtB8_8RtxTimerNtNtNtBc_11association20association_internal19AssociationInternalE5start00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.o:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %.val67.i = load ptr, ptr %i.j, align 8, !noalias !4677 ; 5 uses
  %.val68.i = load ptr, ptr %i.k, align 8, !noalias !4677, !nonnull !17, !align !16, !noundef !17 ; 5 uses
  %i.p = load ptr, ptr %.val68.i, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val67.i) ]
  invoke void %i.p(ptr noundef nonnull %.val67.i)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.q = getelementptr inbounds nuw i8, ptr %.val68.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !18, !invariant.load !17 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = getelementptr inbounds nuw i8, ptr %.val68.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !19, !invariant.load !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val67.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val67.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.s:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val68.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !18, !invariant.load !17 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = getelementptr inbounds nuw i8, ptr %.val68.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !19, !invariant.load !17
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val67.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #27
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.bu, %bb.bt, %bb.r, %bb.q
  %.sroa.08.0.i = phi i1 [ true, %bb.r ], [ true, %bb.q ], [ false, %bb.bt ], [ false, %bb.bu ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 152
  invoke void @_RNvXsd_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB5_10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i: ; preds = %.body.i, %bb.bg, %bb.bc, %bb.bb, %bb.au, %bb.v
  %.pn40.i = phi { ptr, i32 } [ %i.ag, %bb.v ], [ %.pn38.i, %.body.i ], [ %i.ck, %bb.bb ], [ %i.ca, %bb.au ], [ %i.cw, %bb.bg ], [ %i.ck, %bb.bc ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4683)
  call void @llvm.experimental.noalias.scope.decl(metadata !4684)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !4685, !noalias !4677, !nonnull !17, !noundef !17
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !4685
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.bx

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4686)
  call void @llvm.experimental.noalias.scope.decl(metadata !4687)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !4688, !noalias !4677, !nonnull !17, !noundef !17
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !4688
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit76.i

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit76.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit76.i: ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  br i1 %.sroa.08.0.i, label %bb.cj, label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit76.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4689)
  %i.am = load i64, ptr %.val, align 8, !range !21, !alias.scope !4689, !noalias !4677, !noundef !17
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !4690)
  call void @llvm.experimental.noalias.scope.decl(metadata !4691)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !4692, !noalias !4677, !nonnull !17, !noundef !17
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !4692
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.ad

bb.ab:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !4693)
  call void @llvm.experimental.noalias.scope.decl(metadata !4694)
  %i.as = load ptr, ptr %i.an, align 8, !alias.scope !4695, !noalias !4677, !nonnull !17, !noundef !17
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !4695
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsc13h7DQFCSE_5tokio7runtime5TimerEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.aw) #29
          to label %.body78.i unwind label %bb.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsc13h7DQFCSE_5tokio7runtime5TimerEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.ax)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body78.i:                                        ; preds = %bb.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %bb.ah, %bb.af, %bb.ad
  %.pn55.i = phi { ptr, i32 } [ %i.bb, %bb.ah ], [ %.pn52.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %i.av, %bb.ad ], [ %i.az, %bb.af ], [ %i.ew, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4677
  br label %bb.ci

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit.i94.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4677
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !4677
  br label %bb.i

bb.ag:                                            ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ah:                                            ; preds = %bb.ai
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

bb.ai:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4677
  %i.bc = udiv i64 %i.i, 1000
  %i.bd = urem i64 %i.i, 1000
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = mul nuw nsw i32 %i.be, 1000000
  invoke void @_RNvNtNtCsc13h7DQFCSE_5tokio4time5sleep5sleep(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, i64 noundef %i.bc, i32 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62)
          to label %bb.aj unwind label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBG_4mpsc7bounded6SenderuEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit124.i, %bb.cf, %bb.aq, %bb.al, %bb.x, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i
  %.pn52.pn.i = phi { ptr, i32 } [ %.pn52.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBG_4mpsc7bounded6SenderuEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit124.i ], [ %.pn40.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i ], [ %i.fa, %bb.cf ], [ %i.bl, %bb.al ], [ %i.bv, %bb.aq ], [ %.pn40.i, %bb.u ], [ %i.al, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %.val) #29
          to label %.body78.i unwind label %bb.bx

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.val, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !4677
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 136
  store ptr %.val, ptr %i.bg, align 8, !noalias !4677
  %2 = getelementptr inbounds nuw i8, ptr %.val, i64 184 ; 2 uses
  store i8 0, ptr %2, align 8, !noalias !4677
  %3 = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %4 = getelementptr inbounds nuw i8, ptr %.val, i64 208 ; 2 uses
  store ptr %.val, ptr %4, align 8, !noalias !4677
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 216
  store ptr %3, ptr %i.bh, align 8, !noalias !4677
  %.sroa.6136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 232
  store i8 0, ptr %.sroa.6136.0..sroa_idx.i, align 8, !noalias !4677
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 192
  store ptr %2, ptr %i.bi, align 8, !noalias !4677
  %5 = getelementptr inbounds nuw i8, ptr %.val, i64 200
  store ptr %4, ptr %5, align 8, !noalias !4677
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.bk = invoke noundef i8 @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNCNvMs_NtNtCshnIq71uePFX_11webrtc_sctp5timer9rtx_timerINtB15_8RtxTimerNtNtNtB19_11association20association_internal19AssociationInternalE5start000ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.am unwind label %bb.al     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.bm = icmp eq i8 %i.bk, -1
  br i1 %i.bm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4677
  br label %_RNCNCNvMs_NtNtCshnIq71uePFX_11webrtc_sctp5timer9rtx_timerINtB8_8RtxTimerNtNtNtBc_11association20association_internal19AssociationInternalE5start00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.ao:                                            ; preds = %bb.am
  %i.bn = icmp ne i8 %i.bk, 3
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nsw i8 %i.bk, -2
  %i.bp = icmp samesign ugt i8 %i.bk, 1
  %narrow.i = select i1 %i.bp, i8 %i.bo, i8 1
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %bb.ap
    i8 1, label %bb.by
    i8 2, label %bb.cg
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noalias !4677, !noundef !17
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.bq, align 8, !noalias !4677
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.bu = invoke noundef ptr @_RNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEE7upgradeCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt)
          to label %bb.ar unwind label %bb.aq     ; 3 uses

bb.aq:                                            ; preds = %bb.ap
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.ar:                                            ; preds = %bb.ap
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %bb.cj, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 144
  store ptr %i.bu, ptr %i.bw, align 8, !noalias !4677
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bx, ptr %i.bj, align 8, !noalias !4677
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 304
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !4677
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 4 uses
  %i.bz = invoke fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtB7_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.av unwind label %bb.au     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.by) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i unwind label %bb.bx

bb.av:                                            ; preds = %bb.at
  %i.cb = icmp eq ptr %i.bz, null
  br i1 %i.cb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4677
  br label %_RNCNCNvMs_NtNtCshnIq71uePFX_11webrtc_sctp5timer9rtx_timerINtB8_8RtxTimerNtNtNtBc_11association20association_internal19AssociationInternalE5start00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.ax:                                            ; preds = %bb.av
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 3 uses
  store ptr %i.bz, ptr %i.cc, align 8, !noalias !4677
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.ce = load i8, ptr %i.cd, align 8, !range !30, !noalias !4677, !noundef !17
  %cond.i.i = icmp eq i8 %i.ce, 3
  br i1 %cond.i.i, label %bb.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 296
  %i.cg = load i8, ptr %i.cf, align 8, !range !30, !noalias !4677, !noundef !17
  %cond.i.i.i = icmp eq i8 %i.cg, 3
  br i1 %cond.i.i.i, label %bb.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 224
  %i.ci = load i8, ptr %i.ch, align 8, !range !28, !noalias !4677, !noundef !17
  %cond.i.i.i.i = icmp eq i8 %i.ci, 4
  br i1 %cond.i.i.i.i, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 232
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.cj)
          to label %bb.bd unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 240
  %.val2.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !4677, !align !16, !noundef !17 ; 2 uses
  %i.cm = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %i.cm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cn = getelementptr i8, ptr %.val, i64 248
  %.val3.i.i.i.i.i = load ptr, ptr %i.cn, align 8, !noalias !4677
  %i.co = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !17, !noundef !17
  invoke void %i.cp(ptr noundef %.val3.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i unwind label %bb.bf, !inline_history !2

bb.bd:                                            ; preds = %bb.ba
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 240
  %.val.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !4677, !align !16, !noundef !17 ; 2 uses
  %i.cr = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cs = getelementptr i8, ptr %.val, i64 248
  %.val1.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !4677
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !17, !noundef !17
  invoke void %i.cu(ptr noundef %.val1.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.bg, !inline_history !73

bb.bf:                                            ; preds = %bb.bc
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalEECs4KPtkQIfQGm_13libp2p_webrtc.exit93.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.be, %bb.bd, %bb.az, %bb.ay, %bb.ax
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !4677, !noundef !17 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit._crit_edge.i, label %bb.bh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit._crit_edge.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %.val73.pre.i = load ptr, ptr %i.cc, align 8, !noalias !4677
  %.phi.trans.insert163.i = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %.pre164.i = load i64, ptr %.phi.trans.insert163.i, align 8, !noalias !4677
  br label %bb.bl

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.db = load i64, ptr %i.da, align 8, !noalias !4677, !noundef !17 ; 2 uses
  %.not33.i = icmp ugt i64 %i.db, %i.cy
  %.val73.pre161.i = load ptr, ptr %i.cc, align 8, !noalias !4677 ; 2 uses
  br i1 %.not33.i, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.dc = getelementptr inbounds nuw i8, ptr %.val73.pre161.i, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %.val, i64 186
  %i.de = load i8, ptr %i.dd, align 2, !range !28, !noalias !4677, !noundef !17
  %i.df = invoke { ptr, ptr } @_RNvXs0_NtNtCshnIq71uePFX_11webrtc_sctp11association20association_internalNtB5_19AssociationInternalNtNtNtB9_5timer9rtx_timer16RtxTimerObserver25on_retransmission_failure(ptr noalias nofree noundef nonnull align 8 dereferenceable(944) %i.dc, i8 noundef %i.de)
          to label %bb.bk unwind label %bb.bj     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bk:                                            ; preds = %bb.bi
  %i.dh = extractvalue { ptr, ptr } %i.df, 0      ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.df, 1      ; 2 uses
  store ptr %i.dh, ptr %i.by, align 8, !noalias !4677
  %i.dj = getelementptr inbounds nuw i8, ptr %.val, i64 200
  store ptr %i.di, ptr %i.dj, align 8, !noalias !4677
  br label %bb.l

bb.bl:                                            ; preds = %bb.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit._crit_edge.i
  %i.dk = phi i64 [ %.pre164.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit._crit_edge.i ], [ %i.db, %bb.bh ]
  %.val73.i = phi ptr [ %.val73.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsc13h7DQFCSE_5tokio4sync5mutexINtBJ_5MutexNtNtNtCshnIq71uePFX_11webrtc_sctp11association20association_internal19AssociationInternalE4lock0ECs4KPtkQIfQGm_13libp2p_webrtc.exit._crit_edge.i ], [ %.val73.pre161.i, %bb.bh ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val73.i, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 186
  %i.dn = load i8, ptr %i.dm, align 2, !range !28, !noalias !4677, !noundef !17
  %i.do = invoke { ptr, ptr } @_RNvXs0_NtNtCshnIq71uePFX_11webrtc_sctp11association20association_internalNtB5_19AssociationInternalNtNtNtB9_5timer9rtx_timer16RtxTimerObserver25on_retransmission_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(944) %i.dl, i8 noundef %i.dn, i64 noundef %i.dk)
          to label %bb.bn unwind label %bb.bm     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bn:                                            ; preds = %bb.bl
  %i.dq = extractvalue { ptr, ptr } %i.do, 0      ; 2 uses
  %i.dr = extractvalue { ptr, ptr } %i.do, 1      ; 2 uses
end_hunk_0
