Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.252?download=true
inline.NumInlined: 489
inline.NumDeleted: 260
begin_hunk_0_@_RNvXNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB1z_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant:bb.a
  store ptr %.sroa.8.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #27
  unreachable

bb.f:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(992) %.sroa.815.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(992) %.sroa.11.0..sroa_idx, i64 992, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.sroa.8.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.107.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1089
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1088 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = load i8, ptr %i.q, align 1, !range !26, !noundef !6
  %i.u = and i8 %i.t, 1
  %i.v = load i8, ptr %i.s, align 8, !range !19, !noundef !6
  store ptr %i.n, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 %i.u, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 17 ; 3 uses
  store i8 %i.v, ptr %.sroa.538.0..sroa_idx, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.x
  %i.w = phi ptr [ %i.r, %bb.f ], [ %.pre, %bb.x ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 822
  %i.y = load i8, ptr %i.x, align 2, !range !19, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 823
  %i.ab = load i8, ptr %i.aa, align 1, !range !19, !noundef !6
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB4_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBT_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ad = invoke { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_flushCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 3 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %.sroa.538.0..sroa_idx, align 1, !range !19, !noundef !6
  store i8 %i.ah, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.c, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB25_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.s unwind label %bb.r

bb.m:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.d, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1056) %i.ai)
          to label %_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %0, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.af) #21
          to label %.thread112 unwind label %bb.q

_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.y, %bb.au, %3, %.thread95, %bb.az, %bb.ay, %bb.ad
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.sink.split

bb.s:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.c, i64 1096, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit, %bb.s, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ac

bb.u:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.i, align 8, !range !14, !noundef !6
  switch i64 %i.am, label %bb.w [
    i64 2, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.an = load i8, ptr %.sroa.538.0..sroa_idx, align 1, !range !19, !noundef !6
  store i8 %i.an, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.f, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB25_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.ab unwind label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.g, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1056) %i.aq)
          to label %_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77 unwind label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.pre = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.y:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ap) #21
          to label %.thread112 unwind label %bb.q

_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.t

bb.aa:                                            ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.sink.split

bb.ab:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.f, i64 1096, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.ac:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit, %bb.t, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread112.sink.split:                            ; preds = %bb.aa, %bb.r
  %.sink = phi ptr [ %i.c, %bb.r ], [ %i.f, %bb.aa ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.as, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %.sink, i64 1096, i1 false)
  br label %.thread112

.thread112:                                       ; preds = %.thread112.sink.split, %bb.au, %bb.p, %bb.y, %bb.as, %bb.az, %.thread130, %bb.ad
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ad ], [ %i.bz, %bb.as ], [ %.pn.pn103128, %bb.az ], [ %.pn.pn103128, %.thread130 ], [ %i.cb, %bb.au ], [ %i.aj, %bb.p ], [ %i.ar, %bb.y ], [ %.pn67.pn.ph, %.thread112.sink.split ]
  resume { ptr, i32 } %.pn67.pn

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB1q_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %i.n) #21
          to label %.thread112 unwind label %bb.q

bb.ae:                                            ; preds = %bb.am, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.p, align 8
  %i.at = invoke { i64, ptr } @_RNvMs7_NtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @16)
          to label %bb.af unwind label %.thread105.thread122 ; 2 uses

.thread105.thread122:                             ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

.thread124:                                       ; preds = %bb.aq
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.af:                                            ; preds = %bb.ae
  %i.aw = extractvalue { i64, ptr } %i.at, 0
  %i.ax = extractvalue { i64, ptr } %i.at, 1      ; 11 uses
  %i.ay = trunc nuw i64 %i.aw to i1               ; 2 uses
  br i1 %i.ay, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.az = ptrtoint ptr %i.ax to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ba = and i64 %i.az, 3                        ; 2 uses
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.ah
    i64 3, label %bb.ai
    i64 0, label %bb.aj
    i64 1, label %bb.ak
  ], !prof !16

default.unreachable:                              ; preds = %bb.av, %bb.ao, %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %3

.noexc:                                           ; preds = %bb.ah
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !0

