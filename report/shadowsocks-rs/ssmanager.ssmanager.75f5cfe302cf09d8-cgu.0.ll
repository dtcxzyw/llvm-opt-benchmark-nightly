Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RNCNCNCINvNtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_stream5retryNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderINtB8_10UdpRequestB16_EE000Csa7TLgTh0CeG_9ssmanager:bb.a
  store i64 %i.up, ptr %i.tl, align 8, !alias.scope !18952, !noalias !18878
  store ptr %i.uu, ptr %i.tm, align 8, !alias.scope !18952, !noalias !18878
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 640
  store i64 %i.up, ptr %i.uv, align 8, !alias.scope !18952, !noalias !18878
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 648
  store i32 0, ptr %i.uw, align 8, !noalias !18878
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 652
  store i32 3, ptr %i.ux, align 4, !noalias !18878
  br label %bb.em

bb.el:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !18883
  %i.uy = load ptr, ptr @_RNvNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s_10___CALLSITE, align 8, !noalias !18883, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !18883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !18883
  store <2 x ptr> <ptr @1015, ptr inttoptr (i64 55 to ptr)>, ptr %i.bp, align 16, !noalias !18883
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 24
  %i.vb = load ptr, ptr %i.va, align 8, !noalias !18878, !nonnull !80, !align !86, !noundef !80
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 480
  store ptr %i.bp, ptr %i.bq, align 8, !noalias !18883
  store ptr @16, ptr %i.ea, align 8, !noalias !18883
  store ptr %i.vc, ptr %i.eb, align 8, !noalias !18883
  store ptr @56, ptr %i.ec, align 8, !noalias !18883
  store i64 1, ptr %i.br, align 8, !noalias !18883
  store ptr %i.bq, ptr %.sroa.4440.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18883
  store i64 2, ptr %.sroa.5441.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18883
  store ptr %i.uz, ptr %.sroa.6442.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18883
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.uy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br) #45, !noalias !18880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !18883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !18883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !18883
  br label %.critedge37.i.i.i.i.i

bb.em:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit340.i.i.i.i.i, %_RINvNtCsgCecv3eZDcN_5alloc3vec9from_elemhECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.vd = phi i32 [ %.pre861.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit340.i.i.i.i.i ], [ 3, %_RINvNtCsgCecv3eZDcN_5alloc3vec9from_elemhECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %i.ve = phi i32 [ %.pre.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit340.i.i.i.i.i ], [ 0, %_RINvNtCsgCecv3eZDcN_5alloc3vec9from_elemhECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18953)
  call void @llvm.experimental.noalias.scope.decl(metadata !18954)
  %i.vf = icmp slt i32 %i.ve, %i.vd
  br i1 %i.vf, label %bb.hu, label %bb.hw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.hi, %bb.hh, %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i.i.i.i.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !18883
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 552
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.vg) #45, !noalias !18880
  br label %bb.dw

