Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.12?download=true
inline.NumInlined: 2807
inline.NumDeleted: 1370
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs2_NtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolINtB6_4PoolINtNtNtBa_7handler6select23ConnectionHandlerSelectNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE12add_incomingINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3N_6future6future6Futurep6OutputINtNtB3N_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB3N_2io5error5ErrorENtNtB3N_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !443
  %i.bs = call noundef align 8 dereferenceable_or_null(408) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 13945) 408, i64 noundef 8) #19, !noalias !443 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ab, label %_RNvYINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task35new_for_pending_incoming_connectionINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2y_6future6future6Futurep6OutputINtNtB2y_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB2y_2io5error5ErrorENtNtB2y_6marker4SendEL_EEE0ENtNtNtCsl9hx9jpF0W9_12futures_util6future6future9FutureExt5boxedCshnt8FRa5Rut_11native_ping.exit.i, !prof !24

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 408) #33
          to label %.noexc.i.i unwind label %bb.ac, !noalias !444

.noexc.i.i:                                       ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task35new_for_pending_incoming_connectionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEE0EECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 dereferenceable(408) %i.k) #30
          to label %.thread126 unwind label %bb.ad, !noalias !442

bb.ad:                                            ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !442
  unreachable

_RNvYINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task35new_for_pending_incoming_connectionINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2y_6future6future6Futurep6OutputINtNtB2y_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB2y_2io5error5ErrorENtNtB2y_6marker4SendEL_EEE0ENtNtNtCsl9hx9jpF0W9_12futures_util6future6future9FutureExt5boxedCshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.bs, ptr noundef nonnull align 8 dereferenceable(408) %i.k, i64 408, i1 false), !noalias !442
  %i.bw = load ptr, ptr %i.bm, align 8, !alias.scope !442, !noalias !445, !noundef !18
  %.not.i68 = icmp eq ptr %i.bw, null
  br i1 %.not.i68, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvYINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task35new_for_pending_incoming_connectionINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2y_6future6future6Futurep6OutputINtNtB2y_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB2y_2io5error5ErrorENtNtB2y_6marker4SendEL_EEE0ENtNtNtCsl9hx9jpF0W9_12futures_util6future6future9FutureExt5boxedCshnt8FRa5Rut_11native_ping.exit.i
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputuNtNtB1u_6marker4SendEL_EEE4pushCshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @751)
          to label %_RINvMNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolNtB3_10ExecSwitch5spawnINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtB3_4task35new_for_pending_incoming_connectionINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB2Z_2io5error5ErrorENtNtB2Z_6marker4SendEL_EEE0EECshnt8FRa5Rut_11native_ping.exit unwind label %.thread111.thread.thread143

bb.af:                                            ; preds = %_RNvYINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task35new_for_pending_incoming_connectionINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2y_6future6future6Futurep6OutputINtNtB2y_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB2y_2io5error5ErrorENtNtB2y_6marker4SendEL_EEE0ENtNtNtCsl9hx9jpF0W9_12futures_util6future6future9FutureExt5boxedCshnt8FRa5Rut_11native_ping.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !442, !noalias !445, !nonnull !18, !noundef !18
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !442, !noalias !445, !nonnull !18, !align !19, !noundef !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !18, !noalias !446, !nonnull !18
  invoke void %i.cc(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @751, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
          to label %_RINvMNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolNtB3_10ExecSwitch5spawnINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtB3_4task35new_for_pending_incoming_connectionINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB2Z_2io5error5ErrorENtNtB2Z_6marker4SendEL_EEE0EECshnt8FRa5Rut_11native_ping.exit unwind label %.thread111.thread.thread143, !inline_history !438

bb.ag:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverzEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(8) %i.j) #30
          to label %bb.am unwind label %bb.r

bb.ah:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.028, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.429.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.429.0.copyload31 = load i8, ptr %.sroa.429.0..sroa_idx30, align 8
  %.sroa.532.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.532, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.532.0..sroa_idx33, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aa

_RINvMNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolNtB3_10ExecSwitch5spawnINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtB3_4task35new_for_pending_incoming_connectionINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB2Z_2io5error5ErrorENtNtB2Z_6marker4SendEL_EEE0EECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !noundef !18
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  invoke void @_RNvXse_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionNtB5_12PendingPointINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsdTHTBGblh3Z_11libp2p_core10connection14ConnectedPointE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f)
          to label %bb.ai unwind label %.thread111.thread.thread143

