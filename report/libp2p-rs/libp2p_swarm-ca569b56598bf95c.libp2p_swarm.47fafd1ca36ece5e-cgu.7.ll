Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_swarm-ca569b56598bf95c.libp2p_swarm.47fafd1ca36ece5e-cgu.7?download=true
inline.NumInlined: 151
inline.NumDeleted: 85
begin_hunk_0_@_RNvMs2_NtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dialNtB5_9SmartDial3new:bb.a
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 2 uses
  %i.e = icmp ult i64 %.sroa.53.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %.sroa.42.0.copyload, i64 %.sroa.53.0.copyload
  %i.g = icmp sgt i64 %.sroa.01.0.copyload, -1
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.42.0.copyload, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.42.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.01.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit16: ; preds = %bb.k, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.k = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !295, !nonnull !6, !noundef !6
  %i.l = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !295, !nonnull !6, !noundef !6 ; 9 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %eh.lpad-body, %.body ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtB11_3ops4drop4Drop4dropB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1T_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit16
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !295
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx17, align 8, !noalias !295 ; 2 uses
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7.sroa.4.0.copyload = load ptr, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !295 ; 4 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.7.sroa.5.0.copyload = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !295 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.7.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !295 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.7.sroa.7.0.copyload = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !295 ; 2 uses
  %.not = icmp eq i32 %.sroa.5.0.copyload, -1
  br i1 %.not, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.l, align 8, !noalias !295
  %i.p = load <2 x ptr>, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  store i32 %.sroa.5.0.copyload, ptr %i.h, align 8
  store <2 x ptr> %i.p, ptr %i.i, align 8
  store i8 0, ptr %i.j, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !296
  %i.q = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 57) 56, i64 noundef range(i64 1, 9) 8) #29, !noalias !296 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.j, !prof !297

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs2_NtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dialNtBJ_9SmartDial3new0EBP_(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit16, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtB11_3ops4drop4Drop4dropB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1T_.exit13 unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1T_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.h ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB5c_9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEENtNtB4_6marker4SendEL_EEEECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.m unwind label %bb.l

bb.h:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit.thread
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1T_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1T_.exit13: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskKLDkoKarTP_4core4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1G_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.s, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.4.0.copyload) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.4.0.copyload, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !298, !nonnull !6, !noundef !6
  invoke void %i.y(ptr noundef %.sroa.7.sroa.7.0.copyload, ptr noundef %.sroa.7.sroa.5.0.copyload, i64 noundef %.sroa.7.sroa.6.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit unwind label %bb.l, !inline_history !1

bb.j:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB1u_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB51_9transport14TransportErrorNtNtNtB1u_2io5error5ErrorEEENtNtB1u_6marker4SendEL_EEE4pushCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.4.0.copyload) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.4.0.copyload, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !299, !nonnull !6, !noundef !6
  invoke void %i.aa(ptr noundef %.sroa.7.sroa.7.0.copyload, ptr noundef %.sroa.7.sroa.5.0.copyload, i64 noundef %.sroa.7.sroa.6.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit16 unwind label %bb.c, !inline_history !1

bb.l:                                             ; preds = %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1T_.exit
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1T_.exit, %bb.n
  %.pn.pn.pn27 = phi { ptr, i32 } [ %i.ac, %bb.n ], [ %.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1T_.exit ]
  resume { ptr, i32 } %.pn.pn.pn27

bb.n:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtB4_4time8DurationNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.m unwind label %bb.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs3_Cs6b9j1MKPRPC_12libp2p_swarmNtB5_6Config19with_tokio_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 12), (16, 59)) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  store i64 10, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @12, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 32, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 7, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 128, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 2, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 8, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dialNtB4_14ConcurrentDial3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i8 noundef range(i8 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.e = load i64, ptr %1, align 8, !range !10, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.h = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB1u_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB51_9transport14TransportErrorNtNtNtB1u_2io5error5ErrorEEENtNtB1u_6marker4SendEL_EEE3newCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit ], [ %i.m, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEB1x_.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = zext i8 %2 to i64
  br label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit6: ; preds = %bb.i
  %i.o = icmp eq i64 %i.q, 0
  br i1 %i.o, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit6
  %.sroa.0.038 = phi i64 [ %i.n, %bb.d ], [ %i.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit6 ]
  %i.p = phi ptr [ %i.d, %bb.d ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit6 ] ; 8 uses
  %i.q = add nsw i64 %.sroa.0.038, -1             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.r = icmp eq ptr %i.p, %i.i
  br i1 %i.r, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit6, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.w, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB5c_9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEENtNtB4_6marker4SendEL_EEEECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  store ptr %i.v, ptr %i.k, align 8, !alias.scope !314
  %.sroa.0.0.copyload7 = load ptr, ptr %i.p, align 8, !noalias !314 ; 3 uses
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx8, align 8, !noalias !314 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx8.sroa_idx, align 8, !noalias !314 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.7.sroa.6.0.copyload = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx8.sroa_idx, align 8, !noalias !314 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload7, null
  br i1 %.not, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.7.sroa.8.0.copyload = load ptr, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx8.sroa_idx, align 8, !noalias !314, !nonnull !6, !noundef !6
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.7.sroa.7.0.copyload = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx8.sroa_idx, align 8, !noalias !314, !nonnull !6, !noundef !6
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB1u_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB51_9transport14TransportErrorNtNtNtB1u_2io5error5ErrorEEENtNtB1u_6marker4SendEL_EEE4pushCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull %.sroa.7.sroa.7.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.7.sroa.8.0.copyload)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload7, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !315, !nonnull !6, !noundef !6
  invoke void %i.y(ptr noundef %.sroa.7.sroa.6.0.copyload, ptr noundef %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.7.sroa.5.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit unwind label %bb.j, !inline_history !1

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload7, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !316, !nonnull !6, !noundef !6
  invoke void %i.aa(ptr noundef %.sroa.7.sroa.6.0.copyload, ptr noundef %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.7.sroa.5.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit6 unwind label %bb.f, !inline_history !1

bb.j:                                             ; preds = %bb.h, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEEB1x_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtCsbli3iz7XG76_9multiaddr9MultiaddrINtB2_10EquivalentBq_E10equivalentCs6b9j1MKPRPC_12libp2p_swarm(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsh_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.i, ptr %i.g, i64 %i.b)
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXsh_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXsh_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() unnamed_addr #6 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call fastcc noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull %i.a)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6b9j1MKPRPC_12libp2p_swarm(ptr %i.b)
  call void @_RNvNtCsG258MDvU3F_3std7process5abort() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dialNtB5_14ConcurrentDialNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB1u_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB51_9transport14TransportErrorNtNtNtB1u_2io5error5ErrorEEENtNtB1u_6marker4SendEL_EEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !9, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread
  %.sroa.06.0.copyload = load ptr, ptr %i.f, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.6.0.copyload, null
  br i1 %i.m, label %bb.e, label %bb.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store i64 0, ptr %i.h, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, %bb.a, %bb.i, %bb.d
  %.sink = phi i64 [ 120, %bb.i ], [ 128, %bb.d ], [ 128, %bb.a ], [ 128, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread ]
  %.sroa.7.0.copyload.sink = phi i64 [ %.sroa.7.0.copyload, %bb.i ], [ -1, %bb.d ], [ -2, %bb.a ], [ -2, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread ]
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %.sroa.7.0.copyload.sink, ptr %.sroa.725.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.a, align 8
  %i.n = load i64, ptr %i.h, align 8, !alias.scope !334, !noundef !6 ; 3 uses
  %i.o = load i64, ptr %1, align 8, !range !10, !alias.scope !334, !noundef !6
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEE8push_mutCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEE8grow_oneCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEE8push_mutCs6b9j1MKPRPC_12libp2p_swarm.exit unwind label %bb.g, !noalias !335

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.a) #27
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !335
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.aa, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEE8push_mutCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.e, %bb.f
  %i.s = load ptr, ptr %i.i, align 8, !alias.scope !334, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.u = add i64 %i.n, 1
  store i64 %i.u, ptr %i.h, align 8, !alias.scope !334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.v = load ptr, ptr %i.j, align 8, !alias.scope !336, !nonnull !6, !noundef !6
  %i.w = load ptr, ptr %i.k, align 8, !alias.scope !336, !nonnull !6, !noundef !6 ; 8 uses
  %i.x = icmp eq ptr %i.w, %i.v
  br i1 %i.x, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEE8push_mutCs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %i.y, ptr %i.k, align 8, !alias.scope !336
  %.sroa.0.0.copyload42 = load ptr, ptr %i.w, align 8, !noalias !336 ; 3 uses
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx44, align 8, !noalias !336 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx44.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx44.sroa_idx, align 8, !noalias !336 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx44.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.7.sroa.6.0.copyload = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx44.sroa_idx, align 8, !noalias !336 ; 2 uses
  %.not41 = icmp eq ptr %.sroa.0.0.copyload42, null
  br i1 %.not41, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.c
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 80, i1 false)
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.826.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store i64 0, ptr %i.h, align 8
  store ptr %.sroa.06.0.copyload, ptr %0, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.6.0.copyload, ptr %.sroa.624.0..sroa_idx, align 8
  br label %._crit_edge

bb.j:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx44.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.7.sroa.8.0.copyload = load ptr, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx44.sroa_idx, align 8, !noalias !336, !nonnull !6, !noundef !6
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx44.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.7.sroa.7.0.copyload = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx44.sroa_idx, align 8, !noalias !336, !nonnull !6, !noundef !6
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB1u_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB51_9transport14TransportErrorNtNtNtB1u_2io5error5ErrorEEENtNtB1u_6marker4SendEL_EEE4pushCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull %.sroa.7.sroa.7.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.7.sroa.8.0.copyload)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload42, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !337, !nonnull !6, !noundef !6
  invoke void %i.ac(ptr noundef %.sroa.7.sroa.6.0.copyload, ptr noundef %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.7.sroa.5.0.copyload)
          to label %common.resume unwind label %bb.m, !inline_history !1

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload42, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !338, !nonnull !6, !noundef !6
  tail call void %i.ae(ptr noundef %.sroa.7.sroa.6.0.copyload, ptr noundef %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.7.sroa.5.0.copyload), !noalias !338, !inline_history !0
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEE8push_mutCs6b9j1MKPRPC_12libp2p_swarm.exit, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit, %bb.l
end_hunk_0