bb.en:                                            ; preds = %_RNvYNtNtNtCslxdWNweD0x2_11shadowsocks3net3udp9UdpSocketNtNtCsi1FNhPBS7PW_11hickory_net7runtime12DnsUdpSocket9recv_fromCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %bb.ab
  %.val113.i.i.i.i.i = phi ptr [ @2740, %_RNvYNtNtNtCslxdWNweD0x2_11shadowsocks3net3udp9UdpSocketNtNtCsi1FNhPBS7PW_11hickory_net7runtime12DnsUdpSocket9recv_fromCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.val113.pre.i.i.i.i.i, %bb.ab ]
  %.val112.i.i.i.i.i = phi ptr [ %i.agy, %_RNvYNtNtNtCslxdWNweD0x2_11shadowsocks3net3udp9UdpSocketNtNtCsi1FNhPBS7PW_11hickory_net7runtime12DnsUdpSocket9recv_fromCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.val112.pre.i.i.i.i.i, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !18883
  %i.vh = getelementptr inbounds nuw i8, ptr %.val113.i.i.i.i.i, i64 24
  %i.vi = load ptr, ptr %i.vh, align 8, !invariant.load !80, !noalias !18955, !nonnull !80
  call void %i.vi(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bn, ptr noundef nonnull %.val112.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ce) #53, !noalias !18880, !inline_history !18719
  %i.vj = load i16, ptr %i.ed, align 8, !range !116, !noalias !18883, !noundef !80 ; 4 uses
  %i.vk = icmp eq i16 %i.vj, -1
  br i1 %i.vk, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !18883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !18883
  br label %_RNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB7_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB7_7Request4send0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i

bb.ep:                                            ; preds = %bb.en
  %i.vl = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 664
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 656
  %.sroa.0449.0.copyload.i.i.i.i.i = load i64, ptr %i.bn, align 8, !noalias !18883 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5451.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5451.0..sroa_idx.i.i.i.i.i, i64 30, i1 false), !noalias !18883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !18883
  %.val114.i.i.i.i.i = load ptr, ptr %i.vm, align 8, !noalias !18878 ; 4 uses
  %.val115.i.i.i.i.i = load ptr, ptr %i.vl, align 8, !noalias !18878, !nonnull !80, !align !86, !noundef !80 ; 3 uses
  %i.vn = load ptr, ptr %.val115.i.i.i.i.i, align 8, !invariant.load !80, !noalias !18880 ; 2 uses
  %.not.i.i151.i.i.i.i.i = icmp eq ptr %i.vn, null
  br i1 %.not.i.i151.i.i.i.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val114.i.i.i.i.i) ]
  call void %i.vn(ptr noundef nonnull %.val114.i.i.i.i.i) #53, !noalias !18880, !inline_history !18720
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.vo = getelementptr inbounds nuw i8, ptr %.val115.i.i.i.i.i, i64 8
  %i.vp = load i64, ptr %i.vo, align 8, !range !82, !invariant.load !80, !noalias !18880 ; 2 uses
  %i.vq = icmp eq i64 %i.vp, 0
  br i1 %i.vq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i152.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i152.i.i.i.i.i: ; preds = %bb.er
  %i.vr = getelementptr inbounds nuw i8, ptr %.val115.i.i.i.i.i, i64 16
  %i.vs = load i64, ptr %i.vr, align 8, !range !84, !invariant.load !80, !noalias !18880
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val114.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val114.i.i.i.i.i, i64 noundef %i.vp, i64 noundef range(i64 1, -9223372036854775807) %i.vs) #45, !noalias !18880
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i152.i.i.i.i.i, %bb.er
  %i.vt = icmp eq i16 %i.vj, 2
  br i1 %i.vt, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.vu = inttoptr i64 %.sroa.0449.0.copyload.i.i.i.i.i to ptr
  call void @_RNvXs3_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_8NetErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cm, ptr noundef nonnull %i.vu) #45, !noalias !18871
  store i64 -1, ptr %i.ag, align 8, !noalias !18876
  br label %bb.hh

bb.et:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !18883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.2.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5451.i.i.i.i.i, i64 30, i1 false), !noalias !18883
  store i16 %i.vj, ptr %i.bo, align 4, !noalias !18883
  %i.vv = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 632
  %.val116.i.i.i.i.i = load ptr, ptr %i.vv, align 8, !noalias !18878, !nonnull !80, !noundef !80
  %i.vw = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 640
  %.val117.i.i.i.i.i = load i64, ptr %i.vw, align 8, !noalias !18878, !noundef !80 ; 2 uses
  %.not.i.i153.i.i.i.i.i = icmp ugt i64 %.sroa.0449.0.copyload.i.i.i.i.i, %.val117.i.i.i.i.i
  br i1 %.not.i.i153.i.i.i.i.i, label %bb.eu, label %_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtBM_5range5RangejEE5indexCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, !prof !92

bb.eu:                                            ; preds = %bb.et
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0449.0.copyload.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val117.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1017) #55, !noalias !18956
  unreachable