bb.ai:                                            ; preds = %bb.ag
  %i.bh = lshr i64 %i.az, 32
  %i.bi = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bh to i8  ; 2 uses
  %i.bj = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bj)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.aj:                                            ; preds = %bb.ag
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ak:                                            ; preds = %bb.ag
  %i.bm = getelementptr i8, ptr %i.ax, i64 31
  %i.bn = load i8, ptr %i.bm, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.al:                                            ; preds = %bb.af
  %i.bo = icmp eq ptr %i.ax, null
  br i1 %i.bo, label %.loopexit137, label %bb.am

.loopexit137:                                     ; preds = %bb.al, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.bp = phi ptr [ %i.ax, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.al ] ; 3 uses
  %i.bq = phi i64 [ %i.az, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.al ] ; 2 uses
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.428.0..sroa_idx, align 8
  br i1 %i.ay, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

3:                                                ; preds = %bb.ah, %.noexc
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ax) #21
          to label %.thread95 unwind label %bb.q

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.bn, %bb.ak ], [ %switch.idx.cast.i.i.i, %bb.ai ], [ %i.bl, %bb.aj ], [ %i.bg, %.noexc ]
  %i.br = icmp eq i8 %.sroa.0.0.i, 13
  br i1 %i.br, label %bb.an, label %.loopexit137

bb.an:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB25_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.av unwind label %bb.au

bb.ao:                                            ; preds = %.loopexit137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bs = and i64 %i.bq, 3
  switch i64 %i.bs, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit
    i64 3, label %bb.ap
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit
    i64 1, label %bb.aq
  ], !prof !16

bb.ap:                                            ; preds = %bb.ao
  %i.bt = icmp ult ptr %i.bp, inttoptr (i64 188978561024 to ptr)
  %i.bu = and i64 %i.bq, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bv)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.aq:                                            ; preds = %bb.ao
  %i.bw = getelementptr i8, ptr %i.bp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !648
  store i8 3, ptr %i.b, align 8, !alias.scope !648
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit unwind label %.thread124

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.aq, %bb.ao, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit, %.loopexit137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %.thread112 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ar
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit

bb.au:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ax) #21
          to label %.thread112 unwind label %bb.q

bb.av:                                            ; preds = %bb.an
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.aw
    i64 0, label %.critedge
    i64 1, label %bb.ax
  ], !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cc = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %i.cd = and i64 %i.az, 1095216660480
  %i.ce = icmp ne i64 %i.cd, 1095216660480
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 %i.ce)
  br label %.critedge

bb.ax:                                            ; preds = %bb.av
  %i.cf = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !alias.scope !649
  store i8 3, ptr %i.a, align 8, !alias.scope !649
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg)
  br label %.critedge

.critedge:                                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ac

.thread130:                                       ; preds = %bb.ay
  br i1 %.sroa.059.0101129, label %bb.az, label %.thread112

.thread95:                                        ; preds = %.thread105.thread122, %3
  %.pn.pn104 = phi { ptr, i32 } [ %i.au, %.thread105.thread122 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.sroa.107.0.copyload) #21
          to label %bb.ay unwind label %bb.q

bb.ay:                                            ; preds = %.thread95, %.thread124
  %.sroa.059.0101129 = phi i1 [ false, %.thread124 ], [ true, %.thread95 ]
  %.pn.pn103128 = phi { ptr, i32 } [ %i.av, %.thread124 ], [ %.pn.pn104, %.thread95 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #21
          to label %.thread130 unwind label %bb.q

bb.az:                                            ; preds = %.thread130
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBC_NtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #21
          to label %.thread112 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB1z_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1096 x i8]) align 8 captures(none) dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(1096) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [1096 x i8], align 8              ; 5 uses
  %i.d = alloca [1096 x i8], align 8              ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [1096 x i8], align 8              ; 5 uses
  %i.g = alloca [1096 x i8], align 8              ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.518 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.620 = alloca [56 x i8], align 8          ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [1096 x i8], align 8              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.107.0.copyload = load ptr, ptr %.sroa.107.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %1, align 8
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 1)
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.f
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 1, label %bb.e
  ], !prof !25

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.8.0.copyload, ptr %i.l, align 8
  %.sroa.10.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  store i64 2, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #27
  unreachable

