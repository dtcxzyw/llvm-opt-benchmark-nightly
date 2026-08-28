Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.03?download=true
inline.NumInlined: 1062
inline.NumDeleted: 450
begin_hunk_0_@_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client:bb.a
  store ptr %i.bk, ptr %i.bf, align 8, !noalias !1189
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5586.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.bg, ptr %i.dk, align 8, !noalias !1189
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5588.0..sroa_idx.i.i, align 8, !noalias !1189
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh, ptr noundef nonnull @33, ptr noundef nonnull %i.bf)
          to label %bb.fu unwind label %bb.ft, !noalias !1193

bb.ft:                                            ; preds = %bb.fs
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5583.i.i)
  br label %.body271.i.i

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !alias.scope !1322, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.5583.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !alias.scope !1326, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  store i8 5, ptr %i.df, align 8, !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5583.i.i, i64 31, i1 false), !noalias !1189
  store i64 -1, ptr %i.t, align 8, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5583.i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.kp, %bb.fu, %_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1189
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48 ; 3 uses
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rv)
          to label %bb.fx unwind label %bb.fv, !noalias !1193

bb.fv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.rw = landingpad { ptr, i32 }
          cleanup
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 72
  %.val2.i.i.i.i = load i32, ptr %i.rx, align 4, !alias.scope !1330, !noalias !1185, !noundef !15 ; 2 uses
  %i.ry = icmp eq i32 %.val2.i.i.i.i, -1
  br i1 %i.ry, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.rz = call noundef i32 @close(i32 noundef %.val2.i.i.i.i) #26, !noalias !1193 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.fx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 72
  %.val.i.i.i.i = load i32, ptr %i.sa, align 8, !alias.scope !1330, !noalias !1185, !noundef !15 ; 2 uses
  %i.sb = icmp eq i32 %.val.i.i.i.i, -1
  br i1 %i.sb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.sc = call noundef i32 @close(i32 noundef %.val.i.i.i.i) #26, !noalias !1193 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %bb.fw, %bb.fv
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rv) #24
          to label %.body289.i.i unwind label %bb.fz, !noalias !1193

bb.fz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.fy, %bb.fx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.lv, !noalias !1193

bb.ga:                                            ; preds = %bb.ez
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body271.i.i

bb.gb:                                            ; preds = %bb.ml, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1189
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 640 ; 3 uses
  invoke void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTjNtNtNtB8_3net11socket_addr10SocketAddrENtNtNtB8_2io5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.sf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %bb.gd unwind label %bb.gc, !noalias !1193

bb.gc:                                            ; preds = %bb.gb
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1189
  %.val216.i.i = load ptr, ptr %i.sf, align 8, !noalias !1185
  %i.sh = getelementptr i8, ptr %.sroa.01.0.i.i, i64 648
  %.val217.i.i = load ptr, ptr %i.sh, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client(ptr %.val216.i.i, ptr nonnull %.val217.i.i) #24
          to label %.body293.i.i unwind label %bb.dj, !noalias !1193

bb.gd:                                            ; preds = %bb.gb
  %i.si = load i16, ptr %i.do, align 8, !range !765, !noalias !1189, !noundef !15 ; 3 uses
  %i.sj = icmp eq i16 %i.si, -1
  br i1 %i.sj, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1189
  br label %.thread55.i

bb.gf:                                            ; preds = %bb.gd
  %.sroa.0601.0.copyload.i.i = load i64, ptr %i.ba, align 8, !noalias !1189 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5603.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5603.0..sroa_idx.i.i, i64 30, i1 false), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1189
  %.val218.i.i = load ptr, ptr %i.sf, align 8, !noalias !1185 ; 5 uses
  %i.sk = getelementptr i8, ptr %.sroa.01.0.i.i, i64 648
  %.val219.i.i = load ptr, ptr %i.sk, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15 ; 5 uses
  %i.sl = load ptr, ptr %.val219.i.i, align 8, !invariant.load !15, !noalias !1193 ; 2 uses
  %.not.i.i292.i.i = icmp eq ptr %i.sl, null
  br i1 %.not.i.i292.i.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val218.i.i) ]
  invoke void %i.sl(ptr noundef nonnull %.val218.i.i)
          to label %bb.gh unwind label %bb.gj, !noalias !1193

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.sm = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 8
  %i.sn = load i64, ptr %i.sm, align 8, !range !152, !invariant.load !15, !noalias !1193 ; 2 uses
  %i.so = icmp eq i64 %i.sn, 0
  br i1 %i.so, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.sp = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 16
  %i.sq = load i64, ptr %i.sp, align 8, !range !153, !invariant.load !15, !noalias !1193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val218.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val218.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.sn, i64 noundef range(i64 1, 536870913) %i.sq) #26, !noalias !1193
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i

bb.gj:                                            ; preds = %bb.gg
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !range !152, !invariant.load !15, !noalias !1193 ; 2 uses
  %i.su = icmp eq i64 %i.st, 0
  br i1 %i.su, label %.body293.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.sv = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 16
  %i.sw = load i64, ptr %i.sv, align 8, !range !153, !invariant.load !15, !noalias !1193
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val218.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.st, i64 noundef range(i64 1, 536870913) %i.sw) #26, !noalias !1193
  br label %.body293.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.gi, %bb.gh
  %i.sx = icmp eq i16 %i.si, 2
  br i1 %i.sx, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.sy = inttoptr i64 %.sroa.0601.0.copyload.i.i to ptr
  invoke void @_RNvXs3_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.df, ptr noundef nonnull %i.sy)
          to label %bb.mp unwind label %bb.mo, !noalias !1193

bb.gm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.2.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5603.i.i, i64 30, i1 false), !noalias !1189
  store i16 %i.si, ptr %i.bb, align 4, !noalias !1189
  %i.sz = getelementptr i8, ptr %.sroa.01.0.i.i, i64 624
  %.val234.i.i = load i64, ptr %i.sz, align 8, !noalias !1185, !noundef !15 ; 2 uses
  %.not.i.i297.i.i = icmp ugt i64 %.sroa.0601.0.copyload.i.i, %.val234.i.i
  br i1 %.not.i.i297.i.i, label %bb.gn, label %bb.gp, !prof !385