_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtBM_5range5RangejEE5indexCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.et
  %i.vx = icmp eq i64 %.sroa.0449.0.copyload.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.vx, label %_RNvXsw_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtCsf3Ta7LF998c_4core7convert4FromRShE4fromCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtBM_5range5RangejEE5indexCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !18957
  %i.vy = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0449.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, 17) 1) #45, !noalias !18957 ; 3 uses
  %i.vz = icmp eq ptr %i.vy, null
  br i1 %i.vz, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.0449.0.copyload.i.i.i.i.i) #54, !noalias !18958
  unreachable

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vy, ptr nonnull readonly align 1 %.val116.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.0449.0.copyload.i.i.i.i.i, i1 false), !noalias !18959
  %.pre866.i.i.i.i.i = load i16, ptr %i.bo, align 4, !range !81, !alias.scope !18960, !noalias !18883
  br label %_RNvXsw_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtCsf3Ta7LF998c_4core7convert4FromRShE4fromCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RNvXsw_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtCsf3Ta7LF998c_4core7convert4FromRShE4fromCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.ex, %_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtBM_5range5RangejEE5indexCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.wa = phi i16 [ %.pre866.i.i.i.i.i, %bb.ex ], [ %i.vj, %_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtBM_5range5RangejEE5indexCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.sroa.7453.0.i.i.i.i.i = phi ptr [ %i.vy, %bb.ex ], [ inttoptr (i64 1 to ptr), %_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtBM_5range5RangejEE5indexCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 336
  %.sroa.0459.0.copyload.i.i.i.i.i = load i16, ptr %i.wb, align 8, !alias.scope !18961, !noalias !18878
  %.sroa.9463.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 338
  %.sroa.9463.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.9463.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !18961, !noalias !18878 ; 5 uses
  %.sroa.13465.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 342
  %.sroa.13465.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.13465.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !18961, !noalias !18878 ; 8 uses
  %.sroa.15468.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 344
  %.sroa.15468.sroa.0.0.copyload.i.i.i.i.i = load i96, ptr %.sroa.15468.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !18961, !noalias !18878 ; 12 uses
  %.sroa.15470.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 364
  %.sroa.15470.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.15470.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !18961, !noalias !18878 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18962)
  %i.wc = trunc nuw i16 %i.wa to i1               ; 2 uses
  br i1 %i.wc, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %_RNvXsw_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtCsf3Ta7LF998c_4core7convert4FromRShE4fromCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %.sroa.7489.1.copyload.i.i.i.i.i = load i128, ptr %i.ee, align 4, !alias.scope !18963, !noalias !18883 ; 15 uses
  %.sroa.7489.2.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 8
  %i.wd = or i128 %.sroa.7489.2.extract.shift.i.i.i.i.i, %.sroa.7489.1.copyload.i.i.i.i.i
  %i.we = trunc i128 %i.wd to i8
  %or.cond.i.i.i.i.i.i.i = icmp eq i8 %i.we, 0
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i.i.i.i, label %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i.i.i.i

_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i.i.i.i: ; preds = %bb.ey
  %.sroa.7489.12.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 88
  %.sroa.7489.11.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 80
  %.sroa.7489.10.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 72
  %.sroa.7489.9.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 64
  %.sroa.7489.8.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 56
  %.sroa.7489.7.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 48
  %.sroa.7489.6.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 40
  %.sroa.7489.5.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 32
  %.sroa.7489.4.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 24
  %.sroa.7489.3.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 16
  %i.wf = or i128 %.sroa.7489.9.extract.shift.i.i.i.i.i, %.sroa.7489.10.extract.shift.i.i.i.i.i
  %i.wg = or i128 %i.wf, %.sroa.7489.8.extract.shift.i.i.i.i.i
  %i.wh = or i128 %i.wg, %.sroa.7489.7.extract.shift.i.i.i.i.i
  %i.wi = or i128 %i.wh, %.sroa.7489.4.extract.shift.i.i.i.i.i
  %i.wj = or i128 %i.wi, %.sroa.7489.3.extract.shift.i.i.i.i.i
  %i.wk = or i128 %i.wj, %.sroa.7489.6.extract.shift.i.i.i.i.i
  %i.wl = or i128 %i.wk, %.sroa.7489.5.extract.shift.i.i.i.i.i
  %i.wm = and i128 %i.wl, 255
  %or.cond31.i.i.i.i.i.i.i = icmp eq i128 %i.wm, 0
  %i.wn = and i128 %.sroa.7489.11.extract.shift.i.i.i.i.i, %.sroa.7489.12.extract.shift.i.i.i.i.i
  %i.wo = trunc i128 %i.wn to i8
  %or.cond17.i.i.i.i.i.i.i = icmp eq i8 %i.wo, -1
  %or.cond32.i.i.i.i.i.i.i = and i1 %or.cond17.i.i.i.i.i.i.i, %or.cond31.i.i.i.i.i.i.i
  br i1 %or.cond32.i.i.i.i.i.i.i, label %bb.fa, label %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i.i.i.i

bb.ez:                                            ; preds = %_RNvXsw_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtCsf3Ta7LF998c_4core7convert4FromRShE4fromCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !18960, !noalias !18883
  %.sroa.7489.1.insert.ext.i.i.i.i.i = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i to i128
  br label %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i.i.i.i

bb.fa:                                            ; preds = %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i.i.i.i
  %.sroa.7489.13.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7489.1.copyload.i.i.i.i.i, 96
  br label %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i.i.i.i

_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i.i.i.i: ; preds = %bb.fa, %bb.ez, %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i.i.i.i, %bb.ey
  %.sroa.7482.0.i.i.i.i.i = phi i128 [ %.sroa.7489.13.extract.shift.i.i.i.i.i, %bb.fa ], [ %.sroa.7489.1.insert.ext.i.i.i.i.i, %bb.ez ], [ %.sroa.7489.1.copyload.i.i.i.i.i, %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i.i.i.i ], [ %.sroa.7489.1.copyload.i.i.i.i.i, %bb.ey ] ; 2 uses
  %.sroa.0480.0.i.i.i.i.i = phi i8 [ 0, %bb.fa ], [ 0, %bb.ez ], [ 1, %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i.i.i.i ], [ 1, %bb.ey ] ; 2 uses
  %i.wp = trunc nuw i16 %.sroa.0459.0.copyload.i.i.i.i.i to i1 ; 3 uses
  br i1 %i.wp, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i.i.i.i
  %.sroa.9463.2.extract.shift.i.i.i.i.i = lshr i32 %.sroa.9463.0.copyload.i.i.i.i.i, 16 ; 2 uses
  %.sroa.7501.1.insert.ext504.i.i.i.i.i = zext nneg i32 %.sroa.9463.2.extract.shift.i.i.i.i.i to i128 ; 2 uses
  %.sroa.7501.3.insert.ext.i.i.i.i.i = zext i16 %.sroa.13465.0.copyload.i.i.i.i.i to i128
  %.sroa.7501.3.insert.shift.i.i.i.i.i = shl nuw nsw i128 %.sroa.7501.3.insert.ext.i.i.i.i.i, 16
  %.sroa.7501.5.insert.ext.i.i.i.i.i = zext i96 %.sroa.15468.sroa.0.0.copyload.i.i.i.i.i to i128 ; 9 uses
  %.sroa.7501.5.insert.shift.i.i.i.i.i = shl nuw i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 32
  %i.wq = or disjoint i128 %.sroa.7501.3.insert.shift.i.i.i.i.i, %.sroa.7501.5.insert.shift.i.i.i.i.i
  %.sroa.7501.5.insert.insert.i.i.i.i.i = or disjoint i128 %i.wq, %.sroa.7501.1.insert.ext504.i.i.i.i.i ; 2 uses
  %.sroa.7501.1.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.9463.2.extract.shift.i.i.i.i.i to i8
  %.sroa.7501.2.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.1.insert.ext504.i.i.i.i.i, 8
  %.sroa.7501.2.extract.trunc.i.i.i.i.i = trunc nuw i128 %.sroa.7501.2.extract.shift.i.i.i.i.i to i8
  %i.wr = or i8 %.sroa.7501.2.extract.trunc.i.i.i.i.i, %.sroa.7501.1.extract.trunc.i.i.i.i.i
  %or.cond.i.i161.i.i.i.i.i = icmp eq i8 %i.wr, 0
  br i1 %or.cond.i.i161.i.i.i.i.i, label %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i163.i.i.i.i.i, label %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit195.i.i.i.i.i

_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i163.i.i.i.i.i: ; preds = %bb.fb
  %.sroa.7501.12.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 56
  %.sroa.7501.11.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 48
  %.sroa.7501.10.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 40
  %.sroa.7501.9.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 32
  %.sroa.7501.8.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 24
  %.sroa.7501.7.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 16
  %.sroa.7501.6.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 8
  %.sroa.7501.6.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.7501.6.extract.shift.i.i.i.i.i to i8
  %.sroa.7501.5.extract.trunc.i.i.i.i.i = trunc i96 %.sroa.15468.sroa.0.0.copyload.i.i.i.i.i to i8
  %.sroa.7501.4.extract.shift.i.i.i.i.i = lshr i16 %.sroa.13465.0.copyload.i.i.i.i.i, 8
  %.sroa.13465.0.copyload.masked.i.i.i.i.i = and i16 %.sroa.13465.0.copyload.i.i.i.i.i, 255
  %i.ws = or i16 %.sroa.13465.0.copyload.masked.i.i.i.i.i, %.sroa.7501.4.extract.shift.i.i.i.i.i
  %or.cond5.i.i184.i.i.i.i.i = icmp eq i16 %i.ws, 0
  %i.wt = or i8 %.sroa.7501.6.extract.trunc.i.i.i.i.i, %.sroa.7501.5.extract.trunc.i.i.i.i.i
  %or.cond8.i.i185.i.i.i.i.i = icmp eq i8 %i.wt, 0
  %or.cond29.i.i186.i.i.i.i.i = select i1 %or.cond5.i.i184.i.i.i.i.i, i1 %or.cond8.i.i185.i.i.i.i.i, i1 false
  %i.wu = or i128 %.sroa.7501.7.extract.shift.i.i.i.i.i, %.sroa.7501.8.extract.shift.i.i.i.i.i
  %i.wv = trunc i128 %i.wu to i8
  %or.cond11.i.i187.i.i.i.i.i = icmp eq i8 %i.wv, 0
  %or.cond30.i.i188.i.i.i.i.i = select i1 %or.cond29.i.i186.i.i.i.i.i, i1 %or.cond11.i.i187.i.i.i.i.i, i1 false
  %i.ww = or i128 %.sroa.7501.9.extract.shift.i.i.i.i.i, %.sroa.7501.10.extract.shift.i.i.i.i.i
  %i.wx = trunc i128 %i.ww to i8
  %or.cond14.i.i189.i.i.i.i.i = icmp eq i8 %i.wx, 0
  %or.cond31.i.i190.i.i.i.i.i = select i1 %or.cond30.i.i188.i.i.i.i.i, i1 %or.cond14.i.i189.i.i.i.i.i, i1 false
  %i.wy = and i128 %.sroa.7501.11.extract.shift.i.i.i.i.i, %.sroa.7501.12.extract.shift.i.i.i.i.i
  %i.wz = trunc i128 %i.wy to i8
  %or.cond17.i.i191.i.i.i.i.i = icmp eq i8 %i.wz, -1
  %or.cond32.i.i192.i.i.i.i.i = select i1 %or.cond31.i.i190.i.i.i.i.i, i1 %or.cond17.i.i191.i.i.i.i.i, i1 false
  br i1 %or.cond32.i.i192.i.i.i.i.i, label %bb.fd, label %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit195.i.i.i.i.i

bb.fc:                                            ; preds = %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i.i.i.i
  %.sroa.7501.1.insert.ext.i.i.i.i.i = zext i32 %.sroa.9463.0.copyload.i.i.i.i.i to i128
  br label %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit195.i.i.i.i.i

bb.fd:                                            ; preds = %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i163.i.i.i.i.i
  %.sroa.7501.13.extract.shift.i.i.i.i.i = lshr i128 %.sroa.7501.5.insert.ext.i.i.i.i.i, 64
  br label %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit195.i.i.i.i.i

_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit195.i.i.i.i.i: ; preds = %bb.fd, %bb.fc, %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i163.i.i.i.i.i, %bb.fb
  %.sroa.7494.0.i.i.i.i.i = phi i128 [ %.sroa.7501.13.extract.shift.i.i.i.i.i, %bb.fd ], [ %.sroa.7501.1.insert.ext.i.i.i.i.i, %bb.fc ], [ %.sroa.7501.5.insert.insert.i.i.i.i.i, %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i163.i.i.i.i.i ], [ %.sroa.7501.5.insert.insert.i.i.i.i.i, %bb.fb ] ; 2 uses
  %.sroa.0492.0.i.i.i.i.i = phi i8 [ 0, %bb.fd ], [ 0, %bb.fc ], [ 1, %_RNvMsi_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i163.i.i.i.i.i ], [ 1, %bb.fb ] ; 2 uses
  %3 = trunc nuw i8 %.sroa.0492.0.i.i.i.i.i to i1
  %i.xa = icmp eq i8 %.sroa.0480.0.i.i.i.i.i, %.sroa.0492.0.i.i.i.i.i
  br i1 %i.xa, label %bb.fe, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrNtNtB8_3cmp9PartialEq2neCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

bb.fe:                                            ; preds = %_RNvMs0_NtNtCsf3Ta7LF998c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit195.i.i.i.i.i
  %4 = trunc nuw i8 %.sroa.0480.0.i.i.i.i.i to i1
  br i1 %4, label %.split.i.i.i.i.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrNtNtB8_3cmp9PartialEq2neCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.fe
  call void @llvm.assume(i1 %3)
  %i.xb = icmp eq i128 %.sroa.7482.0.i.i.i.i.i, %.sroa.7494.0.i.i.i.i.i
  br i1 %i.xb, label %bb.ff, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrNtNtB8_3cmp9PartialEq2neCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

_RNvYNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrNtNtB8_3cmp9PartialEq2neCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.fe
  %.sroa.7482.1.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.7482.0.i.i.i.i.i to i32
  %.sroa.7494.1.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.7494.0.i.i.i.i.i to i32
  %i.xc = icmp eq i32 %.sroa.7482.1.extract.trunc.i.i.i.i.i, %.sroa.7494.1.extract.trunc.i.i.i.i.i
  br i1 %i.xc, label %bb.ff, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrNtNtB8_3cmp9PartialEq2neCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

bb.ff:                                            ; preds = %_RNvYNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrNtNtB8_3cmp9PartialEq2neCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %.split.i.i.i.i.i
  %.sroa.0.0.in.v.i285.sroa.sel.v.sroa.gep854.val.i.i.i.i.i = load i16, ptr %.sroa.0.0.in.v.i285.sroa.sel.v.sroa.gep854.i.i.i.i.i, align 4, !noalias !18883
  %.sroa.0.0.in.v.i285.sroa.sel.v.sroa.gep.val.i.i.i.i.i = load i16, ptr %.sroa.0.0.in.v.i285.sroa.sel.v.sroa.gep.i.i.i.i.i, align 2, !noalias !18883
  %.sroa.0.0.i196.i.i.i.i.i = select i1 %i.wc, i16 %.sroa.0.0.in.v.i285.sroa.sel.v.sroa.gep854.val.i.i.i.i.i, i16 %.sroa.0.0.in.v.i285.sroa.sel.v.sroa.gep.val.i.i.i.i.i
  %.sroa.0.0.i199.sroa.speculated.i.i.i.i.i = select i1 %i.wp, i16 %.sroa.15470.0.copyload.i.i.i.i.i, i16 %.sroa.13465.0.copyload.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i16 %.sroa.0.0.i196.i.i.i.i.i, %.sroa.0.0.i199.sroa.speculated.i.i.i.i.i
  br i1 %.not28.i.i.i.i.i, label %bb.fg, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrNtNtB8_3cmp9PartialEq2neCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !18883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !18883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !18883
  store i64 %.sroa.0449.0.copyload.i.i.i.i.i, ptr %i.bc, align 8, !noalias !18883
  store ptr %.sroa.7453.0.i.i.i.i.i, ptr %.sroa.7453.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18883
  store i64 %.sroa.0449.0.copyload.i.i.i.i.i, ptr %.sroa.10454.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18883
  call void @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_responseNtB2_11DnsResponse11from_buffer(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc) #45, !noalias !18880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !18883
  %i.xd = load i64, ptr %i.bd, align 8, !range !115, !alias.scope !18964, !noalias !18883, !noundef !80 ; 2 uses
  %i.xe = icmp eq i64 %i.xd, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7615.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ek, i64 48, i1 false), !noalias !18883
  br i1 %i.xe, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !18883
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.4.8..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7615.i.i.i.i.i, i64 48, i1 false), !noalias !18883
  store i8 8, ptr %i.cm, align 8, !noalias !18876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4.i.i.i.i.i.i, i64 55, i1 false), !noalias !18876
  store i64 -1, ptr %i.ag, align 8, !noalias !18876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5621.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9617.0..sroa_idx618.i.i.i.i.i, i64 120, i1 false), !noalias !18883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !18883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4620.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7615.i.i.i.i.i, i64 48, i1 false), !noalias !18883
  store i64 %i.xd, ptr %i.be, align 8, !noalias !18883
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 616 ; 2 uses
  %i.xg = load i16, ptr %i.xf, align 8, !noalias !18878, !noundef !80
  %i.xh = load i16, ptr %i.el, align 2, !noalias !18883, !noundef !80
  %.not29.i.i.i.i.i = icmp eq i16 %i.xg, %i.xh
  br i1 %.not29.i.i.i.i.i, label %bb.fj, label %bb.hc

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !18883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !18883
  %i.xi = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 320
  %.val104.i.i.i.i.i = load ptr, ptr %i.xi, align 8, !noalias !18878, !nonnull !80, !noundef !80
  %i.xj = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 328
  %.val105.i.i.i.i.i = load i64, ptr %i.xj, align 8, !noalias !18878, !noundef !80
  call void @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message8from_vec(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val104.i.i.i.i.i, i64 noundef %.val105.i.i.i.i.i) #45, !noalias !18880
  %i.xk = load i64, ptr %i.aw, align 8, !range !115, !alias.scope !18965, !noalias !18883, !noundef !80 ; 2 uses
  %i.xl = icmp eq i64 %i.xk, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7634.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ep, i64 40, i1 false), !noalias !18883
  br i1 %i.xl, label %.critedge53.i.i.i.i.i, label %bb.fk