bb.f:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(992) %.sroa.815.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(992) %.sroa.11.0..sroa_idx, i64 992, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.sroa.8.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.107.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1089
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1088 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = load i8, ptr %i.q, align 1, !range !26, !noundef !6
  %i.u = and i8 %i.t, 1
  %i.v = load i8, ptr %i.s, align 8, !range !19, !noundef !6
  store ptr %i.n, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 %i.u, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 17 ; 3 uses
  store i8 %i.v, ptr %.sroa.538.0..sroa_idx, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.x
  %i.w = phi ptr [ %i.r, %bb.f ], [ %.pre, %bb.x ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 822
  %i.y = load i8, ptr %i.x, align 2, !range !19, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 823
  %i.ab = load i8, ptr %i.aa, align 1, !range !19, !noundef !6
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB4_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBT_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ad = invoke { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBU_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEENtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionENtNtNtB1T_2io11async_write10AsyncWrite10poll_flushCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 3 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %.sroa.538.0..sroa_idx, align 1, !range !19, !noundef !6
  store i8 %i.ah, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.c, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB25_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.s unwind label %bb.r

bb.m:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.d, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1056) %i.ai)
          to label %_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %0, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.af) #21
          to label %.thread112 unwind label %bb.q

_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.y, %bb.au, %3, %.thread95, %bb.az, %bb.ay, %bb.ad
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.sink.split

bb.s:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.c, i64 1096, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit, %bb.s, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ac

bb.u:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.i, align 8, !range !14, !noundef !6
  switch i64 %i.am, label %bb.w [
    i64 2, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.an = load i8, ptr %.sroa.538.0..sroa_idx, align 1, !range !19, !noundef !6
  store i8 %i.an, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.f, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB25_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.ab unwind label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.g, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6client11client_conn10connection16ClientConnectionECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1056) %i.aq)
          to label %_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77 unwind label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.pre = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.y:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ap) #21
          to label %.thread112 unwind label %bb.q

_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %_RNvXs6_NtCs38lzWNSsbR5_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBX_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.t

bb.aa:                                            ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.sink.split

bb.ab:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.f, i64 1096, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.ac:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit, %bb.t, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread112.sink.split:                            ; preds = %bb.aa, %bb.r
  %.sink = phi ptr [ %i.c, %bb.r ], [ %i.f, %bb.aa ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.as, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %.sink, i64 1096, i1 false)
  br label %.thread112

.thread112:                                       ; preds = %.thread112.sink.split, %bb.au, %bb.p, %bb.y, %bb.as, %bb.az, %.thread130, %bb.ad
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ad ], [ %i.bz, %bb.as ], [ %.pn.pn103128, %bb.az ], [ %.pn.pn103128, %.thread130 ], [ %i.cb, %bb.au ], [ %i.aj, %bb.p ], [ %i.ar, %bb.y ], [ %.pn67.pn.ph, %.thread112.sink.split ]
  resume { ptr, i32 } %.pn67.pn

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs38lzWNSsbR5_12tokio_rustls6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB1q_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %i.n) #21
          to label %.thread112 unwind label %bb.q

bb.ae:                                            ; preds = %bb.am, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.p, align 8
  %i.at = invoke { i64, ptr } @_RNvMs7_NtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @20)
          to label %bb.af unwind label %.thread105.thread122 ; 2 uses

.thread105.thread122:                             ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

.thread124:                                       ; preds = %bb.aq
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.af:                                            ; preds = %bb.ae
  %i.aw = extractvalue { i64, ptr } %i.at, 0
  %i.ax = extractvalue { i64, ptr } %i.at, 1      ; 11 uses
  %i.ay = trunc nuw i64 %i.aw to i1               ; 2 uses
  br i1 %i.ay, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.az = ptrtoint ptr %i.ax to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ba = and i64 %i.az, 3                        ; 2 uses
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.ah
    i64 3, label %bb.ai
    i64 0, label %bb.aj
    i64 1, label %bb.ak
  ], !prof !16