bb.gn:                                            ; preds = %bb.gm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0601.0.copyload.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val234.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #25
          to label %.noexc298.i.i unwind label %bb.go, !noalias !1193

.noexc298.i.i:                                    ; preds = %bb.gn
  unreachable

bb.go:                                            ; preds = %bb.gn
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

bb.gp:                                            ; preds = %bb.gm
  %i.tb = getelementptr i8, ptr %.sroa.01.0.i.i, i64 616
  %.val233.i.i = load ptr, ptr %i.tb, align 8, !noalias !1185, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1189
  invoke void @_RNvXsw_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechEINtNtCsj6eKBz9Db1c_4core7convert4FromRShE4fromCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val233.i.i, i64 noundef %.sroa.0601.0.copyload.i.i)
          to label %bb.gr unwind label %bb.gq, !noalias !1193

.body502.i.i:                                     ; preds = %bb.mm, %bb.li, %.body37.i, %bb.gq
  %.pn123.i.i = phi { ptr, i32 } [ %.pn103.pn.i.i, %.body37.i ], [ %.pn116.pn.pn.pn.pn.pn.ph.i.i, %bb.mm ], [ %i.tc, %bb.gq ], [ %i.add, %bb.li ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1189
  br label %bb.mn

bb.gq:                                            ; preds = %bb.lj, %bb.gp
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %.body502.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 408
  %.sroa.0608.0.copyload.i.i = load i16, ptr %i.td, align 8, !alias.scope !1335, !noalias !1185
  %.sroa.10612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 410
  %.sroa.10612.0.copyload.i.i = load i32, ptr %.sroa.10612.0..sroa_idx.i.i, align 2, !alias.scope !1335, !noalias !1185 ; 5 uses
  %.sroa.14614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 414
  %.sroa.14614.0.copyload.i.i = load i16, ptr %.sroa.14614.0..sroa_idx.i.i, align 2, !alias.scope !1335, !noalias !1185 ; 7 uses
  %.sroa.16617.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 416
  %.sroa.16617.sroa.0.0.copyload.i.i = load i96, ptr %.sroa.16617.0..sroa_idx.i.i, align 8, !alias.scope !1335, !noalias !1185 ; 12 uses
  %.sroa.16619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 436
  %.sroa.16619.0.copyload.i.i = load i16, ptr %.sroa.16619.0..sroa_idx.i.i, align 4, !alias.scope !1335, !noalias !1185 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.te = load i16, ptr %i.bb, align 4, !range !193, !alias.scope !1342, !noalias !1344, !noundef !15
  %i.tf = trunc nuw i16 %i.te to i1               ; 2 uses
  %3 = lshr i16 %.sroa.14614.0.copyload.i.i, 8    ; 2 uses
  br i1 %i.tf, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %.sroa.8638.1.copyload.i.i = load i128, ptr %i.dp, align 4, !alias.scope !1345, !noalias !1189 ; 15 uses
  %.sroa.8638.2.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 8
  %i.tg = or i128 %.sroa.8638.2.extract.shift.i.i, %.sroa.8638.1.copyload.i.i
  %i.th = trunc i128 %i.tg to i8
  %or.cond.i.i.i.i = icmp eq i8 %i.th, 0
  br i1 %or.cond.i.i.i.i, label %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i, label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i

_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i: ; preds = %bb.gs
  %.sroa.8638.12.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 88
  %.sroa.8638.11.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 80
  %.sroa.8638.10.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 72
  %.sroa.8638.9.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 64
  %.sroa.8638.8.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 56
  %.sroa.8638.7.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 48
  %.sroa.8638.6.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 40
  %.sroa.8638.5.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 32
  %.sroa.8638.4.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 24
  %.sroa.8638.3.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 16
  %i.ti = or i128 %.sroa.8638.9.extract.shift.i.i, %.sroa.8638.10.extract.shift.i.i
  %i.tj = or i128 %i.ti, %.sroa.8638.8.extract.shift.i.i
  %i.tk = or i128 %i.tj, %.sroa.8638.7.extract.shift.i.i
  %i.tl = or i128 %i.tk, %.sroa.8638.4.extract.shift.i.i
  %i.tm = or i128 %i.tl, %.sroa.8638.3.extract.shift.i.i
  %i.tn = or i128 %i.tm, %.sroa.8638.6.extract.shift.i.i
  %i.to = or i128 %i.tn, %.sroa.8638.5.extract.shift.i.i
  %i.tp = and i128 %i.to, 255
  %or.cond31.i.i.i.i = icmp eq i128 %i.tp, 0
  %i.tq = and i128 %.sroa.8638.11.extract.shift.i.i, %.sroa.8638.12.extract.shift.i.i
  %i.tr = trunc i128 %i.tq to i8
  %or.cond17.i.i.i.i = icmp eq i8 %i.tr, -1
  %or.cond32.i.i.i.i = and i1 %or.cond17.i.i.i.i, %or.cond31.i.i.i.i
  br i1 %or.cond32.i.i.i.i, label %bb.gu, label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i

bb.gt:                                            ; preds = %bb.gr
  %.sroa.0.0.copyload.i299.i.i = load i32, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i, align 2, !alias.scope !1342, !noalias !1344
  %.sroa.8638.1.insert.ext.i.i = zext i32 %.sroa.0.0.copyload.i299.i.i to i128
  br label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i

bb.gu:                                            ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i
  %.sroa.8638.13.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 96
  br label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i

_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i: ; preds = %bb.gu, %bb.gt, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i, %bb.gs
  %.sroa.8631.0.i.i = phi i128 [ %.sroa.8638.13.extract.shift.i.i, %bb.gu ], [ %.sroa.8638.1.insert.ext.i.i, %bb.gt ], [ %.sroa.8638.1.copyload.i.i, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i ], [ %.sroa.8638.1.copyload.i.i, %bb.gs ] ; 2 uses
  %.sroa.0629.0.i.i = phi i8 [ 0, %bb.gu ], [ 0, %bb.gt ], [ 1, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i ], [ 1, %bb.gs ] ; 2 uses
  %i.ts = trunc nuw i16 %.sroa.0608.0.copyload.i.i to i1 ; 3 uses
  br i1 %i.ts, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i
  %.sroa.10612.2.extract.shift.i.i = lshr i32 %.sroa.10612.0.copyload.i.i, 16 ; 2 uses
  %.sroa.8650.1.insert.ext653.i.i = zext nneg i32 %.sroa.10612.2.extract.shift.i.i to i128 ; 2 uses
  %.sroa.8650.3.insert.ext.i.i = zext i16 %.sroa.14614.0.copyload.i.i to i128
  %.sroa.8650.3.insert.shift.i.i = shl nuw nsw i128 %.sroa.8650.3.insert.ext.i.i, 16
  %.sroa.8650.5.insert.ext.i.i = zext i96 %.sroa.16617.sroa.0.0.copyload.i.i to i128 ; 9 uses
  %.sroa.8650.5.insert.shift.i.i = shl nuw i128 %.sroa.8650.5.insert.ext.i.i, 32
  %i.tt = or disjoint i128 %.sroa.8650.3.insert.shift.i.i, %.sroa.8650.5.insert.shift.i.i
  %.sroa.8650.5.insert.insert.i.i = or disjoint i128 %i.tt, %.sroa.8650.1.insert.ext653.i.i ; 2 uses
  %.sroa.8650.1.extract.trunc.i.i = trunc i32 %.sroa.10612.2.extract.shift.i.i to i8
  %.sroa.8650.2.extract.shift.i.i = lshr i128 %.sroa.8650.1.insert.ext653.i.i, 8
  %.sroa.8650.2.extract.trunc.i.i = trunc nuw i128 %.sroa.8650.2.extract.shift.i.i to i8
  %i.tu = or i8 %.sroa.8650.2.extract.trunc.i.i, %.sroa.8650.1.extract.trunc.i.i
  %or.cond.i.i307.i.i = icmp eq i8 %i.tu, 0
  br i1 %or.cond.i.i307.i.i, label %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i, label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i

_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i: ; preds = %bb.gv
  %.sroa.8650.12.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 56
  %.sroa.8650.11.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 48
  %.sroa.8650.10.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 40
  %.sroa.8650.9.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 32
  %.sroa.8650.8.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 24
  %.sroa.8650.7.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 16
  %.sroa.8650.6.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 8
  %.sroa.8650.6.extract.trunc.i.i = trunc i128 %.sroa.8650.6.extract.shift.i.i to i8
  %.sroa.8650.5.extract.trunc.i.i = trunc i96 %.sroa.16617.sroa.0.0.copyload.i.i to i8
  %.sroa.14614.0.copyload.masked.i.i = and i16 %.sroa.14614.0.copyload.i.i, 255
  %i.tv = or i16 %.sroa.14614.0.copyload.masked.i.i, %3
  %or.cond5.i.i330.i.i = icmp eq i16 %i.tv, 0
  %i.tw = or i8 %.sroa.8650.6.extract.trunc.i.i, %.sroa.8650.5.extract.trunc.i.i
  %or.cond8.i.i331.i.i = icmp eq i8 %i.tw, 0
  %or.cond29.i.i332.i.i = select i1 %or.cond5.i.i330.i.i, i1 %or.cond8.i.i331.i.i, i1 false
  %i.tx = or i128 %.sroa.8650.7.extract.shift.i.i, %.sroa.8650.8.extract.shift.i.i
  %i.ty = trunc i128 %i.tx to i8
  %or.cond11.i.i333.i.i = icmp eq i8 %i.ty, 0
  %or.cond30.i.i334.i.i = select i1 %or.cond29.i.i332.i.i, i1 %or.cond11.i.i333.i.i, i1 false
  %i.tz = or i128 %.sroa.8650.9.extract.shift.i.i, %.sroa.8650.10.extract.shift.i.i
  %i.ua = trunc i128 %i.tz to i8
  %or.cond14.i.i335.i.i = icmp eq i8 %i.ua, 0
  %or.cond31.i.i336.i.i = select i1 %or.cond30.i.i334.i.i, i1 %or.cond14.i.i335.i.i, i1 false
  %i.ub = and i128 %.sroa.8650.11.extract.shift.i.i, %.sroa.8650.12.extract.shift.i.i
  %i.uc = trunc i128 %i.ub to i8
  %or.cond17.i.i337.i.i = icmp eq i8 %i.uc, -1
  %or.cond32.i.i338.i.i = select i1 %or.cond31.i.i336.i.i, i1 %or.cond17.i.i337.i.i, i1 false
  br i1 %or.cond32.i.i338.i.i, label %bb.gx, label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i

bb.gw:                                            ; preds = %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i
  %.sroa.8650.1.insert.ext.i.i = zext i32 %.sroa.10612.0.copyload.i.i to i128
  br label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i

bb.gx:                                            ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i
  %.sroa.8650.13.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 64
  br label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i

_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i: ; preds = %bb.gx, %bb.gw, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i, %bb.gv
  %.sroa.8643.0.i.i = phi i128 [ %.sroa.8650.13.extract.shift.i.i, %bb.gx ], [ %.sroa.8650.1.insert.ext.i.i, %bb.gw ], [ %.sroa.8650.5.insert.insert.i.i, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i ], [ %.sroa.8650.5.insert.insert.i.i, %bb.gv ] ; 2 uses
  %.sroa.0641.0.i.i = phi i8 [ 0, %bb.gx ], [ 0, %bb.gw ], [ 1, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i ], [ 1, %bb.gv ] ; 2 uses
  %i.ud = trunc nuw i8 %.sroa.0641.0.i.i to i1
  %i.ue = icmp eq i8 %.sroa.0629.0.i.i, %.sroa.0641.0.i.i
  br i1 %i.ue, label %bb.gy, label %.noexc.i.i

bb.gy:                                            ; preds = %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i
  %i.uf = trunc nuw i8 %.sroa.0629.0.i.i to i1
  br i1 %i.uf, label %.split.i.i, label %bb.gz

.split.i.i:                                       ; preds = %bb.gy
  call void @llvm.assume(i1 %i.ud)
  %i.ug = icmp eq i128 %.sroa.8631.0.i.i, %.sroa.8643.0.i.i
  br i1 %i.ug, label %bb.ha, label %.noexc.i.i

bb.gz:                                            ; preds = %bb.gy
  %.sroa.8631.1.extract.trunc.i.i = trunc i128 %.sroa.8631.0.i.i to i32
  %.sroa.8643.1.extract.trunc.i.i = trunc i128 %.sroa.8643.0.i.i to i32
  %i.uh = icmp eq i32 %.sroa.8631.1.extract.trunc.i.i, %.sroa.8643.1.extract.trunc.i.i
  br i1 %i.uh, label %bb.ha, label %.noexc.i.i

bb.ha:                                            ; preds = %bb.gz, %.split.i.i
  %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.val.i.i = load i16, ptr %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.i.i, align 4, !noalias !1189
  %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep.val.i.i = load i16, ptr %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep.i.i, align 2, !noalias !1189
  %.sroa.0.0.i342.i.i = select i1 %i.tf, i16 %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.val.i.i, i16 %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep.val.i.i
  %.sroa.0.0.i345.sroa.speculated.i.i = select i1 %i.ts, i16 %.sroa.16619.0.copyload.i.i, i16 %.sroa.14614.0.copyload.i.i
  %.not55.i.i = icmp eq i16 %.sroa.0.0.i342.i.i, %.sroa.0.0.i345.sroa.speculated.i.i
  br i1 %.not55.i.i, label %bb.hb, label %.noexc.i.i

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !1189
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_responseNtB2_11DnsResponse11from_buffer(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ao)
          to label %bb.hd unwind label %bb.hc, !noalias !1193

bb.hc:                                            ; preds = %bb.hb
  %i.ui = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1189
  br label %.body37.i

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1189
  %i.uj = load i64, ptr %i.ap, align 8, !range !192, !alias.scope !1346, !noalias !1349, !noundef !15 ; 2 uses
  %i.uk = icmp eq i64 %i.uj, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8764.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.dv, i64 48, i1 false), !noalias !1189
  br i1 %i.uk, label %bb.km, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5769.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10766.0..sroa_idx767.i.i, i64 120, i1 false), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8764.i.i, i64 48, i1 false), !noalias !1189
  store i64 %i.uj, ptr %i.aq, align 8, !noalias !1189
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 600 ; 2 uses
  %i.um = load i16, ptr %i.ul, align 8, !noalias !1185, !noundef !15
  %i.un = load i16, ptr %i.dw, align 2, !noalias !1189, !noundef !15
  %.not58.i.i = icmp eq i16 %i.um, %i.un
  br i1 %.not58.i.i, label %bb.hf, label %.noexc184.i.i

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1189
  %i.uo = getelementptr i8, ptr %.sroa.01.0.i.i, i64 392
  %.val229.i.i = load ptr, ptr %i.uo, align 8, !noalias !1185, !nonnull !15, !noundef !15
  %i.up = getelementptr i8, ptr %.sroa.01.0.i.i, i64 400
  %.val230.i.i = load i64, ptr %i.up, align 8, !noalias !1185, !noundef !15
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB2_7Message8from_vec(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val229.i.i, i64 noundef %.val230.i.i)
          to label %bb.hh unwind label %bb.hg, !noalias !1193