.critedge53.i.i.i.i.i:                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !18883
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i201.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.4.8..sroa_idx.i.i202.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7634.i.i.i.i.i, i64 40, i1 false), !noalias !18883
  store i8 8, ptr %i.cm, align 8, !noalias !18876
  store i8 1, ptr %.sroa.4683.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.0..sroa_idx.i203.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4.i.i201.i.i.i.i.i, i64 47, i1 false), !noalias !18876
  store i64 -1, ptr %i.ag, align 8, !noalias !18876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i201.i.i.i.i.i)
  br label %bb.ha

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5640.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9636.0..sroa_idx637.i.i.i.i.i, i64 104, i1 false), !noalias !18883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !18883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4639.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7634.i.i.i.i.i, i64 40, i1 false), !noalias !18883
  store i64 %i.xk, ptr %i.ax, align 8, !noalias !18883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !18883
  store ptr %i.ax, ptr %i.av, align 8, !noalias !18883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !18883
  store ptr %i.be, ptr %i.au, align 8, !noalias !18883
  %.val97.i.i.i.i.i = load ptr, ptr %.sroa.4620.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18883, !nonnull !80, !noundef !80 ; 2 uses
  %.val98.i.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !18883, !noundef !80 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.val98.i.i.i.i.i, 88
  %i.xm = getelementptr inbounds nuw i8, ptr %.val97.i.i.i.i.i, i64 %.idx.i.i.i.i.i
  %i.xn = icmp eq i64 %.val98.i.i.i.i.i, 0
  br i1 %i.xn, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB2y_7Request4send00ECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i, label %.lr.ph.i204.i.i.i.i.i