default.unreachable:                              ; preds = %bb.av, %bb.ao, %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %3

.noexc:                                           ; preds = %bb.ah
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !0

bb.ai:                                            ; preds = %bb.ag
  %i.bh = lshr i64 %i.az, 32
  %i.bi = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bh to i8  ; 2 uses
  %i.bj = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bj)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.aj:                                            ; preds = %bb.ag
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ak:                                            ; preds = %bb.ag
  %i.bm = getelementptr i8, ptr %i.ax, i64 31
  %i.bn = load i8, ptr %i.bm, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.al:                                            ; preds = %bb.af
  %i.bo = icmp eq ptr %i.ax, null
  br i1 %i.bo, label %.loopexit137, label %bb.am

.loopexit137:                                     ; preds = %bb.al, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.bp = phi ptr [ %i.ax, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.al ] ; 3 uses
  %i.bq = phi i64 [ %i.az, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.al ] ; 2 uses
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.428.0..sroa_idx, align 8
  br i1 %i.ay, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

3:                                                ; preds = %bb.ah, %.noexc
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ax) #21
          to label %.thread95 unwind label %bb.q

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.bn, %bb.ak ], [ %switch.idx.cast.i.i.i, %bb.ai ], [ %i.bl, %bb.aj ], [ %i.bg, %.noexc ]
  %i.br = icmp eq i8 %.sroa.0.0.i, 13
  br i1 %i.br, label %bb.an, label %.loopexit137

bb.an:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIB25_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.av unwind label %bb.au

bb.ao:                                            ; preds = %.loopexit137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bs = and i64 %i.bq, 3
  switch i64 %i.bs, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit
    i64 3, label %bb.ap
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit
    i64 1, label %bb.aq
  ], !prof !16

bb.ap:                                            ; preds = %bb.ao
  %i.bt = icmp ult ptr %i.bp, inttoptr (i64 188978561024 to ptr)
  %i.bu = and i64 %i.bq, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bv)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.aq:                                            ; preds = %bb.ao
  %i.bw = getelementptr i8, ptr %i.bp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !654
  store i8 3, ptr %i.b, align 8, !alias.scope !654
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit unwind label %.thread124

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.aq, %bb.ao, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit, %.loopexit137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %.thread112 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ar
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit

bb.au:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ax) #21
          to label %.thread112 unwind label %bb.q

bb.av:                                            ; preds = %bb.an
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.aw
    i64 0, label %.critedge
    i64 1, label %bb.ax
  ], !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cc = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %i.cd = and i64 %i.az, 1095216660480
  %i.ce = icmp ne i64 %i.cd, 1095216660480
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 %i.ce)
  br label %.critedge

bb.ax:                                            ; preds = %bb.av
  %i.cf = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !alias.scope !655
  store i8 3, ptr %i.a, align 8, !alias.scope !655
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg)
  br label %.critedge

.critedge:                                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ac

.thread130:                                       ; preds = %bb.ay
  br i1 %.sroa.059.0101129, label %bb.az, label %.thread112

.thread95:                                        ; preds = %.thread105.thread122, %3
  %.pn.pn104 = phi { ptr, i32 } [ %i.au, %.thread105.thread122 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.sroa.107.0.copyload) #21
          to label %bb.ay unwind label %bb.q

bb.ay:                                            ; preds = %.thread95, %.thread124
  %.sroa.059.0101129 = phi i1 [ false, %.thread124 ], [ true, %.thread95 ]
  %.pn.pn103128 = phi { ptr, i32 } [ %i.av, %.thread124 ], [ %.pn.pn104, %.thread95 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #21
          to label %.thread130 unwind label %bb.q

bb.az:                                            ; preds = %.thread130
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoIBC_NtNtNtNtCsjZG7hsAZr3B_5tokio3net4unix6stream10UnixStreamEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #21
          to label %.thread112 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(1208) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [1208 x i8], align 8              ; 5 uses
  %i.d = alloca [1208 x i8], align 8              ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [1208 x i8], align 8              ; 5 uses
  %i.g = alloca [1208 x i8], align 8              ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.518 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.620 = alloca [56 x i8], align 8          ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [1208 x i8], align 8              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.107.0.copyload = load ptr, ptr %.sroa.107.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %1, align 8
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 1)
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.f
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 1, label %bb.e
  ], !prof !25

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.8.0.copyload, ptr %i.l, align 8
  %.sroa.10.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  store i64 2, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #27
  unreachable