bb.hg:                                            ; preds = %bb.hf
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1189
  br label %.thread892.i.i

bb.hh:                                            ; preds = %bb.hf
  %i.ur = load i64, ptr %i.ai, align 8, !range !192, !alias.scope !1351, !noalias !1354, !noundef !15 ; 2 uses
  %i.us = icmp eq i64 %i.ur, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8782.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ea, i64 40, i1 false), !noalias !1189
  br i1 %i.us, label %.thread884.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5788.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10784.0..sroa_idx785.i.i, i64 104, i1 false), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4787.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8782.i.i, i64 40, i1 false), !noalias !1189
  store i64 %i.ur, ptr %i.aj, align 8, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1189
  store ptr %i.aj, ptr %i.ah, align 8, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1189
  store ptr %i.aq, ptr %i.ag, align 8, !noalias !1189
  %.val237.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1189, !nonnull !15, !noundef !15 ; 2 uses
  %.val238.i.i = load i64, ptr %i.eb, align 8, !noalias !1189, !noundef !15 ; 2 uses
  %.idx = mul nuw nsw i64 %.val238.i.i, 88
  %i.ut = getelementptr inbounds nuw i8, ptr %.val237.i.i, i64 %.idx
  %i.uu = load ptr, ptr %.sroa.4787.0..sroa_idx.i.i, align 8, !alias.scope !1356, !noalias !1359, !nonnull !15
  %i.uv = load i64, ptr %i.ec, align 8, !alias.scope !1356, !noalias !1359
  %i.uw = icmp eq i64 %.val238.i.i, 0
  br i1 %i.uw, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send00ECsi17nFaBu4HY_10ech_client.exit.i.i, label %.lr.ph