.lr.ph.i204.i.i.i.i.i:                            ; preds = %bb.fk, %_RNCNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB9_7Request4send00Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.xo = phi ptr [ %i.xp, %_RNCNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB9_7Request4send00Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ], [ %.val97.i.i.i.i.i, %bb.fk ] ; 9 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18966)
  %i.xq = load ptr, ptr %.sroa.4639.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18967, !nonnull !80, !noundef !80 ; 5 uses
  %i.xr = load i64, ptr %i.er, align 8, !noalias !18967, !noundef !80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18968)
  call void @llvm.experimental.noalias.scope.decl(metadata !18969)
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.xr, 88
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 %.idx.i.i.i.i.i.i.i.i ; 4 uses
  %.not.i.i.i.not.i.not.i.i.i.i.i = icmp eq i64 %i.xr, 0
  br i1 %.not.i.i.i.not.i.not.i.i.i.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB2y_7Request4send0s_0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i204.i.i.i.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 84
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xo, i64 86
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 80
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xo, i64 82
  %i.xx = load i16, ptr %i.xt, align 4, !range !171, !alias.scope !18970, !noalias !18971
  %.fr9.i.i.i.i.i.i.i = freeze i16 %i.xx          ; 3 uses
  %i.xy = load i16, ptr %i.xu, align 2, !alias.scope !18970, !noalias !18971 ; 2 uses
  %i.xz = load i16, ptr %i.xv, align 8, !range !172, !alias.scope !18970, !noalias !18971
  %.fr.i.i.i.i.i.i.i = freeze i16 %i.xz           ; 5 uses
  %i.ya = load i16, ptr %i.xw, align 2, !alias.scope !18970, !noalias !18971 ; 2 uses
  %i.yb = icmp eq i16 %.fr9.i.i.i.i.i.i.i, 37
  %i.yc = icmp ugt i16 %.fr.i.i.i.i.i.i.i, 4      ; 2 uses
  br i1 %i.yb, label %.lr.ph.i.i.split.us.i.i.i.i.i.i.i, label %.lr.ph.i.i.split.i.i.i.i.i.i.i

