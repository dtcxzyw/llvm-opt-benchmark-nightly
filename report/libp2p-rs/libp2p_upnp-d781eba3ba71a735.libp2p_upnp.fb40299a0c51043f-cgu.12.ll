Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_upnp-d781eba3ba71a735.libp2p_upnp.fb40299a0c51043f-cgu.12?download=true
inline.NumInlined: 1057
inline.NumDeleted: 521
begin_hunk_0_@_RNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio16get_control_urls0CslzoSl9yxMOF_11libp2p_upnp:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.x, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net11socket_addr10SocketAddrNtB6_7Display3fmtCslzoSl9yxMOF_11libp2p_upnp, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.aa, ptr %i.ag, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCslzoSl9yxMOF_11libp2p_upnp, ptr %.sroa.579.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @20, ptr noundef nonnull %i.q)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.body60

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !1447
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val49 = load ptr, ptr %i.ai, align 8, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val50 = load i64, ptr %i.aj, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1451
  invoke void @_RNvMNtCs1eA6bChxBZF_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val49, i64 noundef %.val50)
          to label %.noexc54 unwind label %bb.g

.noexc54:                                         ; preds = %bb.f
  invoke void @_RNvMNtCscwxJ8MeEu7n_4http3uriNtB2_3Uri11from_shared(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.noexc54, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #25
          to label %.body60 unwind label %bb.aa

bb.h:                                             ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1451
  %i.al = load i8, ptr %i.t, align 8, !range !1458, !noundef !9
  %i.am = icmp eq i8 %i.al, -1
  br i1 %i.am, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false)
  store i8 1, ptr %i.w, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ac

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ar = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 6
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ugt i64 %i.ar, 3
  br i1 %i.at, label %bb.o, label %bb.r

bb.n:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.an, ptr %i.p, align 8
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsh_NtCscwxJ8MeEu7n_4http3uriNtB5_3UriNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.586.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @24, ptr %i.o, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 20, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @24, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 20, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr @23, ptr %i.ay, align 8
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull @21, ptr noundef nonnull %i.p, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.r:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6clientINtB3_6ClientuuE7builderNtNtNtB9_2rt5tokio13TokioExecutorECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(address) dereferenceable(312) %i.n)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMsa_NtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6clientNtB6_7Builder10build_httpINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.n)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client7BuilderECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(312) %i.n) #25
          to label %bb.ab unwind label %bb.aa