bb.hj:                                            ; preds = %.noexc350.i.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uz, i64 88 ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.ut
  br i1 %i.uy, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send00ECsi17nFaBu4HY_10ech_client.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.hi, %bb.hj
  %i.uz = phi ptr [ %i.ux, %bb.hj ], [ %.val237.i.i, %bb.hi ] ; 2 uses
  %i.va = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtB5_13SliceContains14slice_containsCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.uz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.uu, i64 noundef %i.uv)
          to label %.noexc350.i.i unwind label %bb.hk, !noalias !1193

.noexc350.i.i:                                    ; preds = %.lr.ph
  br i1 %i.va, label %bb.hj, label %.noexc190.i.i

bb.hk:                                            ; preds = %.lr.ph
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send00ECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.hj, %bb.hi
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 368 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 361
  %i.vf = load i8, ptr %i.ve, align 1, !range !147, !noalias !1193, !noundef !15
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.hl, label %.noexc187.i.i

bb.hl:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send00ECsi17nFaBu4HY_10ech_client.exit.i.i
  %.val235.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1189, !nonnull !15, !noundef !15 ; 2 uses
  %.val236.i.i = load i64, ptr %i.eb, align 8, !noalias !1189, !noundef !15 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val236.i.i, 88
  %i.vh = getelementptr inbounds nuw i8, ptr %.val235.i.i, i64 %.idx.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.vi = icmp eq i64 %.val236.i.i, 0
  br i1 %i.vi, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send0s_0ECsi17nFaBu4HY_10ech_client.exit.thread956.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.hl
  %i.vj = load ptr, ptr %.sroa.4787.0..sroa_idx.i.i, align 8, !alias.scope !1361, !noalias !1364, !nonnull !15, !noundef !15 ; 3 uses
  %i.vk = load i64, ptr %i.ec, align 8, !alias.scope !1361, !noalias !1364, !noundef !15 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.vk, 88
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.vk, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  br label %.noexc193.i.i