.lr.ph.i.i.split.us.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br i1 %i.yc, label %.lr.ph.i.i.split.us.split.us.i.i.i.i.i.i.i, label %.lr.ph.i.i.split.us.split.i.i.i.i.i.i.i

.lr.ph.i.i.split.us.split.us.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.split.us.i.i.i.i.i.i.i, %.backedge.i.i.us.us.i.i.i.i.i.i.i
  %i.yd = phi ptr [ %i.ye, %.backedge.i.i.us.us.i.i.i.i.i.i.i ], [ %i.xq, %.lr.ph.i.i.split.us.i.i.i.i.i.i.i ] ; 6 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 88 ; 2 uses
  %i.yf = call noundef zeroext i1 @_RNvXs9_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.yd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.xo) #45, !noalias !18972
  br i1 %i.yf, label %bb.fl, label %.backedge.i.i.us.us.i.i.i.i.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i.i.split.us.split.us.i.i.i.i.i.i.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 84
  %i.yh = load i16, ptr %i.yg, align 4, !range !171, !alias.scope !18973, !noalias !18972, !noundef !80
  %i.yi = icmp eq i16 %i.yh, 37
  br i1 %i.yi, label %bb.fm, label %.backedge.i.i.us.us.i.i.i.i.i.i.i

bb.fm:                                            ; preds = %bb.fl
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yd, i64 86
  %i.yk = load i16, ptr %i.yj, align 2, !alias.scope !18973, !noalias !18972, !noundef !80
  %i.yl = icmp eq i16 %i.yk, %i.xy
  br i1 %i.yl, label %bb.fn, label %.backedge.i.i.us.us.i.i.i.i.i.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yd, i64 80
  %i.yn = load i16, ptr %i.ym, align 8, !range !172, !alias.scope !18973, !noalias !18972, !noundef !80
  %i.yo = icmp eq i16 %i.yn, %.fr.i.i.i.i.i.i.i
  br i1 %i.yo, label %_RNvXs8_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB5_5QueryNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.sink.split.i.i.i.us.us.i.i.i.i.i.i.i, label %.backedge.i.i.us.us.i.i.i.i.i.i.i