bb.ai:                                            ; preds = %_RINvMNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolNtB3_10ExecSwitch5spawnINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedNCINvNtB3_4task35new_for_pending_incoming_connectionINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB2Z_2io5error5ErrorENtNtB2Z_6marker4SendEL_EEE0EECshnt8FRa5Rut_11native_ping.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ah, ptr %i.e, align 8
  %i.ch = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.ak unwind label %bb.aj     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderzEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #30
          to label %bb.al unwind label %bb.r

bb.ak:                                            ; preds = %bb.ai
  %i.cj = extractvalue { i64, i32 } %i.ch, 0
  %i.ck = extractvalue { i64, i32 } %i.ch, 1
  store i64 0, ptr %i.h, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store ptr %i.ah, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 %i.cj, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 %i.ck, ptr %i.co, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cq = load i64, ptr %i.aa, align 8, !noundef !18
  call void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtBP_4pool17PendingConnectionNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cp, i64 noundef %i.cq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool17PendingConnectionEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(176) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  ret void

bb.al:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12PendingPointECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g) #30
          to label %.thread150 unwind label %bb.r

bb.am:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping(ptr nonnull %1, ptr nonnull %2) #30
          to label %.thread95 unwind label %bb.r

.thread95:                                        ; preds = %bb.am, %bb.u
  %.sroa.013.1104 = phi i1 [ true, %bb.u ], [ false, %bb.am ]
  %.pn101 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.u ], [ %i.cd, %bb.am ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(40) %i.w) #30
          to label %.thread111 unwind label %bb.r

.thread82:                                        ; preds = %bb.m, %bb.d, %.thread111
  %.pn.pn88 = phi { ptr, i32 } [ %.pn101, %.thread111 ], [ %i.ax, %bb.m ], [ %i.ag, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverzEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(8) %i.x) #30
          to label %.thread126 unwind label %bb.r

.thread126:                                       ; preds = %.thread82, %bb.ac, %.thread111, %.thread111.thread.thread143
  %.pn.pn87133 = phi { ptr, i32 } [ %.pn101, %.thread111 ], [ %i.bu, %bb.ac ], [ %lpad.thr_comm141, %.thread111.thread.thread143 ], [ %.pn.pn88, %.thread82 ] ; 2 uses
  %.sroa.015.189132 = phi i1 [ true, %.thread111 ], [ true, %bb.ac ], [ %.sroa.015.3.ph.ph, %.thread111.thread.thread143 ], [ true, %.thread82 ]
  %.sroa.013.093131 = phi i1 [ false, %.thread111 ], [ false, %bb.ac ], [ false, %.thread111.thread.thread143 ], [ true, %.thread82 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderzEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(8) %i.y) #30
          to label %.thread111.thread.thread137 unwind label %bb.r

bb.an:                                            ; preds = %.thread76, %.thread111.thread.thread137
  %.sroa.016.181 = phi i1 [ true, %.thread76 ], [ %.sroa.013.093131, %.thread111.thread.thread137 ]
  %.pn.pn.pn80 = phi { ptr, i32 } [ %i.af, %.thread76 ], [ %.pn.pn87133, %.thread111.thread.thread137 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core10connection14ConnectedPointECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(64) %i.z) #30
          to label %bb.b unwind label %bb.r

.thread150:                                       ; preds = %bb.al, %bb.ao, %bb.b
  %.pn.pn.pn.pn74 = phi { ptr, i32 } [ %.pn.pn.pn.pn75, %bb.ao ], [ %.pn.pn.pn.pn, %bb.b ], [ %i.ci, %bb.al ]
  resume { ptr, i32 } %.pn.pn.pn.pn74

bb.ao:                                            ; preds = %.thread, %bb.b
  %.pn.pn.pn.pn75 = phi { ptr, i32 } [ %i.ad, %.thread ], [ %.pn.pn.pn.pn, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping(ptr nonnull %1, ptr nonnull %2) #30
          to label %.thread150 unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !450, !inline_history !449 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !450, !noundef !18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !450, !noundef !18
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !450
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2q_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3s_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3s_6option6OptionNtB1S_17EnterRuntimeGuardEEB4w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %.val1 = load i8, ptr %2, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.b = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(80) null), !noalias !459, !inline_history !454 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 70 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !29, !noalias !461, !noundef !18
  %.not.i.i = icmp eq i8 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit.thread5