_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s_0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i: ; preds = %.noexc355.i.i, %.noexc353.i.i
  %i.vm = icmp eq ptr %i.vo, %i.vh
  br i1 %i.vm, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send0s_0ECsi17nFaBu4HY_10ech_client.exit.thread956.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s_0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i
  %i.vn = phi ptr [ %i.vo, %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s_0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i ], [ %.val235.i.i, %.lr.ph.i.i.i ] ; 9 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 84
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 86
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 80
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 82
  %i.vt = load i16, ptr %i.vp, align 4, !range !1369, !alias.scope !1368, !noalias !1370
  %.fr7.i.i.i = freeze i16 %i.vt                  ; 2 uses
  %i.vu = load i16, ptr %i.vq, align 2, !alias.scope !1368, !noalias !1370
  %i.vv = load i16, ptr %i.vr, align 8, !range !1371, !alias.scope !1368, !noalias !1370 ; 4 uses
  %i.vw = load i16, ptr %i.vs, align 2, !alias.scope !1368, !noalias !1370 ; 4 uses
  %i.vx = icmp eq i16 %.fr7.i.i.i, 37
  br i1 %i.vx, label %.lr.ph.i.i.split.us.i.i.i, label %.lr.ph.i.i.split.i.i.i

.lr.ph.i.i.split.us.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i, %.backedge.i.i.us.i.i.i
  %i.vy = phi ptr [ %i.vz, %.backedge.i.i.us.i.i.i ], [ %i.vj, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 88 ; 2 uses
  %i.wa = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.vy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.vn)
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client:bb.a
  store ptr %i.ul, ptr %i.ak, align 8, !noalias !1189
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5777.0..sroa_idx.i.i.a, align 8, !noalias !1189
  store ptr %i.dw, ptr %i.dx, align 8, !noalias !1189
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5779.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr @38, ptr %i.al, align 8, !noalias !1189
  store ptr %i.ak, ptr %i.dy, align 8, !noalias !1189
  store ptr %i.al, ptr %i.am, align 8, !noalias !1189
  store ptr @10, ptr %i.dz, align 8, !noalias !1189
  store i64 1, ptr %i.an, align 8, !noalias !1189
  store ptr %i.am, ptr %.sroa.7773.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 1, ptr %.sroa.8774.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.abr, ptr %.sroa.9775.0..sroa_idx.i.i, align 8, !noalias !1189
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
          to label %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s3_0Csi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.kl, !noalias !1193

bb.kl:                                            ; preds = %bb.kk
  %i.abs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1189
  br label %.thread887.i.i

_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s3_0Csi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1189
  br label %.critedge175.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i376.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1189
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit504.i.i

.thread887.i.i:                                   ; preds = %bb.kl, %bb.kh, %bb.kf, %bb.kc, %.thread892.i.i, %.thread895.i.i
  %.pn99.pn.pn890.i.i = phi { ptr, i32 } [ %i.yd, %.thread895.i.i ], [ %i.abf, %bb.kc ], [ %.pn92.pn.ph.i.i, %.thread892.i.i ], [ %i.abl, %bb.kf ], [ %i.abs, %bb.kl ], [ %i.abn, %bb.kh ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(176) %i.aq) #24
          to label %.body37.i unwind label %bb.dj, !noalias !1193

bb.km:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.4.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8764.i.i, i64 48, i1 false), !noalias !1189
  store i8 8, ptr %i.df, align 8, !alias.scope !1408, !noalias !1411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4.i.i.i, i64 55, i1 false), !noalias !1411
  store i64 -1, ptr %i.t, align 8, !alias.scope !1408, !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client.exit.i

bb.kn:                                            ; preds = %bb.mp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client.exit.i
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 608 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abt)
          to label %bb.kp unwind label %bb.ko, !noalias !1193

bb.ko:                                            ; preds = %bb.kn
  %i.abu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abt)
          to label %.body271.i.i unwind label %bb.kq, !noalias !1193

bb.kp:                                            ; preds = %bb.kn
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abt)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.lp, !noalias !1193

bb.kq:                                            ; preds = %bb.ko
  %i.abv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

.body37.i:                                        ; preds = %.thread887.i.i, %bb.kc, %bb.kb, %bb.jy, %bb.jw, %bb.ip, %bb.in, %bb.hc
  %.pn103.pn.i.i = phi { ptr, i32 } [ %i.ui, %bb.hc ], [ %i.abf, %bb.kc ], [ %.pn99.pn.pn890.i.i, %.thread887.i.i ], [ %i.yh, %bb.in ], [ %i.yi, %bb.ip ], [ %i.abe, %bb.kb ], [ %i.abb, %bb.jy ], [ %i.aba, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1189
  br label %.body502.i.i

.noexc.i.i:                                       ; preds = %bb.ha, %bb.gz, %.split.i.i, %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i
  %i.abw = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1189
  %i.abx = and i64 %i.abw, -2
  %switch967.i.i = icmp eq i64 %i.abx, 4
  br i1 %switch967.i.i, label %.critedge179.i.i, label %bb.kr

bb.kr:                                            ; preds = %.noexc.i.i
  %i.aby = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !1189 ; 2 uses
  %i.abz = icmp ult i8 %i.aby, 3
  br i1 %i.abz, label %bb.ku, label %bb.ks, !prof !973

bb.ks:                                            ; preds = %bb.kr
  %i.aca = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s0_10___CALLSITE) #22
          to label %bb.ku unwind label %bb.kt, !noalias !1193

bb.kt:                                            ; preds = %bb.ks
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.ku:                                            ; preds = %bb.ks, %bb.kr
  %.sroa.0.0.i402.i.i = phi i8 [ %i.aby, %bb.kr ], [ %i.aca, %bb.ks ] ; 2 uses
  %i.acc = icmp eq i8 %.sroa.0.0.i402.i.i, 0
  br i1 %i.acc, label %.critedge179.i.i, label %bb.kw