_RNvXs8_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB5_5QueryNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.sink.split.i.i.i.us.us.i.i.i.i.i.i.i: ; preds = %bb.fn
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yd, i64 82
  %i.yq = load i16, ptr %i.yp, align 2, !alias.scope !18973, !noalias !18972, !noundef !80
  %i.yr = icmp eq i16 %i.yq, %i.ya
  br i1 %i.yr, label %_RNCNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB9_7Request4send00Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, label %.backedge.i.i.us.us.i.i.i.i.i.i.i

.backedge.i.i.us.us.i.i.i.i.i.i.i:                ; preds = %_RNvXs8_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB5_5QueryNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.sink.split.i.i.i.us.us.i.i.i.i.i.i.i, %bb.fn, %bb.fm, %bb.fl, %.lr.ph.i.i.split.us.split.us.i.i.i.i.i.i.i
  %.not6.i.i.us.us.i.i.i.i.i.i.i = icmp eq ptr %i.ye, %i.xs
  br i1 %.not6.i.i.us.us.i.i.i.i.i.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB2y_7Request4send0s_0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %.lr.ph.i.i.split.us.split.us.i.i.i.i.i.i.i

.lr.ph.i.i.split.us.split.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.split.us.i.i.i.i.i.i.i, %.backedge.i.i.us.i.i.i.i.i.i.i
  %i.ys = phi ptr [ %i.yt, %.backedge.i.i.us.i.i.i.i.i.i.i ], [ %i.xq, %.lr.ph.i.i.split.us.i.i.i.i.i.i.i ] ; 5 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 88 ; 2 uses
  %i.yu = call noundef zeroext i1 @_RNvXs9_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ys, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.xo) #45, !noalias !18972
  br i1 %i.yu, label %bb.fo, label %.backedge.i.i.us.i.i.i.i.i.i.i