bb.u:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client7BuilderECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(312) %i.n)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 0, ptr %i.w, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false)
  %i.bc = invoke { ptr, ptr } @_RNvMs_NtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6clientINtB4_6ClientNtNtNtB6_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE3getCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.l)
          to label %bb.y unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.be = extractvalue { ptr, ptr } %i.bc, 0
  %i.bf = extractvalue { ptr, ptr } %i.bc, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 440
  store ptr %i.bf, ptr %i.bh, align 8
  br label %bb.ak

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77, %bb.v
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77 ], [ %i.bb, %bb.v ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(288) %1) #25
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %.body73, %bb.al, %bb.ce, %bb.bc, %bb.z, %bb.t, %bb.g
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ab:                                            ; preds = %bb.t, %bb.q
  %.pn9 = phi { ptr, i32 } [ %i.ba, %bb.t ], [ %i.az, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.n, %bb.cc, %bb.ab, %bb.z, %.body
  %.pn30 = phi { ptr, i32 } [ %i.ez, %bb.cc ], [ %.pn24.pn.pn.pn.pn, %bb.z ], [ %.pn9, %bb.ab ], [ %eh.lpad-body, %.body ], [ %i.au, %bb.n ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bk = load i8, ptr %i.bj, align 8, !range !231, !noundef !9
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.ce, label %bb.ah

bb.ad:                                            ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !range !1107, !noundef !9
  %.sroa.7.8.insert.ext = zext nneg i8 %i.bn to i64
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i59 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body60 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i59: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit63 unwind label %bb.ag

.body60:                                          ; preds = %bb.ag, %bb.ae, %bb.g, %bb.e
  %.pn34 = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %i.ak, %bb.g ], [ %i.bq, %bb.ag ], [ %i.bo, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ah

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i59
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body60

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit63: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cd

bb.ah:                                            ; preds = %bb.ce, %.body60, %bb.ac
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %.body60 ], [ %.pn30, %bb.ce ], [ %.pn30, %bb.ac ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i8 0, ptr %i.br, align 8
  store i8 2, ptr %i.u, align 1
  resume { ptr, i32 } %.pn34.pn

bb.ai:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28
  unreachable

bb.ak:                                            ; preds = %bb.b, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 4 uses
  invoke void @_RNvXs6_NtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6clientNtB5_14ResponseFutureNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %1, i64 440
  %.val38 = load ptr, ptr %i.bu, align 8, !nonnull !9, !align !176, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp(ptr %.val, ptr nonnull %.val38) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77 unwind label %bb.aa

bb.am:                                            ; preds = %bb.ak
  %i.bv = load i64, ptr %i.k, align 8, !range !435, !noundef !9 ; 3 uses
  %i.bw = icmp eq i64 %i.bv, -2
  br i1 %i.bw, label %bb.an, label %bb.ao

common.ret:                                       ; preds = %bb.cd, %bb.be, %bb.an
  %.sink = phi i8 [ 1, %bb.cd ], [ 4, %bb.be ], [ 3, %bb.an ]
  store i8 %.sink, ptr %i.u, align 1
  ret void

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %common.ret

bb.ao:                                            ; preds = %bb.am
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.3.sroa.3, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, i64 33, i1 false)
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  %.sroa.3.sroa.5.0.copyload = load i8, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3.sroa.7, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, i64 14, i1 false)
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5108, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5108.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val39 = load ptr, ptr %i.bs, align 8          ; 5 uses
  %i.bx = getelementptr i8, ptr %1, i64 440
  %.val40 = load ptr, ptr %i.bx, align 8, !nonnull !9, !align !176, !noundef !9 ; 5 uses
  %i.by = load ptr, ptr %.val40, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val39) ]
  invoke void %i.by(ptr noundef nonnull %.val39)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bz = getelementptr inbounds nuw i8, ptr %.val40, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !11, !invariant.load !9 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.cc = getelementptr inbounds nuw i8, ptr %.val40, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !12, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val39) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) %i.cd) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val40, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !11, !invariant.load !9 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.ar
  %i.ci = getelementptr inbounds nuw i8, ptr %.val40, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !12, !invariant.load !9
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) %i.cj) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.aq
  %i.ck = icmp eq i64 %i.bv, -1
  br i1 %i.ck, label %bb.az, label %bb.as

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit
  %.sroa.14105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5108, i64 88, i1 false)
  store i64 %i.bv, ptr %i.j, align 8
  %.sroa.12103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.3.sroa.0.0.copyload, ptr %.sroa.12103.0..sroa_idx, align 8
  %.sroa.12103.sroa.12.0..sroa.12103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.12103.sroa.12.0..sroa.12103.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.3.sroa.3, i64 33, i1 false)
  %.sroa.12103.sroa.13.0..sroa.12103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  store i8 %.sroa.3.sroa.5.0.copyload, ptr %.sroa.12103.sroa.13.0..sroa.12103.0..sroa_idx.sroa_idx, align 1
  %.sroa.12103.sroa.14.0..sroa.12103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.12103.sroa.14.0..sroa.12103.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3.sroa.7, i64 14, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.5108, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.j)
          to label %bb.au unwind label %bb.at, !noalias !1459

bb.at:                                            ; preds = %bb.as
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !1462, !noalias !1459, !align !176, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http10extensions10ExtensionsECslzoSl9yxMOF_11libp2p_upnp(ptr %.val1.i.i) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77 unwind label %bb.ax, !noalias !1459

bb.au:                                            ; preds = %bb.as
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !1462, !noalias !1459, !align !176, !noundef !9 ; 4 uses
  %i.cp = icmp eq ptr %.val.i.i, null
  br i1 %i.cp, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i unwind label %bb.aw, !noalias !1459

bb.aw:                                            ; preds = %bb.av
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #21, !noalias !1459
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i: ; preds = %bb.av
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #21, !noalias !1459
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1459
  unreachable

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i, %bb.au
  %.sroa.1399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1399.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.14100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14100.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.cl, i64 40, i1 false)
  store i64 -1, ptr %i.bs, align 8
  %.sroa.1197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 528
  store i64 0, ptr %.sroa.1197.0..sroa_idx, align 8
  %.sroa.1298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1298.0..sroa_idx, align 8
  br label %bb.bb

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.14119, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.3.sroa.3, i64 33, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3.sroa.7, i64 14, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bi, %bb.az
  %.sroa.15.1 = phi i8 [ %.sroa.3.sroa.5.0.copyload, %bb.az ], [ 9, %bb.bi ]
  %.sroa.7.1 = phi i64 [ %.sroa.3.sroa.0.0.copyload, %bb.az ], [ %i.cy, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(288) %1)
          to label %bb.cd unwind label %bb.cc