bb.kv:                                            ; preds = %bb.kw
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.kw:                                            ; preds = %bb.ku
  %i.ace = load ptr, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s0_10___CALLSITE, align 8, !noalias !1189, !nonnull !15, !align !51, !noundef !15
  %i.acf = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ace, i8 noundef %.sroa.0.0.i402.i.i)
          to label %bb.kx unwind label %bb.kv, !noalias !1193

bb.kx:                                            ; preds = %bb.kw
  br i1 %i.acf, label %bb.ky, label %.critedge179.i.i

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1189
  %i.acg = load ptr, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s0_10___CALLSITE, align 8, !noalias !1189, !nonnull !15, !align !51, !noundef !15 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1189
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  %i.aci = load i16, ptr %i.bb, align 4, !range !193, !alias.scope !1416, !noalias !1418, !noundef !15
  %i.acj = trunc nuw i16 %i.aci to i1
  br i1 %i.acj, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %.sroa.7666.1.copyload.i.i = load i32, ptr %i.dp, align 4, !alias.scope !1419, !noalias !1189 ; 5 uses
  %.sroa.7666.sroa.8.0.extract.shift704.i.i = lshr i32 %.sroa.7666.1.copyload.i.i, 8
  %.sroa.13669.1.copyload.i.i = load i8, ptr %.sroa.13669.1..sroa_idx.i.i, align 4, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.14672.1.copyload.i.i = load i8, ptr %.sroa.14672.1..sroa_idx.i.i, align 1, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.15675.1.copyload.i.i = load i8, ptr %.sroa.15675.1..sroa_idx.i.i, align 2, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.16678.1.copyload.i.i = load i8, ptr %.sroa.16678.1..sroa_idx.i.i, align 1, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.17681.1.copyload.i.i = load i8, ptr %.sroa.17681.1..sroa_idx.i.i, align 4, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.18684.1.copyload.i.i = load i8, ptr %.sroa.18684.1..sroa_idx.i.i, align 1, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.19687.1.copyload.i.i = load i8, ptr %.sroa.19687.1..sroa_idx.i.i, align 2, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.20690.1.copyload.i.i = load i8, ptr %.sroa.20690.1..sroa_idx.i.i, align 1, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.21693.1.copyload.i.i = load i32, ptr %.sroa.21693.1..sroa_idx.i.i, align 4, !alias.scope !1419, !noalias !1189 ; 2 uses
  %i.ack = or i32 %.sroa.7666.sroa.8.0.extract.shift704.i.i, %.sroa.7666.1.copyload.i.i
  %i.acl = and i32 %i.ack, 255
  %or.cond.i.i411.i.i = icmp eq i32 %i.acl, 0
  br i1 %or.cond.i.i411.i.i, label %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i413.i.i, label %.critedge.i412.i.i

_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i413.i.i: ; preds = %bb.kz
  %.sroa.7666.sroa.9.0.extract.shift710.i.i = lshr i32 %.sroa.7666.1.copyload.i.i, 16
  %.sroa.7666.sroa.10.0.extract.shift716.i.i = lshr i32 %.sroa.7666.1.copyload.i.i, 24
  %.sroa.7666.sroa.9.0.extract.shift710.masked.i.i = and i32 %.sroa.7666.sroa.9.0.extract.shift710.i.i, 255
  %i.acm = or i32 %.sroa.7666.sroa.9.0.extract.shift710.masked.i.i, %.sroa.7666.sroa.10.0.extract.shift716.i.i
  %or.cond5.i.i434.i.i = icmp eq i32 %i.acm, 0
  %i.acn = or i8 %.sroa.14672.1.copyload.i.i, %.sroa.13669.1.copyload.i.i
  %or.cond8.i.i435.i.i = icmp eq i8 %i.acn, 0
  %or.cond29.i.i436.i.i = select i1 %or.cond5.i.i434.i.i, i1 %or.cond8.i.i435.i.i, i1 false
  %i.aco = or i8 %.sroa.16678.1.copyload.i.i, %.sroa.15675.1.copyload.i.i
  %or.cond11.i.i437.i.i = icmp eq i8 %i.aco, 0
  %or.cond30.i.i438.i.i = select i1 %or.cond29.i.i436.i.i, i1 %or.cond11.i.i437.i.i, i1 false
  %i.acp = or i8 %.sroa.18684.1.copyload.i.i, %.sroa.17681.1.copyload.i.i
  %or.cond14.i.i439.i.i = icmp eq i8 %i.acp, 0
  %or.cond31.i.i440.i.i = select i1 %or.cond30.i.i438.i.i, i1 %or.cond14.i.i439.i.i, i1 false
  %i.acq = and i8 %.sroa.20690.1.copyload.i.i, %.sroa.19687.1.copyload.i.i
  %or.cond17.i.i441.i.i = icmp eq i8 %i.acq, -1
  %or.cond32.i.i442.i.i = select i1 %or.cond31.i.i440.i.i, i1 %or.cond17.i.i441.i.i, i1 false
  br i1 %or.cond32.i.i442.i.i, label %bb.lb, label %.critedge.i412.i.i

bb.la:                                            ; preds = %bb.ky
  %.sroa.0.0.copyload.i405.i.i = load i32, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i, align 2, !alias.scope !1416, !noalias !1418
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  store i8 0, ptr %i.av, align 1, !alias.scope !1423, !noalias !1189
  store i32 %.sroa.0.0.copyload.i405.i.i, ptr %.sroa.7666.0..sroa_idx.i.i, align 1, !alias.scope !1423, !noalias !1189
  br label %bb.lc

bb.lb:                                            ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i413.i.i
  store i32 %.sroa.21693.1.copyload.i.i, ptr %.sroa.7666.0..sroa_idx.i.i, align 1, !alias.scope !1425, !noalias !1426
  store i8 0, ptr %i.av, align 1, !alias.scope !1425, !noalias !1426
  br label %bb.lc