bb.c:                                             ; preds = %bb.b
  store i8 %.val1, ptr %i.d, align 1, !noalias !461
  %i.f = load i64, ptr %3, align 8, !range !21, !alias.scope !462, !noalias !463, !noundef !18
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load ptr, ptr %i.g, align 8, !alias.scope !462, !noalias !463, !nonnull !18
  %5 = shl nuw nsw i64 %i.f, 5
  %.sroa.0.0.v.i.i = xor i64 %5, 544
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0.0.v.i.i
  %i.h = tail call { i32, i32 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i), !noalias !461 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.k, align 4, !noalias !461
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.l = trunc i32 %.sroa.04.0.copyload.i.i to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.55.0.copyload.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !noalias !461
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !461
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call { i32, i32 } @_RNvMs_NtNtCsc13h7DQFCSE_5tokio4util4randNtB4_8FastRand3new(), !noalias !461 ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0
  %i.o = extractvalue { i32, i32 } %i.m, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.0.i.i = phi i32 [ %.sroa.55.0.copyload.i.i, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.01.0.i.i = phi i32 [ %.sroa.4.0.copyload.i.i, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = or i32 %.sroa.01.0.i.i, %.sroa.5.0.i.i
  %or.cond.i.i = icmp eq i32 %i.p, 0
  %..sroa.5.0.i.i = select i1 %or.cond.i.i, i32 1, i32 %.sroa.5.0.i.i
  store i32 1, ptr %i.k, align 4, !noalias !461
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !461
  store i32 %i.j, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !noalias !461
  call void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3)
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.01.0.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %..sroa.5.0.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 4
  %.sroa.0.0.copyload2.pr = load i64, ptr %i.a, align 8 ; 2 uses
  %i.q = icmp eq i64 %.sroa.0.0.copyload2.pr, -2
  br i1 %i.q, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit.thread, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit.thread5, !prof !30

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #32
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit.thread5: ; preds = %bb.b, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit
  %.sroa.0.0.copyload28 = phi i64 [ %.sroa.0.0.copyload2.pr, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1W_17EnterRuntimeGuardEEB4A_.exit ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.copyload28, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2q_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB45_6option6OptionNtB1S_17EnterRuntimeGuardEEB3r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %.val1 = load i8, ptr %2, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.b = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(80) null), !noalias !472, !inline_history !467 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 70 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !29, !noalias !474, !noundef !18
  %.not.i.i = icmp eq i8 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread5

bb.c:                                             ; preds = %bb.b
  store i8 %.val1, ptr %i.d, align 1, !noalias !474
  %i.f = load i64, ptr %3, align 8, !range !21, !alias.scope !475, !noalias !476, !noundef !18
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load ptr, ptr %i.g, align 8, !alias.scope !475, !noalias !476, !nonnull !18
  %5 = shl nuw nsw i64 %i.f, 5
  %.sroa.0.0.v.i.i = xor i64 %5, 544
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0.0.v.i.i
  %i.h = tail call { i32, i32 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i), !noalias !474 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.k, align 4, !noalias !474
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.l = trunc i32 %.sroa.04.0.copyload.i.i to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.55.0.copyload.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !noalias !474
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !474
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call { i32, i32 } @_RNvMs_NtNtCsc13h7DQFCSE_5tokio4util4randNtB4_8FastRand3new(), !noalias !474 ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0
  %i.o = extractvalue { i32, i32 } %i.m, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.0.i.i = phi i32 [ %.sroa.55.0.copyload.i.i, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.01.0.i.i = phi i32 [ %.sroa.4.0.copyload.i.i, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = or i32 %.sroa.01.0.i.i, %.sroa.5.0.i.i
  %or.cond.i.i = icmp eq i32 %i.p, 0
  %..sroa.5.0.i.i = select i1 %or.cond.i.i, i32 1, i32 %.sroa.5.0.i.i
  store i32 1, ptr %i.k, align 4, !noalias !474
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !474
  store i32 %i.j, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !noalias !474
  call void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3)
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.01.0.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %..sroa.5.0.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 4
  %.sroa.0.0.copyload2.pr = load i64, ptr %i.a, align 8 ; 2 uses
  %i.q = icmp eq i64 %.sroa.0.0.copyload2.pr, -2
  br i1 %i.q, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread5, !prof !30

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #32
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread5: ; preds = %bb.b, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit
  %.sroa.0.0.copyload28 = phi i64 [ %.sroa.0.0.copyload2.pr, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.copyload28, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3w_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3w_6option6OptionNtB1S_17EnterRuntimeGuardEEB4A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %.val1 = load i8, ptr %2, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.b = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(80) null), !noalias !485, !inline_history !480 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 70 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !29, !noalias !487, !noundef !18
  %.not.i.i = icmp eq i8 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread5

bb.c:                                             ; preds = %bb.b
  store i8 %.val1, ptr %i.d, align 1, !noalias !487
  %i.f = load i64, ptr %3, align 8, !range !21, !alias.scope !488, !noalias !489, !noundef !18
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load ptr, ptr %i.g, align 8, !alias.scope !488, !noalias !489, !nonnull !18
  %5 = shl nuw nsw i64 %i.f, 5
  %.sroa.0.0.v.i.i = xor i64 %5, 544
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0.0.v.i.i
  %i.h = tail call { i32, i32 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i), !noalias !487 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.k, align 4, !noalias !487
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.l = trunc i32 %.sroa.04.0.copyload.i.i to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.55.0.copyload.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !noalias !487
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !487
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call { i32, i32 } @_RNvMs_NtNtCsc13h7DQFCSE_5tokio4util4randNtB4_8FastRand3new(), !noalias !487 ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0
  %i.o = extractvalue { i32, i32 } %i.m, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.0.i.i = phi i32 [ %.sroa.55.0.copyload.i.i, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.01.0.i.i = phi i32 [ %.sroa.4.0.copyload.i.i, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = or i32 %.sroa.01.0.i.i, %.sroa.5.0.i.i
  %or.cond.i.i = icmp eq i32 %i.p, 0
  %..sroa.5.0.i.i = select i1 %or.cond.i.i, i32 1, i32 %.sroa.5.0.i.i
  store i32 1, ptr %i.k, align 4, !noalias !487
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !487
  store i32 %i.j, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !noalias !487
  call void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3)
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.01.0.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %..sroa.5.0.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 4
  %.sroa.0.0.copyload2.pr = load i64, ptr %i.a, align 8 ; 2 uses
  %i.q = icmp eq i64 %.sroa.0.0.copyload2.pr, -2
  br i1 %i.q, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread5, !prof !30

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #32
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread5: ; preds = %bb.b, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit
  %.sroa.0.0.copyload28 = phi i64 [ %.sroa.0.0.copyload2.pr, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0INtNtB3A_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.copyload28, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB49_6option6OptionNtB1S_17EnterRuntimeGuardEEB3v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %.val1 = load i8, ptr %2, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.b = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(80) null), !noalias !498, !inline_history !493 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 70 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !29, !noalias !500, !noundef !18
  %.not.i.i = icmp eq i8 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread5

bb.c:                                             ; preds = %bb.b
  store i8 %.val1, ptr %i.d, align 1, !noalias !500
  %i.f = load i64, ptr %3, align 8, !range !21, !alias.scope !501, !noalias !502, !noundef !18
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load ptr, ptr %i.g, align 8, !alias.scope !501, !noalias !502, !nonnull !18
  %5 = shl nuw nsw i64 %i.f, 5
  %.sroa.0.0.v.i.i = xor i64 %5, 544
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0.0.v.i.i
  %i.h = tail call { i32, i32 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i), !noalias !500 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.k, align 4, !noalias !500
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.l = trunc i32 %.sroa.04.0.copyload.i.i to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.55.0.copyload.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !noalias !500
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !500
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call { i32, i32 } @_RNvMs_NtNtCsc13h7DQFCSE_5tokio4util4randNtB4_8FastRand3new(), !noalias !500 ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0
  %i.o = extractvalue { i32, i32 } %i.m, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.0.i.i = phi i32 [ %.sroa.55.0.copyload.i.i, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.01.0.i.i = phi i32 [ %.sroa.4.0.copyload.i.i, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = or i32 %.sroa.01.0.i.i, %.sroa.5.0.i.i
  %or.cond.i.i = icmp eq i32 %i.p, 0
  %..sroa.5.0.i.i = select i1 %or.cond.i.i, i32 1, i32 %.sroa.5.0.i.i
  store i32 1, ptr %i.k, align 4, !noalias !500
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !500
  store i32 %i.j, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !noalias !500
  call void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3)
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.01.0.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %..sroa.5.0.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 4
  %.sroa.0.0.copyload2.pr = load i64, ptr %i.a, align 8 ; 2 uses
  %i.q = icmp eq i64 %.sroa.0.0.copyload2.pr, -2
  br i1 %i.q, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread5, !prof !30

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #32
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread5: ; preds = %bb.b, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit
  %.sroa.0.0.copyload28 = phi i64 [ %.sroa.0.0.copyload2.pr, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCshnt8FRa5Rut_11native_ping4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEE0INtNtB4d_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.copyload28, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB6_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEEB2m_(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = invoke { ptr, ptr } @_RNvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0)
          to label %bb.b unwind label %bb.r       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCshnt8FRa5Rut_11native_ping4main0EBF_(ptr noundef nonnull align 8 %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEEB1u_.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.r, %.body30, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn, %.body30 ], [ %i.ao, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 5072, i64 noundef 8) #19
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEEB1u_.exit: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 5072, i64 noundef 8) #19
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, ptr } %i.e, 1
  store ptr %i.f, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.m = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !510
  %i.p = load i8, ptr %i.n, align 8, !range !29, !noundef !18
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.thread.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.i, !prof !31

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.f
  %i.r = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %i.m)
          to label %.noexc24 unwind label %bb.k   ; 2 uses

.noexc24:                                         ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.i
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.noexc, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.thread.i

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.thread.i: ; preds = %.noexc24, %bb.f
  %.sroa.0.0.i.i2.i = phi ptr [ %i.r, %.noexc24 ], [ %i.m, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !26, !noundef !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  store i8 1, ptr %i.t, align 1
  store i8 -128, ptr %i.v, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.thread.i, %.noexc24
  %.sroa.3.0.i = phi i8 [ %i.w, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.thread.i ], [ undef, %.noexc24 ]
  %.sroa.0.0.i = phi i8 [ %i.u, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.thread.i ], [ 2, %.noexc24 ]
  store i8 %.sroa.0.0.i, ptr %i.a, align 1, !noalias !510
  store i8 %.sroa.3.0.i, ptr %i.o, align 1, !noalias !510
  %i.x = invoke { i64, ptr } @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EENtB4_6Future4pollB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0B2o_.exit unwind label %bb.g ; 2 uses

bb.g:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i8, ptr %i.a, align 1, !range !29, !alias.scope !511, !noundef !18
  %.not.i = icmp eq i8 %i.z, 2
  br i1 %.not.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXNvNtNtCsc13h7DQFCSE_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
          to label %.body unwind label %bb.j

_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0B2o_.exit: ; preds = %.noexc
  %i.aa = load i8, ptr %i.a, align 1, !range !29, !alias.scope !512, !noundef !18
  %.not.i27 = icmp eq i8 %i.aa, 2
  br i1 %.not.i27, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0B2o_.exit
  invoke void @_RNvXNvNtNtCsc13h7DQFCSE_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.k:                                             ; preds = %bb.i, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCshnt8FRa5Rut_11native_ping.exit.i, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.y, %bb.g ], [ %i.y, %bb.h ]
  %.val20 = load ptr, ptr %i.b, align 8, !nonnull !18, !noundef !18
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEEB1u_(ptr %.val20) #30
          to label %.body30 unwind label %bb.q

bb.l:                                             ; preds = %bb.i, %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCshnt8FRa5Rut_11native_ping4main0EEE0B2o_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !510
  %i.ad = extractvalue { i64, ptr } %i.x, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %0)
          to label %bb.f unwind label %bb.k

bb.n:                                             ; preds = %bb.l
  %.val19 = load ptr, ptr %i.b, align 8, !nonnull !18, !noundef !18 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCshnt8FRa5Rut_11native_ping4main0EBF_(ptr noundef nonnull align 8 %.val19)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECshnt8FRa5Rut_11native_ping.exit35 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef 5072, i64 noundef 8) #19
  br label %.body30

.body30:                                          ; preds = %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.af, %bb.o ]
  %.val15 = load ptr, ptr %i.d, align 8, !nonnull !18, !align !19, !noundef !18
  %.val16 = load ptr, ptr %i.j, align 8, !noundef !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val15, i64 24
end_hunk_0