bb.bb:                                            ; preds = %bb.c, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  invoke void @_RNvXNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collectINtB2_7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collect7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(168) %i.cs) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77 unwind label %bb.aa

bb.bd:                                            ; preds = %bb.bb
  %i.cu = load i64, ptr %i.i, align 8, !range !701, !noundef !9 ; 3 uses
  %i.cv = icmp eq i64 %i.cu, -3
  br i1 %i.cv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %common.ret

bb.bf:                                            ; preds = %bb.bd
  %.sroa.3110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3110.0.copyload = load ptr, ptr %.sroa.3110.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5111, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5111.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collect7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(168) %i.cs)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bj, %bb.bf
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77

bb.bh:                                            ; preds = %bb.bf
  %i.cx = icmp eq i64 %i.cu, -2
  br i1 %i.cx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3110.0.copyload) ]
  %i.cy = ptrtoint ptr %.sroa.3110.0.copyload to i64
  br label %bb.ba

bb.bj:                                            ; preds = %bb.bh
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5111, i64 112, i1 false)
  store i64 %i.cu, ptr %i.h, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.3110.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  invoke void @_RNvMNtCskeGg2ZMtKzB_14http_body_util9collectedINtB2_9CollectedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE8to_bytesCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.h)
          to label %bb.bk unwind label %bb.bg

bb.bk:                                            ; preds = %bb.bj
  %i.cz = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 6
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i64 %i.cz, 3
  br i1 %i.db, label %bb.bm, label %bb.bo

bb.bl:                                            ; preds = %bb.bm
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.body73

bb.bm:                                            ; preds = %bb.bk
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.dd, ptr %i.g, align 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net11socket_addr10SocketAddrNtB6_7Display3fmtCslzoSl9yxMOF_11libp2p_upnp, ptr %.sroa.5115.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @24, ptr %i.f, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 20, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @24, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 20, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @27, ptr %i.dh, align 8
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull @26, ptr noundef nonnull %i.g, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.bn unwind label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1466
  invoke void @_RINvMs1_CscL6eteTR0ts_7xmltreeNtB6_7Element5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.c, ptr noundef nonnull align 8 %i.m, i64 noundef 0)
          to label %.noexc71 unwind label %bb.bz

.noexc71:                                         ; preds = %bb.bo
  %i.di = load i64, ptr %i.c, align 8, !range !195, !noalias !1466, !noundef !9 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.i.sroa.0.0.copyload147 = load i64, ptr %i.dk, align 8, !noalias !1466 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa_idx, i64 32, i1 false), !noalias !1466
  br i1 %i.dj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.noexc71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14119, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  br label %bb.ca

bb.bq:                                            ; preds = %.noexc71
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.57.0..sroa_idx.i, i64 128, i1 false), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1466
  %.sroa.4.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.6.i.sroa.0.0.copyload147, ptr %.sroa.4.0..sroa_idx.i69, align 8, !noalias !1466
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i69.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i69.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, i64 32, i1 false), !noalias !1466
  store i64 %i.di, ptr %i.d, align 8, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !1466, !nonnull !9, !noundef !9 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.do = load i64, ptr %i.dn, align 8, !noalias !1466, !noundef !9 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.do, 176
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i
  %i.dq = icmp eq i64 %i.do, 0
  br i1 %i.dq, label %.loopexit23.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bq, %.backedge.i.i
  %i.dr = phi ptr [ %i.ds, %.backedge.i.i ], [ %i.dm, %bb.bq ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.dt = load i64, ptr %i.dr, align 8, !range !1475, !alias.scope !1476, !noalias !1477, !noundef !9
  %i.du = icmp samesign ult i64 %i.dt, 2
  br i1 %i.du, label %bb.br, label %.backedge.i.i

bb.br:                                            ; preds = %.lr.ph.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !1476, !noalias !1477, !noundef !9
  %i.dx = icmp eq i64 %i.dw, 6
  br i1 %i.dx, label %bb.bs, label %.backedge.i.i

bb.bs:                                            ; preds = %bb.br
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !1476, !noalias !1477, !nonnull !9, !noundef !9 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 1
  %i.eb = xor i32 %i.ea, 1769366884
  %i.ec = getelementptr i8, ptr %i.dz, i64 4
  %i.ed = load i16, ptr %i.ec, align 1
  %i.ee = zext i16 %i.ed to i32
  %i.ef = xor i32 %i.ee, 25955
  %i.eg = or i32 %i.eb, %i.ef
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bt, label %.backedge.i.i

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1483
  invoke void @_RNvNtNtCsgrCzhG8IxpI_8igd_next6common7parsing12parse_device(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.dr)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1466

.noexc.i:                                         ; preds = %bb.bt
  %i.ek = load i64, ptr %i.a, align 8, !range !215, !noalias !1483, !noundef !9 ; 2 uses
  %.not.i.i.i.i70 = icmp eq i64 %i.ek, -1
  br i1 %.not.i.i.i.i70, label %bb.bu, label %bb.bw

.backedge.i.i:                                    ; preds = %bb.bu, %bb.bs, %bb.br, %.lr.ph.i.i
  %i.el = icmp eq ptr %i.ds, %i.dp
  br i1 %i.el, label %.loopexit23.i, label %.lr.ph.i.i

bb.bu:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1483
  br label %.backedge.i.i

.loopexit.i:                                      ; preds = %bb.bt
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp.i:                             ; preds = %bb.bw
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscL6eteTR0ts_7xmltree7ElementECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(176) %i.d) #25
          to label %.body73 unwind label %bb.by, !noalias !1466