bb.f:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.815.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.11.0..sroa_idx, i64 1104, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.sroa.8.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.107.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1201
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1200 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = load i8, ptr %i.q, align 1, !range !26, !noundef !6
  %i.u = and i8 %i.t, 1
  %i.v = load i8, ptr %i.s, align 8, !range !19, !noundef !6
  store ptr %i.n, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 %i.u, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 17 ; 3 uses
  store i8 %i.v, ptr %.sroa.538.0..sroa_idx, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.x
  %i.w = phi ptr [ %i.r, %bb.f ], [ %.pre, %bb.x ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 822
  %i.y = load i8, ptr %i.x, align 2, !range !19, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 823
  %i.ab = load i8, ptr %i.aa, align 1, !range !19, !noundef !6
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB4_6StreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ad = invoke { i64, ptr } @_RNvXs2_NtCs38lzWNSsbR5_12tokio_rustls6commonINtB5_6StreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection16ServerConnectionENtNtNtB11_2io11async_write10AsyncWrite10poll_flushCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 3 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %.sroa.538.0..sroa_idx, align 1, !range !19, !noundef !6
  store i8 %i.ah, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.c, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.s unwind label %bb.r

bb.m:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.d, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection16ServerConnectionECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1168) %i.ai)
          to label %_RNvXs7_NtCs38lzWNSsbR5_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.af) #21
          to label %.thread112 unwind label %bb.q

_RNvXs7_NtCs38lzWNSsbR5_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.y, %bb.au, %3, %.thread95, %bb.az, %bb.ay, %bb.ad
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.sink.split

bb.s:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.c, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs7_NtCs38lzWNSsbR5_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit, %bb.s, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ac

bb.u:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.i, align 8, !range !14, !noundef !6
  switch i64 %i.am, label %bb.w [
    i64 2, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.an = load i8, ptr %.sroa.538.0..sroa_idx, align 1, !range !19, !noundef !6
  store i8 %i.an, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.f, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.ab unwind label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.g, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection16ServerConnectionECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1168) %i.aq)
          to label %_RNvXs7_NtCs38lzWNSsbR5_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77 unwind label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.pre = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.y:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ap) #21
          to label %.thread112 unwind label %bb.q

_RNvXs7_NtCs38lzWNSsbR5_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %_RNvXs7_NtCs38lzWNSsbR5_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCsl8OoimOLbh_6qdrant.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.t

bb.aa:                                            ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.sink.split

bb.ab:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.f, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.ac:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit, %bb.t, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread112.sink.split:                            ; preds = %bb.aa, %bb.r
  %.sink = phi ptr [ %i.c, %bb.r ], [ %i.f, %bb.aa ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.as, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %.sink, i64 1208, i1 false)
  br label %.thread112

.thread112:                                       ; preds = %.thread112.sink.split, %bb.au, %bb.p, %bb.y, %bb.as, %bb.az, %.thread130, %bb.ad
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ad ], [ %i.bz, %bb.as ], [ %.pn.pn103128, %bb.az ], [ %.pn.pn103128, %.thread130 ], [ %i.cb, %bb.au ], [ %i.aj, %bb.p ], [ %i.ar, %bb.y ], [ %.pn67.pn.ph, %.thread112.sink.split ]
  resume { ptr, i32 } %.pn67.pn

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs38lzWNSsbR5_12tokio_rustls6server9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.n) #21
          to label %.thread112 unwind label %bb.q

bb.ae:                                            ; preds = %bb.am, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.p, align 8
  %i.at = invoke { i64, ptr } @_RNvMs7_NtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @21)
          to label %bb.af unwind label %.thread105.thread122 ; 2 uses