.critedge.i412.i.i:                               ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i413.i.i, %bb.kz
  store i8 1, ptr %i.av, align 1, !alias.scope !1423, !noalias !1189
  store i32 %.sroa.7666.1.copyload.i.i, ptr %.sroa.7666.0..sroa_idx.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.13669.1.copyload.i.i, ptr %.sroa.13669.0..sroa_idx670.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.14672.1.copyload.i.i, ptr %.sroa.14672.0..sroa_idx673.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.15675.1.copyload.i.i, ptr %.sroa.15675.0..sroa_idx676.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.16678.1.copyload.i.i, ptr %.sroa.16678.0..sroa_idx679.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.17681.1.copyload.i.i, ptr %.sroa.17681.0..sroa_idx682.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.18684.1.copyload.i.i, ptr %.sroa.18684.0..sroa_idx685.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.19687.1.copyload.i.i, ptr %.sroa.19687.0..sroa_idx688.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.20690.1.copyload.i.i, ptr %.sroa.20690.0..sroa_idx691.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i32 %.sroa.21693.1.copyload.i.i, ptr %.sroa.21693.0..sroa_idx694.i.i, align 1, !alias.scope !1423, !noalias !1189
  br label %bb.lc

bb.lc:                                            ; preds = %.critedge.i412.i.i, %bb.lb, %bb.la
  %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.phi.i.i = phi ptr [ %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep.i.i, %bb.la ], [ %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.i.i, %bb.lb ], [ %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.i.i, %.critedge.i412.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1189
  %.sroa.0.0.i448.i.i = load i16, ptr %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.phi.i.i, align 2, !alias.scope !1427, !noalias !1189, !noundef !15
  store i16 %.sroa.0.0.i448.i.i, ptr %i.au, align 2, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1189
  br i1 %i.ts, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %.sroa.10612.2.extract.shift627.i.i = lshr i32 %.sroa.10612.0.copyload.i.i, 16
  %sum.shift.i.i = lshr i32 %.sroa.10612.0.copyload.i.i, 24 ; 2 uses
  %4 = zext i16 %.sroa.14614.0.copyload.i.i to i32
  %5 = shl nuw i32 %4, 16
  %.sroa.10612.2.extract.shift627.masked.i.i = and i32 %.sroa.10612.2.extract.shift627.i.i, 255 ; 2 uses
  %i.acr = or i32 %.sroa.10612.2.extract.shift627.masked.i.i, %sum.shift.i.i
  %or.cond.i.i455.i.i = icmp eq i32 %i.acr, 0
  br i1 %or.cond.i.i455.i.i, label %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i457.i.i, label %.critedge.i456.i.i

_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i457.i.i: ; preds = %bb.ld
  %.sroa.14724.12.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 56
  %.sroa.14724.11.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 48
  %.sroa.14724.10.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 40
  %.sroa.14724.9.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 32
  %.sroa.14724.8.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 24
  %.sroa.14724.7.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 16
  %.sroa.14724.6.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 8
  %.sroa.14614.0.copyload.masked961.i.i = and i16 %.sroa.14614.0.copyload.i.i, 255
  %i.acs = or i16 %3, %.sroa.14614.0.copyload.masked961.i.i
  %or.cond5.i.i478.i.i = icmp eq i16 %i.acs, 0
  %i.act = or i96 %.sroa.14724.6.extract.shift.i.i, %.sroa.16617.sroa.0.0.copyload.i.i
  %i.acu = trunc i96 %i.act to i8
  %or.cond8.i.i479.i.i = icmp eq i8 %i.acu, 0
  %or.cond29.i.i480.i.i = select i1 %or.cond5.i.i478.i.i, i1 %or.cond8.i.i479.i.i, i1 false
  %i.acv = or i96 %.sroa.14724.7.extract.shift.i.i, %.sroa.14724.8.extract.shift.i.i
  %i.acw = trunc i96 %i.acv to i8
  %or.cond11.i.i481.i.i = icmp eq i8 %i.acw, 0
  %or.cond30.i.i482.i.i = select i1 %or.cond29.i.i480.i.i, i1 %or.cond11.i.i481.i.i, i1 false
  %i.acx = or i96 %.sroa.14724.9.extract.shift.i.i, %.sroa.14724.10.extract.shift.i.i
  %i.acy = trunc i96 %i.acx to i8
  %or.cond14.i.i483.i.i = icmp eq i8 %i.acy, 0
  %or.cond31.i.i484.i.i = select i1 %or.cond30.i.i482.i.i, i1 %or.cond14.i.i483.i.i, i1 false
  %i.acz = and i96 %.sroa.14724.11.extract.shift.i.i, %.sroa.14724.12.extract.shift.i.i
  %i.ada = trunc i96 %i.acz to i8
  %or.cond17.i.i485.i.i = icmp eq i8 %i.ada, -1
  %or.cond32.i.i486.i.i = select i1 %or.cond31.i.i484.i.i, i1 %or.cond17.i.i485.i.i, i1 false
  br i1 %or.cond32.i.i486.i.i, label %bb.lf, label %.critedge.i456.i.i

bb.le:                                            ; preds = %bb.lc
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  store i8 0, ptr %i.at, align 1, !alias.scope !1433, !noalias !1189
  store i32 %.sroa.10612.0.copyload.i.i, ptr %.sroa.7720.0..sroa_idx.i.i, align 1, !alias.scope !1433, !noalias !1189
  br label %bb.lg

bb.lf:                                            ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i457.i.i
  %.sroa.14724.13.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 64
  %.sroa.14724.13.extract.trunc.i.i = trunc nuw i96 %.sroa.14724.13.extract.shift.i.i to i32
  store i32 %.sroa.14724.13.extract.trunc.i.i, ptr %.sroa.7720.0..sroa_idx.i.i, align 1, !alias.scope !1435, !noalias !1436
  store i8 0, ptr %i.at, align 1, !alias.scope !1435, !noalias !1436
  br label %bb.lg

.critedge.i456.i.i:                               ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i457.i.i, %bb.ld
  store i8 1, ptr %i.at, align 1, !alias.scope !1433, !noalias !1189
  %.sroa.7720.sroa.0.sroa.8.0.insert.shift749.i.i = shl nuw nsw i32 %sum.shift.i.i, 8
  %i.adb = or disjoint i32 %5, %.sroa.7720.sroa.0.sroa.8.0.insert.shift749.i.i
  %.sroa.7720.sroa.0.0.insert.insert729.i.i = or disjoint i32 %i.adb, %.sroa.10612.2.extract.shift627.masked.i.i
  store i32 %.sroa.7720.sroa.0.0.insert.insert729.i.i, ptr %.sroa.7720.0..sroa_idx.i.i, align 1, !alias.scope !1433, !noalias !1189
  store i96 %.sroa.16617.sroa.0.0.copyload.i.i, ptr %.sroa.14724.0..sroa_idx725.i.i, align 1, !alias.scope !1433, !noalias !1189
  br label %bb.lg

bb.lg:                                            ; preds = %.critedge.i456.i.i, %bb.lf, %bb.le
  %.sroa.0.0.i492.sroa.speculated.i.i = phi i16 [ %.sroa.14614.0.copyload.i.i, %bb.le ], [ %.sroa.16619.0.copyload.i.i, %bb.lf ], [ %.sroa.16619.0.copyload.i.i, %.critedge.i456.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1189
  store i16 %.sroa.0.0.i492.sroa.speculated.i.i, ptr %i.as, align 2, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1189
  store ptr %i.av, ptr %i.ar, align 8, !noalias !1189
  store ptr @_RNvXs2_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.5755.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.au, ptr %i.dq, align 8, !noalias !1189
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5757.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.at, ptr %i.dr, align 8, !noalias !1189
  store ptr @_RNvXs2_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.5759.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.as, ptr %i.ds, align 8, !noalias !1189
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5761.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr @39, ptr %i.aw, align 8, !noalias !1189
  store ptr %i.ar, ptr %i.dt, align 8, !noalias !1189
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !1189
  store ptr @10, ptr %i.du, align 8, !noalias !1189
  store i64 1, ptr %i.ay, align 8, !noalias !1189
  store ptr %i.ax, ptr %.sroa.10661.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 1, ptr %.sroa.11662.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.ach, ptr %.sroa.12663.0..sroa_idx.i.i, align 8, !noalias !1189
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.acg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s2_0Csi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.lh, !noalias !1193

bb.lh:                                            ; preds = %bb.lg
  %i.adc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1189
  br label %bb.mm

_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s2_0Csi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1189
  br label %.critedge179.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit504.i.i: ; preds = %bb.lj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1189
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 632
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1437, !noalias !1442
  %.phi.trans.insert987.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 636
  %.pre988.i.i = load i32, ptr %.phi.trans.insert987.i.i, align 4, !alias.scope !1443, !noalias !1444
  br label %bb.fm

.critedge179.i.i:                                 ; preds = %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s2_0Csi17nFaBu4HY_10ech_client.exit.i.i, %bb.kx, %bb.ku, %.noexc.i.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.lj unwind label %bb.li, !noalias !1193

bb.li:                                            ; preds = %.critedge179.i.i
  %i.add = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body502.i.i unwind label %bb.lk, !noalias !1193

bb.lj:                                            ; preds = %.critedge179.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit504.i.i unwind label %bb.gq, !noalias !1193

bb.lk:                                            ; preds = %bb.li
  %i.ade = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

bb.ll:                                            ; preds = %bb.fm
  store i8 4, ptr %i.df, align 8, !noalias !1189
  store ptr @40, ptr %.sroa.5831.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 29, ptr %.sroa.6832.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 -1, ptr %i.t, align 8, !noalias !1189
  %i.adf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 608 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adf)
          to label %bb.ln unwind label %bb.lm, !noalias !1193

bb.lm:                                            ; preds = %bb.ll
  %i.adg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adf)
          to label %.body271.i.i unwind label %bb.lo, !noalias !1193