bb.fo:                                            ; preds = %.lr.ph.i.i.split.us.split.i.i.i.i.i.i.i
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 84
  %i.yw = load i16, ptr %i.yv, align 4, !range !171, !alias.scope !18973, !noalias !18972, !noundef !80
  %i.yx = icmp eq i16 %i.yw, 37
  br i1 %i.yx, label %bb.fp, label %.backedge.i.i.us.i.i.i.i.i.i.i

bb.fp:                                            ; preds = %bb.fo
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 86
  %i.yz = load i16, ptr %i.yy, align 2, !alias.scope !18973, !noalias !18972, !noundef !80
  %i.za = icmp eq i16 %i.yz, %i.xy
  br i1 %i.za, label %bb.fq, label %.backedge.i.i.us.i.i.i.i.i.i.i

bb.fq:                                            ; preds = %bb.fp
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ys, i64 80
  %i.zc = load i16, ptr %i.zb, align 8, !range !172, !alias.scope !18973, !noalias !18972, !noundef !80
  %i.zd = icmp eq i16 %i.zc, %.fr.i.i.i.i.i.i.i
  br i1 %i.zd, label %_RNCNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB9_7Request4send00Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, label %.backedge.i.i.us.i.i.i.i.i.i.i

.backedge.i.i.us.i.i.i.i.i.i.i:                   ; preds = %bb.fq, %bb.fp, %bb.fo, %.lr.ph.i.i.split.us.split.i.i.i.i.i.i.i
  %.not6.i.i.us.i.i.i.i.i.i.i = icmp eq ptr %i.yt, %i.xs
  br i1 %.not6.i.i.us.i.i.i.i.i.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtB2y_7Request4send0s_0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %.lr.ph.i.i.split.us.split.i.i.i.i.i.i.i

.lr.ph.i.i.split.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br i1 %i.yc, label %.lr.ph.i.i.split.split.us.i.i.i.i.i.i.i, label %.lr.ph.i.i.split.split.i.i.i.i.i.i.i

.lr.ph.i.i.split.split.us.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.split.i.i.i.i.i.i.i, %.backedge.i.i.us2.i.i.i.i.i.i.i
  %i.ze = phi ptr [ %i.zf, %.backedge.i.i.us2.i.i.i.i.i.i.i ], [ %i.xq, %.lr.ph.i.i.split.i.i.i.i.i.i.i ] ; 5 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 88 ; 2 uses
  %i.zg = call noundef zeroext i1 @_RNvXs9_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ze, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.xo) #45, !noalias !18972
  br i1 %i.zg, label %bb.fr, label %.backedge.i.i.us2.i.i.i.i.i.i.i

bb.fr:                                            ; preds = %.lr.ph.i.i.split.split.us.i.i.i.i.i.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 84
  %i.zi = load i16, ptr %i.zh, align 4, !range !171, !alias.scope !18973, !noalias !18972, !noundef !80
  %i.zj = icmp eq i16 %i.zi, %.fr9.i.i.i.i.i.i.i
  br i1 %i.zj, label %bb.fs, label %.backedge.i.i.us2.i.i.i.i.i.i.i

end_hunk_0