.thread105.thread122:                             ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

.thread124:                                       ; preds = %bb.aq
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.af:                                            ; preds = %bb.ae
  %i.aw = extractvalue { i64, ptr } %i.at, 0
  %i.ax = extractvalue { i64, ptr } %i.at, 1      ; 11 uses
  %i.ay = trunc nuw i64 %i.aw to i1               ; 2 uses
  br i1 %i.ay, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.az = ptrtoint ptr %i.ax to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ba = and i64 %i.az, 3                        ; 2 uses
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.ah
    i64 3, label %bb.ai
    i64 0, label %bb.aj
    i64 1, label %bb.ak
  ], !prof !16

default.unreachable:                              ; preds = %bb.av, %bb.ao, %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %3

.noexc:                                           ; preds = %bb.ah
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !0

bb.ai:                                            ; preds = %bb.ag
  %i.bh = lshr i64 %i.az, 32
  %i.bi = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bh to i8  ; 2 uses
  %i.bj = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bj)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.aj:                                            ; preds = %bb.ag
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ak:                                            ; preds = %bb.ag
  %i.bm = getelementptr i8, ptr %i.ax, i64 31
  %i.bn = load i8, ptr %i.bm, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.al:                                            ; preds = %bb.af
  %i.bo = icmp eq ptr %i.ax, null
  br i1 %i.bo, label %.loopexit137, label %bb.am

.loopexit137:                                     ; preds = %bb.al, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.bp = phi ptr [ %i.ax, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.al ] ; 3 uses
  %i.bq = phi i64 [ %i.az, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.al ] ; 2 uses
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.428.0..sroa_idx, align 8
  br i1 %i.ay, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

3:                                                ; preds = %bb.ah, %.noexc
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ax) #21
          to label %.thread95 unwind label %bb.q

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.bn, %bb.ak ], [ %switch.idx.cast.i.i.i, %bb.ai ], [ %i.bl, %bb.aj ], [ %i.bg, %.noexc ]
  %i.br = icmp eq i8 %.sroa.0.0.i, 13
  br i1 %i.br, label %bb.an, label %.loopexit137

bb.an:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs38lzWNSsbR5_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.av unwind label %bb.au

bb.ao:                                            ; preds = %.loopexit137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bs = and i64 %i.bq, 3
  switch i64 %i.bs, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit
    i64 3, label %bb.ap
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit
    i64 1, label %bb.aq
  ], !prof !16

bb.ap:                                            ; preds = %bb.ao
  %i.bt = icmp ult ptr %i.bp, inttoptr (i64 188978561024 to ptr)
  %i.bu = and i64 %i.bq, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bv)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.aq:                                            ; preds = %bb.ao
  %i.bw = getelementptr i8, ptr %i.bp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !660
  store i8 3, ptr %i.b, align 8, !alias.scope !660
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit unwind label %.thread124

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.aq, %bb.ao, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit, %.loopexit137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %.thread112 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ar
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit

bb.au:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.ax) #21
          to label %.thread112 unwind label %bb.q

bb.av:                                            ; preds = %bb.an
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.aw
    i64 0, label %.critedge
    i64 1, label %bb.ax
  ], !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cc = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %i.cd = and i64 %i.az, 1095216660480
  %i.ce = icmp ne i64 %i.cd, 1095216660480
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 %i.ce)
  br label %.critedge

bb.ax:                                            ; preds = %bb.av
  %i.cf = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !alias.scope !661
  store i8 3, ptr %i.a, align 8, !alias.scope !661
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg)
  br label %.critedge

.critedge:                                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbM8FbnNn9aS_6rustls6vecbuf14ChunkVecBufferECsl8OoimOLbh_6qdrant.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ac

.thread130:                                       ; preds = %bb.ay
  br i1 %.sroa.059.0101129, label %bb.az, label %.thread112

.thread95:                                        ; preds = %.thread105.thread122, %3
  %.pn.pn104 = phi { ptr, i32 } [ %i.au, %.thread105.thread122 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.sroa.107.0.copyload) #21
          to label %bb.ay unwind label %bb.q