bb.ln:                                            ; preds = %bb.ll
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit509.i.i unwind label %bb.lp, !noalias !1193

bb.lo:                                            ; preds = %bb.lm
  %i.adh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

bb.lp:                                            ; preds = %bb.ln, %bb.kp
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %.body271.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit509.i.i: ; preds = %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1189
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48 ; 3 uses
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.adj)
          to label %bb.ls unwind label %bb.lq, !noalias !1193

bb.lq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit509.i.i
  %i.adk = landingpad { ptr, i32 }
          cleanup
  %i.adl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 72
  %.val2.i.i510.i.i = load i32, ptr %i.adl, align 4, !alias.scope !1445, !noalias !1185, !noundef !15 ; 2 uses
  %i.adm = icmp eq i32 %.val2.i.i510.i.i, -1
  br i1 %i.adm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.adn = call noundef i32 @close(i32 noundef %.val2.i.i510.i.i) #26, !noalias !1193 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i

bb.ls:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit509.i.i
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 72
  %.val.i.i512.i.i = load i32, ptr %i.ado, align 8, !alias.scope !1445, !noalias !1185, !noundef !15 ; 2 uses
  %i.adp = icmp eq i32 %.val.i.i512.i.i, -1
  br i1 %i.adp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.adq = call noundef i32 @close(i32 noundef %.val.i.i512.i.i) #26, !noalias !1193 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i: ; preds = %bb.lr, %bb.lq
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.adj) #24
          to label %.body289.i.i unwind label %bb.lu, !noalias !1193

bb.lu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i
  %i.adr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i: ; preds = %bb.lt, %bb.ls
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.adj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit517.i.i unwind label %bb.lv, !noalias !1193

bb.lv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i
  %i.ads = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit517.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 440
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.adt)
          to label %bb.lx unwind label %bb.lw, !noalias !1193

bb.lw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit517.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.lx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit517.i.i
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 384 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.adv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i519.i.i unwind label %bb.ly, !noalias !1193

bb.ly:                                            ; preds = %bb.lx
  %i.adw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.adv)
          to label %.body259.i.i unwind label %bb.lz, !noalias !1193

bb.lz:                                            ; preds = %bb.ly
  %i.adx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i519.i.i: ; preds = %bb.lx
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.adv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit523.i.i unwind label %bb.ma, !noalias !1193

bb.ma:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i519.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i.i
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %.body259.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit523.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i519.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 602
  store i8 0, ptr %i.adz, align 2, !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1189
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 80
end_hunk_1