bb.bw:                                            ; preds = %.noexc.i
  %.sroa.817.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.14119, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.817.0..sroa_idx18.i, i64 33, i1 false)
  %.sroa.15.16..sroa.817.0..sroa_idx18.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %.sroa.15.16.copyload = load i8, ptr %.sroa.15.16..sroa.817.0..sroa_idx18.i.sroa_idx, align 1
  %.sroa.18.16..sroa.817.0..sroa_idx18.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.16..sroa.817.0..sroa_idx18.i.sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1466
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store i8 4, ptr %i.em, align 1, !noalias !1466
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgrCzhG8IxpI_8igd_next6errors11SearchErrorECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b)
          to label %bb.bx unwind label %.loopexit.split-lp.i, !noalias !1466

.loopexit23.i:                                    ; preds = %.backedge.i.i, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1466
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit23.i, %bb.bw
  %.sroa.15.3 = phi i8 [ 4, %.loopexit23.i ], [ %.sroa.15.16.copyload, %bb.bw ]
  %.sroa.7.3 = phi i64 [ undef, %.loopexit23.i ], [ %i.ek, %bb.bw ]
  %.sroa.0116.3 = phi i64 [ 1, %.loopexit23.i ], [ 0, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1466
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscL6eteTR0ts_7xmltree7ElementECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(176) %i.d)
          to label %bb.ca unwind label %bb.bz

bb.by:                                            ; preds = %bb.bv
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1466
  unreachable

bb.bz:                                            ; preds = %bb.bx, %bb.bo
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body73

bb.ca:                                            ; preds = %bb.bp, %bb.bx
  %.sroa.15.4 = phi i8 [ 8, %bb.bp ], [ %.sroa.15.3, %bb.bx ]
  %.sroa.7.4 = phi i64 [ %.sroa.6.i.sroa.0.0.copyload147, %bb.bp ], [ %.sroa.7.3, %bb.bx ]
  %.sroa.0116.4 = phi i64 [ 1, %bb.bp ], [ %.sroa.0116.3, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1466
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !1490, !noundef !9
  %i.er = load ptr, ptr %i.m, align 8, !alias.scope !1490, !nonnull !9, !align !176, !noundef !9
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !noalias !1490, !nonnull !9, !noundef !9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !1490, !noundef !9
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1490, !noundef !9
  invoke void %i.et(ptr noundef %i.eq, ptr noundef %i.ev, i64 noundef %i.ex)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.cb, !inline_history !1491

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77: ; preds = %bb.at, %bb.aw, %bb.al, %bb.ar, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.x, %bb.bg, %bb.bc, %.body73, %bb.cb
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn22, %.body73 ], [ %i.ey, %bb.cb ], [ %i.ce, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.bd, %bb.x ], [ %i.cw, %bb.bg ], [ %i.ct, %bb.bc ], [ %i.bt, %bb.al ], [ %i.ce, %bb.ar ], [ %i.cq, %bb.aw ], [ %i.cm, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.z

bb.cb:                                            ; preds = %bb.ca
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(288) %1)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit, %bb.ba
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.cd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit63, %bb.ba
  %.sroa.7.sroa.0.2 = phi i8 [ %.sroa.15.1, %bb.ba ], [ 11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit63 ], [ %.sroa.15.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit ]
  %.sroa.7.2 = phi i64 [ %.sroa.7.1, %bb.ba ], [ %.sroa.7.8.insert.ext, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit63 ], [ %.sroa.7.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit ]
  %.sroa.0116.2 = phi i64 [ 1, %bb.ba ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit63 ], [ %.sroa.0116.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit ]
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i8 0, ptr %i.fa, align 8
  store i64 %.sroa.0116.2, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.14119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.14119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.14119, i64 33, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %.sroa.7.sroa.0.2, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.18, i64 14, i1 false)
  br label %common.ret