bb.ay:                                            ; preds = %.thread95, %.thread124
  %.sroa.059.0101129 = phi i1 [ false, %.thread124 ], [ true, %.thread95 ]
  %.pn.pn103128 = phi { ptr, i32 } [ %i.av, %.thread124 ], [ %.pn.pn104, %.thread95 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbM8FbnNn9aS_6rustls6server11server_conn10connection13AcceptedAlertECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #21
          to label %.thread130 unwind label %bb.q

bb.az:                                            ; preds = %.thread130
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #21
          to label %.thread112 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_23INtB2_9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtB1b_2io10async_read9AsyncRead9poll_readCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs8_NtCs38lzWNSsbR5_12tokio_rustls6serverINtB5_9TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamENtNtNtB14_2io10async_read9AsyncRead9poll_readCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1Y_NtCsG258MDvU3F_3std4pathNtB6_9ComponentNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !686, !noundef !6 ; 4 uses
  %i.b = icmp samesign ugt i8 %i.a, 5
  %i.c = zext nneg i8 %i.a to i64
  %i.d = add nsw i64 %i.c, -5
  %i.e = select i1 %i.b, i64 %i.d, i64 0          ; 2 uses
  %i.f = load i8, ptr %1, align 8, !range !686, !noundef !6 ; 3 uses
  %i.g = icmp samesign ult i8 %i.f, 6             ; 2 uses
  %i.h = zext nneg i8 %i.f to i64
  %i.i = add nsw i64 %i.h, -5
  %i.j = select i1 %i.g, i64 0, i64 %i.i
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit [
    i64 0, label %bb.c
    i64 4, label %bb.r
  ]

_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit33.i, %bb.l, %bb.k, %bb.j, %bb.i, %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit27.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.l ], [ false, %bb.r ], [ true, %bb.c ], [ false, %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit33.i ], [ false, %bb.h ], [ false, %bb.d ], [ %i.ac, %bb.i ], [ false, %bb.p ], [ false, %bb.n ], [ false, %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit27.i ], [ %i.at, %bb.m ], [ %i.r, %bb.g ], [ false, %bb.f ], [ %i.ai, %bb.k ], [ false, %bb.j ], [ %i.az, %bb.o ], [ %i.bf, %bb.q ], [ %i.bl, %bb.s ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.l = icmp eq i8 %i.a, %i.f
  br i1 %i.l, label %bb.e, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.l
    i8 5, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val22.i = load i64, ptr %i.m, align 8, !alias.scope !687, !noalias !688, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24.i = load i64, ptr %i.n, align 8, !alias.scope !688, !noalias !687, !noundef !6
  %i.o = icmp eq i64 %.val22.i, %.val24.i
  br i1 %i.o, label %bb.g, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val23.i = load ptr, ptr %i.p, align 8, !alias.scope !688, !noalias !687, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val21.i = load ptr, ptr %i.q, align 8, !alias.scope !687, !noalias !688, !nonnull !6, !noundef !6
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val21.i, ptr nonnull readonly %.val23.i, i64 %.val22.i), !alias.scope !689, !noalias !690
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18.i = load i64, ptr %i.s, align 8, !alias.scope !687, !noalias !688, !noundef !6 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val20.i = load i64, ptr %i.t, align 8, !alias.scope !688, !noalias !687, !noundef !6
  %i.u = icmp eq i64 %.val18.i, %.val20.i
  br i1 %i.u, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit27.i, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit27.i: ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val19.i = load ptr, ptr %i.v, align 8, !alias.scope !688, !noalias !687, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17.i = load ptr, ptr %i.w, align 8, !alias.scope !687, !noalias !688, !nonnull !6, !noundef !6
  %bcmp.i.i26.i = tail call i32 @bcmp(ptr nonnull readonly %.val17.i, ptr nonnull readonly %.val19.i, i64 %.val18.i), !alias.scope !691, !noalias !690
  %i.x = icmp eq i32 %bcmp.i.i26.i, 0
  br i1 %i.x, label %bb.n, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !687, !noalias !688, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !688, !noalias !687, !noundef !6
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val14.i = load i64, ptr %i.ad, align 8, !alias.scope !687, !noalias !688, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val16.i = load i64, ptr %i.ae, align 8, !alias.scope !688, !noalias !687, !noundef !6
  %i.af = icmp eq i64 %.val14.i, %.val16.i
  br i1 %i.af, label %bb.k, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i = load ptr, ptr %i.ag, align 8, !alias.scope !688, !noalias !687, !nonnull !6, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val13.i = load ptr, ptr %i.ah, align 8, !alias.scope !687, !noalias !688, !nonnull !6, !noundef !6
  %bcmp.i.i29.i = tail call i32 @bcmp(ptr nonnull readonly %.val13.i, ptr nonnull readonly %.val15.i, i64 %.val14.i), !alias.scope !692, !noalias !690
  %i.ai = icmp eq i32 %bcmp.i.i29.i, 0
  br label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10.i = load i64, ptr %i.aj, align 8, !alias.scope !687, !noalias !688, !noundef !6 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12.i = load i64, ptr %i.ak, align 8, !alias.scope !688, !noalias !687, !noundef !6
  %i.al = icmp eq i64 %.val10.i, %.val12.i
  br i1 %i.al, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit33.i, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit33.i: ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i = load ptr, ptr %i.am, align 8, !alias.scope !688, !noalias !687, !nonnull !6, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9.i = load ptr, ptr %i.an, align 8, !alias.scope !687, !noalias !688, !nonnull !6, !noundef !6
  %bcmp.i.i32.i = tail call i32 @bcmp(ptr nonnull readonly %.val9.i, ptr nonnull readonly %.val11.i, i64 %.val10.i), !alias.scope !693, !noalias !690
  %i.ao = icmp eq i32 %bcmp.i.i32.i, 0
  br i1 %i.ao, label %bb.p, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !687, !noalias !688, !noundef !6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !688, !noalias !687, !noundef !6
  %i.at = icmp eq i8 %i.aq, %i.as
  br label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit27.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6.i = load i64, ptr %i.au, align 8, !alias.scope !687, !noalias !688, !noundef !6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8.i = load i64, ptr %i.av, align 8, !alias.scope !688, !noalias !687, !noundef !6
  %i.aw = icmp eq i64 %.val6.i, %.val8.i
  br i1 %i.aw, label %bb.o, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val7.i = load ptr, ptr %i.ax, align 8, !alias.scope !688, !noalias !687, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i = load ptr, ptr %i.ay, align 8, !alias.scope !687, !noalias !688, !nonnull !6, !noundef !6
  %bcmp.i.i35.i = tail call i32 @bcmp(ptr nonnull readonly %.val5.i, ptr nonnull readonly %.val7.i, i64 %.val6.i), !alias.scope !694, !noalias !690
  %i.az = icmp eq i32 %bcmp.i.i35.i, 0
  br label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit33.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load i64, ptr %i.ba, align 8, !alias.scope !687, !noalias !688, !noundef !6 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4.i = load i64, ptr %i.bb, align 8, !alias.scope !688, !noalias !687, !noundef !6
  %i.bc = icmp eq i64 %.val2.i, %.val4.i
  br i1 %i.bc, label %bb.q, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load ptr, ptr %i.bd, align 8, !alias.scope !688, !noalias !687, !nonnull !6, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.be, align 8, !alias.scope !687, !noalias !688, !nonnull !6, !noundef !6
  %bcmp.i.i38.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !alias.scope !695, !noalias !690
  %i.bf = icmp eq i32 %bcmp.i.i38.i, 0
  br label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.bg, align 8, !noundef !6 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load i64, ptr %i.bh, align 8, !noundef !6
  %i.bi = icmp eq i64 %.val2, %.val4
  br i1 %i.bi, label %bb.s, label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.bj, align 8, !nonnull !6, !noundef !6
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bk, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val3, i64 %.val2), !alias.scope !696
  %i.bl = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs1G_NtCsG258MDvU3F_3std4pathNtB6_6PrefixNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