.body73:                                          ; preds = %bb.bl, %bb.bz, %bb.bv
  %.pn22 = phi { ptr, i32 } [ %lpad.phi.i, %bb.bv ], [ %i.dc, %bb.bl ], [ %i.eo, %bb.bz ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !1498, !noundef !9
  %i.fd = load ptr, ptr %i.m, align 8, !alias.scope !1498, !nonnull !9, !align !176, !noundef !9
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !1498, !nonnull !9, !noundef !9
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !1498, !noundef !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !1498, !noundef !9
  invoke void %i.ff(ptr noundef %i.fc, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit77 unwind label %bb.aa, !inline_history !1491

bb.ce:                                            ; preds = %bb.ac
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 328
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http3uri3UriECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(88) %i.fk) #25
          to label %bb.ah unwind label %bb.aa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19get_control_schemas0CslzoSl9yxMOF_11libp2p_upnp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [176 x i8], align 8               ; 8 uses
  %.sroa.6.i.sroa.7 = alloca [32 x i8], align 8   ; 6 uses
  %i.d = alloca [176 x i8], align 8               ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.14119 = alloca [33 x i8], align 8        ; 4 uses
  %.sroa.17 = alloca [14 x i8], align 2           ; 3 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 4 uses
  %.sroa.5110 = alloca [112 x i8], align 8        ; 2 uses
  %i.i = alloca [128 x i8], align 8               ; 8 uses
  %i.j = alloca [152 x i8], align 8               ; 9 uses
  %.sroa.3.sroa.3 = alloca [33 x i8], align 8     ; 3 uses
  %.sroa.3.sroa.7 = alloca [14 x i8], align 2     ; 3 uses
  %.sroa.5107 = alloca [88 x i8], align 8         ; 3 uses
  %i.k = alloca [152 x i8], align 8               ; 11 uses
  %i.l = alloca [88 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 18 uses
  %i.n = alloca [312 x i8], align 8               ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 15 uses
  %i.t = alloca [88 x i8], align 8                ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 425 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !range !415, !noundef !9
  switch i8 %i.v, label %default.unreachable150 [
    i8 0, label %bb.d
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.b
    i8 4, label %bb.c
  ]

default.unreachable150:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br label %bb.bb

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 3 uses
  store i8 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !9, !align !1445, !noundef !9
  store ptr %i.z, ptr %i.x, align 8, !captures !1446
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !9, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !9
  store ptr %i.ac, ptr %i.aa, align 8, !captures !1446
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ae, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.x, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net11socket_addr10SocketAddrNtB6_7Display3fmtCslzoSl9yxMOF_11libp2p_upnp, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.aa, ptr %i.ag, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCslzoSl9yxMOF_11libp2p_upnp, ptr %.sroa.578.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @20, ptr noundef nonnull %i.q)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.body60

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !1499
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val49 = load ptr, ptr %i.ai, align 8, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val50 = load i64, ptr %i.aj, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1503
  invoke void @_RNvMNtCs1eA6bChxBZF_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val49, i64 noundef %.val50)
          to label %.noexc54 unwind label %bb.g

.noexc54:                                         ; preds = %bb.f
  invoke void @_RNvMNtCscwxJ8MeEu7n_4http3uriNtB2_3Uri11from_shared(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.noexc54, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #25
          to label %.body60 unwind label %bb.aa

bb.h:                                             ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1503
  %i.al = load i8, ptr %i.t, align 8, !range !1458, !noundef !9
  %i.am = icmp eq i8 %i.al, -1
  br i1 %i.am, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false)
  store i8 1, ptr %i.w, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ac

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ar = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 6
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ugt i64 %i.ar, 3
  br i1 %i.at, label %bb.o, label %bb.r

bb.n:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.an, ptr %i.p, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsh_NtCscwxJ8MeEu7n_4http3uriNtB5_3UriNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.585.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @24, ptr %i.o, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 20, ptr %i.av, align 8
end_hunk_0
