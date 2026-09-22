Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB6_14DnsClientCache10lookup_dns00Csa7TLgTh0CeG_9ssmanager:bb.a
bb.fp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_6option8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.ze = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef 32) #53, !noalias !19919
  br label %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.fp, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i.i.i.i, %bb.fo
  %.sroa.05.0.i.i.i.i = phi ptr [ %i.zd, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i.i.i.i ], [ %i.ze, %bb.fp ], [ %.sroa.6.sroa.5.0.copyload.i.i.i.i, %bb.fo ]
  store i8 1, ptr %i.yx, align 8, !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !19918
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.zf, i64 32, i1 false), !noalias !19918
  call void @llvm.experimental.noalias.scope.decl(metadata !19964)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ax) #46, !noalias !19965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !19918
  br label %bb.fq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i: ; preds = %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i.i.i.i
  store i8 1, ptr %i.yx, align 8, !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !19918
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.zg, i64 32, i1 false), !noalias !19918
  %.sroa.0567.0.copyload568.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !19966, !noalias !19918 ; 3 uses
  %.sroa.12569.0..sroa_idx570.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.12569.0.copyload571.i.i.i = load ptr, ptr %.sroa.12569.0..sroa_idx570.i.i.i, align 8, !alias.scope !19966, !noalias !19918 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !19918
  %i.zh = icmp eq i64 %.sroa.0567.0.copyload568.i.i.i, 2
  br i1 %i.zh, label %bb.fq, label %bb.fw

bb.fq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %.sroa.12569.01032.i.i.i = phi ptr [ %.sroa.05.0.i.i.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.12569.0.copyload571.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12569.01032.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19967)
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.zj = load i64, ptr %i.zi, align 8, !range !119, !alias.scope !19967, !noalias !19918, !noundef !80 ; 2 uses
  %i.zk = icmp eq i64 %i.zj, -1
  br i1 %i.zk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !19968)
  %.not.i.i155.i.i.i = icmp eq i64 %i.zj, 2
  br i1 %.not.i.i155.i.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.zi) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.experimental.noalias.scope.decl(metadata !19969)
  %.val.i.i.i156.i.i.i = load ptr, ptr %i.yw, align 8, !alias.scope !19970, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !19971
  %i.zl = ptrtoint ptr %.val.i.i.i156.i.i.i to i64 ; 2 uses
  %i.zm = and i64 %i.zl, 3
  switch i64 %i.zm, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
    i64 3, label %bb.fu
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
    i64 1, label %bb.fv
  ], !prof !111

bb.fu:                                            ; preds = %bb.ft
  %i.zn = icmp ult ptr %.val.i.i.i156.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.zo = and i64 %i.zl, 1095216660480
  %i.zp = icmp ne i64 %i.zo, 1095216660480
  call void @llvm.assume(i1 %i.zn)
  call void @llvm.assume(i1 %i.zp)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.fv:                                            ; preds = %bb.ft
  %i.zq = getelementptr i8, ptr %.val.i.i.i156.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zq) ]
  %i.zr = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.zq, ptr %i.zr, align 8, !alias.scope !19972, !noalias !19971
  store i8 3, ptr %i.aj, align 8, !alias.scope !19972, !noalias !19971
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.zr) #46, !noalias !19973
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !19971
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %bb.fs, %bb.fq
  store ptr %.sroa.12569.01032.i.i.i, ptr %i.yw, align 8, !noalias !19918
  store i64 2, ptr %i.zi, align 8, !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12565.i.i.i)
  %.phi.trans.insert1126.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.pre1127.i.i.i = load ptr, ptr %.phi.trans.insert1126.i.i.i, align 8, !alias.scope !19937, !noalias !19938
  %.phi.trans.insert1128.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.pre1129.i.i.i = load ptr, ptr %.phi.trans.insert1128.i.i.i, align 8, !alias.scope !19937, !noalias !19938
  br label %bb.eu

bb.fw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6620.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6620.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.zs, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0617.i.i.i)
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0617.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.zt, i64 32, i1 false), !noalias !19918
  call void @llvm.experimental.noalias.scope.decl(metadata !19974)
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.zv = load i64, ptr %i.zu, align 8, !range !119, !alias.scope !19974, !noalias !19918, !noundef !80 ; 2 uses
  %i.zw = icmp eq i64 %i.zv, -1
  br i1 %i.zw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !19975)
  %.not.i.i158.i.i.i = icmp eq i64 %i.zv, 2
  br i1 %.not.i.i158.i.i.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.zu) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.experimental.noalias.scope.decl(metadata !19976)
  %.val.i.i.i159.i.i.i = load ptr, ptr %i.yw, align 8, !alias.scope !19977, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !19978
  %i.zx = ptrtoint ptr %.val.i.i.i159.i.i.i to i64 ; 2 uses
  %i.zy = and i64 %i.zx, 3
  switch i64 %i.zy, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i160.i.i.i
    i64 3, label %bb.ga
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i160.i.i.i
    i64 1, label %bb.gb
  ], !prof !111

bb.ga:                                            ; preds = %bb.fz
  %i.zz = icmp ult ptr %.val.i.i.i159.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aaa = and i64 %i.zx, 1095216660480
  %i.aab = icmp ne i64 %i.aaa, 1095216660480
  call void @llvm.assume(i1 %i.zz)
  call void @llvm.assume(i1 %i.aab)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i160.i.i.i

bb.gb:                                            ; preds = %bb.fz
  %i.aac = getelementptr i8, ptr %.val.i.i.i159.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aac) ]
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.aac, ptr %i.aad, align 8, !alias.scope !19979, !noalias !19978
  store i8 3, ptr %i.ai, align 8, !alias.scope !19979, !noalias !19978
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aad) #46, !noalias !19980
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i160.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i160.i.i.i: ; preds = %bb.gb, %bb.ga, %bb.fz, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !19978
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i160.i.i.i, %bb.fy, %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0617.i.i.i, i64 32, i1 false), !noalias !19918
  store i64 %.sroa.0567.0.copyload568.i.i.i, ptr %i.zu, align 8, !noalias !19918
  %.sroa.5619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %.sroa.12569.0.copyload571.i.i.i, ptr %.sroa.5619.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.6620.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6620.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6620.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0617.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6620.i.i.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %bb.eu
  %i.aae = phi ptr [ %i.vd, %bb.eu ], [ %i.ys, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i ], [ %i.vd, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ]
  %i.aaf = phi ptr [ %i.ve, %bb.eu ], [ %i.yt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i ], [ %i.ve, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ]
  %i.aag = phi ptr [ %i.vf, %bb.eu ], [ %i.yu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i ], [ %i.vf, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ]
  %i.aah = phi ptr [ %i.vg, %bb.eu ], [ %i.yv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i ], [ %i.vg, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ]
  %i.aai = phi ptr [ %i.vh, %bb.eu ], [ %i.yw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i ], [ %i.vh, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %.sroa.4622.0.copyload1133.i.i.i = phi i64 [ %.sroa.4622.0.copyload1134.i.i.i, %bb.eu ], [ %.sroa.0567.0.copyload568.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit162.i.i.i ], [ %.sroa.4622.0.copyload1134.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12565.i.i.i)
  %i.aaj = getelementptr i8, ptr %1, i64 616
  %.val103.i.i.i = load i64, ptr %i.aaj, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.aak = icmp eq i64 %.val103.i.i.i, 0
  br i1 %i.aak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val102.i.i.i = load ptr, ptr %i.aal, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.aam = shl nuw i64 %.val103.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val102.i.i.i, i64 noundef %i.aam, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !19982
  %.sroa.4622.0..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.4622.0.copyload.pre.i.i.i = load i64, ptr %.sroa.4622.0..sroa_idx.phi.trans.insert.i.i.i, align 8, !noalias !19918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.gc, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i
  %.sroa.4622.0.copyload.i.i.i = phi i64 [ %.sroa.4622.0.copyload1133.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i ], [ %.sroa.4622.0.copyload.pre.i.i.i, %bb.gc ] ; 2 uses
  %.not.i163.i.i.i = icmp eq i64 %.sroa.4622.0.copyload.i.i.i, -1
  br i1 %.not.i163.i.i.i, label %bb.gd, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i, !prof !92

bb.gd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @649, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @655) #56, !noalias !19983
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %.sroa.5625.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.sroa.0621.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aai, align 8, !noalias !19918
  %i.aan = load <2 x ptr>, ptr %.sroa.5625.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.5625.sroa.4.0..sroa.5625.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.19.sroa.7.i.sroa.9.0.copyload88.i.i = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.5625.sroa.4.0..sroa.5625.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !19918
  br label %bb.gf

bb.ge:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i16 %.sroa.0563.0.copyload564.i.i.i, ptr %i.aao, align 8, !noalias !19918
  %.sroa.12565.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12565.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12565.i.i.i, i64 30, i1 false), !noalias !19918
  %3 = trunc nuw i16 %.sroa.0563.0.copyload564.i.i.i to i8
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.aaq = load ptr, ptr %i.aap, align 8, !noalias !19918, !nonnull !80, !align !86, !noundef !80
  %4 = and i8 %3, 1
  %.sroa.7586.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store ptr %i.aaq, ptr %.sroa.7586.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8587.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store i8 0, ptr %.sroa.8587.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.9588.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1217
  store i8 %4, ptr %.sroa.9588.0..sroa_idx.i.i.i, align 1, !noalias !19918
  br label %bb.fh

bb.gf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.aar = phi ptr [ %i.aae, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.ang, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.ain, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %i.awr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %i.ary, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %i.aem, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ] ; 2 uses
  %i.aas = phi ptr [ %i.aaf, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.anh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.aio, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %i.aws, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %i.arz, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %i.aen, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ] ; 2 uses
  %i.aat = phi ptr [ %i.aag, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.ani, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.aip, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %i.awt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %i.asa, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %i.aeo, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ] ; 2 uses
  %i.aau = phi ptr [ %i.aah, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.anj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.aiq, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %i.awu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %i.asb, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %i.aep, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ] ; 2 uses
  %i.aav = phi ptr [ %i.aai, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.ank, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.air, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %i.awv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %i.asc, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %i.aeq, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ] ; 2 uses
  %.sroa.19.sroa.7.i.sroa.9.0.i.i = phi i64 [ %.sroa.19.sroa.7.i.sroa.9.0.copyload88.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload85.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload86.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload84.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload87.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ]
  %.sroa.0843.0.i.i.i = phi ptr [ %.sroa.0621.sroa.0.0.copyload.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.0837.sroa.0.0.copyload.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.0765.sroa.0.0.copyload.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %.sroa.0995.0.copyload.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %.sroa.0925.0.copyload.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %.sroa.0693.sroa.0.0.copyload.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ] ; 2 uses
  %.sroa.11853.0.i.i.i = phi i64 [ %.sroa.4622.0.copyload.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.4838.0.copyload.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.4766.0.copyload.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %.sroa.5997.0.copyload.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %.sroa.5927.0.copyload.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %.sroa.4694.0.copyload.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ] ; 2 uses
  %i.aaw = phi <2 x ptr> [ %i.aan, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.anz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.aix, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i ], [ %i.axk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i ], [ %i.asi, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i ], [ %i.aew, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i ]
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 1089 ; 2 uses
  %i.aay = load i8, ptr %i.aax, align 1, !range !93, !noalias !19918, !noundef !80
  %i.aaz = trunc nuw i8 %i.aay to i1
  br i1 %i.aaz, label %bb.od, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.gg:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12565.i.i.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i

bb.gh:                                            ; preds = %bb.fh
  %.sroa.3591.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.3591.0.copyload.i.i.i = load ptr, ptr %.sroa.3591.0..sroa_idx.i.i.i, align 8, !noalias !19918 ; 5 uses
  %.sroa.5592.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5592.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5592.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !19918
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.abb = load i8, ptr %i.aba, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i164.i.i.i = icmp eq i8 %i.abb, 3
  br i1 %cond.i164.i.i.i, label %bb.gi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit172.i.i.i

bb.gi:                                            ; preds = %bb.gh
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 1201
  %i.abd = load i8, ptr %i.abc, align 1, !range !114, !noalias !19918, !noundef !80
  %cond.i.i165.i.i.i = icmp eq i8 %i.abd, 3
  br i1 %cond.i.i165.i.i.i, label %bb.gj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit172.i.i.i

bb.gj:                                            ; preds = %bb.gi
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.abf = load i8, ptr %i.abe, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i.i.i166.i.i.i = icmp eq i8 %i.abf, 3
  br i1 %cond.i.i.i166.i.i.i, label %bb.gk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit172.i.i.i

bb.gk:                                            ; preds = %bb.gj
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.val.i.i.i167.i.i.i = load i16, ptr %i.abg, align 8, !range !128, !noalias !19918, !noundef !80
  %i.abh = getelementptr i8, ptr %1, i64 1144
  %.val1.i.i.i168.i.i.i = load ptr, ptr %i.abh, align 8, !noalias !19918 ; 4 uses
  %cond.i.i.i.i.i169.i.i.i = icmp eq i16 %.val.i.i.i167.i.i.i, -1
  br i1 %cond.i.i.i.i.i169.i.i.i, label %bb.gl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit172.i.i.i

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i168.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !19984
  %i.abi = ptrtoint ptr %.val1.i.i.i168.i.i.i to i64 ; 2 uses
  %i.abj = and i64 %i.abi, 3
  switch i64 %i.abj, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i170.i.i.i
    i64 3, label %bb.gm
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i170.i.i.i
    i64 1, label %bb.gn
  ], !prof !111

bb.gm:                                            ; preds = %bb.gl
  %i.abk = icmp ult ptr %.val1.i.i.i168.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.abl = and i64 %i.abi, 1095216660480
  %i.abm = icmp ne i64 %i.abl, 1095216660480
  call void @llvm.assume(i1 %i.abk)
  call void @llvm.assume(i1 %i.abm)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i170.i.i.i

bb.gn:                                            ; preds = %bb.gl
  %i.abn = getelementptr i8, ptr %.val1.i.i.i168.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abn) ]
  %i.abo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.abn, ptr %i.abo, align 8, !alias.scope !19985, !noalias !19984
  store i8 3, ptr %i.ah, align 8, !alias.scope !19985, !noalias !19984
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.abo) #46, !noalias !19986
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i170.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i170.i.i.i: ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !19984
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit172.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit172.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i170.i.i.i, %bb.gk, %bb.gj, %bb.gi, %bb.gh
  %i.abp = icmp eq i64 %i.yg, 2
  br i1 %i.abp, label %bb.go, label %.thread.i.i.i

bb.go:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit172.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3591.0.copyload.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12565.i.i.i)
  %i.abq = getelementptr i8, ptr %1, i64 616
  %.val101.i.i.i = load i64, ptr %i.abq, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.abr = icmp eq i64 %.val101.i.i.i, 0
  br i1 %i.abr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit174.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val100.i.i.i = load ptr, ptr %i.abs, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.abt = shl nuw i64 %.val101.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val100.i.i.i, i64 noundef %i.abt, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !19987
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit174.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit174.i.i.i: ; preds = %bb.gp, %bb.go
  call void @llvm.experimental.noalias.scope.decl(metadata !19988)
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.abv = load i64, ptr %i.abu, align 8, !range !119, !alias.scope !19988, !noalias !19918, !noundef !80 ; 2 uses
  %i.abw = icmp eq i64 %i.abv, -1
  br i1 %i.abw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i, label %bb.gq

bb.gq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit174.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19989)
  %.not.i.i175.i.i.i = icmp eq i64 %i.abv, 2
  br i1 %.not.i.i175.i.i.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.abu) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.experimental.noalias.scope.decl(metadata !19990)
  %.val.i.i.i176.i.i.i = load ptr, ptr %i.ye, align 8, !alias.scope !19991, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !19992
  %i.abx = ptrtoint ptr %.val.i.i.i176.i.i.i to i64 ; 2 uses
  %i.aby = and i64 %i.abx, 3
  switch i64 %i.aby, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i177.i.i.i
    i64 3, label %bb.gt
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i177.i.i.i
    i64 1, label %bb.gu
  ], !prof !111

bb.gt:                                            ; preds = %bb.gs
  %i.abz = icmp ult ptr %.val.i.i.i176.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aca = and i64 %i.abx, 1095216660480
  %i.acb = icmp ne i64 %i.aca, 1095216660480
  call void @llvm.assume(i1 %i.abz)
  call void @llvm.assume(i1 %i.acb)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i177.i.i.i

bb.gu:                                            ; preds = %bb.gs
  %i.acc = getelementptr i8, ptr %.val.i.i.i176.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acc) ]
  %i.acd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.acc, ptr %i.acd, align 8, !alias.scope !19993, !noalias !19992
  store i8 3, ptr %i.ag, align 8, !alias.scope !19993, !noalias !19992
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.acd) #46, !noalias !19994
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i177.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i177.i.i.i: ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !19992
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

.thread.i.i.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit172.i.i.i
  %.sroa.5595.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5595.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5592.i.i.i, i64 16, i1 false), !noalias !19918
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 3 uses
  store i64 %i.yg, ptr %i.ace, align 8, !noalias !19918
  %.sroa.4594.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %.sroa.3591.0.copyload.i.i.i, ptr %.sroa.4594.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yf, ptr noundef nonnull align 8 dereferenceable(32) %i.acf, i64 32, i1 false), !noalias !19918
  %.sroa.6602.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store ptr %i.ace, ptr %.sroa.6602.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8604.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1176 ; 2 uses
  store i8 0, ptr %.sroa.8604.0..sroa_idx.i.i.i, align 8, !noalias !19918
  br label %bb.fk

bb.gv:                                            ; preds = %bb.hs, %bb.cu
  %i.acg = phi ptr [ %i.vu, %bb.hs ], [ %i.ok, %bb.cu ] ; 5 uses
  %i.ach = phi ptr [ %i.vv, %bb.hs ], [ %i.oj, %bb.cu ] ; 4 uses
  %i.aci = phi ptr [ %i.vw, %bb.hs ], [ %.phi.trans.insert.i20, %bb.cu ] ; 5 uses
  %i.acj = phi ptr [ %i.vx, %bb.hs ], [ %.phi.trans.insert.i.i, %bb.cu ] ; 5 uses
  %i.ack = phi ptr [ %i.vy, %bb.hs ], [ %i.pv, %bb.cu ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !19918
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 2 uses
  call fastcc void @_RNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0Csa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.aw, ptr noundef nonnull align 8 %i.acl) #54, !noalias !19919
  %i.acm = load i64, ptr %i.aw, align 8, !range !119, !noalias !19918, !noundef !80 ; 3 uses
  %i.acn = icmp eq i64 %i.acm, -1
  br i1 %i.acn, label %bb.ht, label %bb.hu

bb.gw:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12636.i.i.i)
  %.phi.trans.insert1085.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1176 ; 3 uses
  %.pre1086.i.i.i = load i8, ptr %.phi.trans.insert1085.i.i.i, align 8, !range !114, !noalias !19918
  switch i8 %.pre1086.i.i.i, label %bb.gx [
    i8 0, label %._crit_edge153.i.i
    i8 1, label %bb.hb
    i8 3, label %bb.gz
  ]

._crit_edge153.i.i:                               ; preds = %bb.gw
  %.phi.trans.insert154.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %.pre155.i.i = load ptr, ptr %.phi.trans.insert154.i.i, align 8, !noalias !19918
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  unreachable
end_hunk_0
begin_hunk_1_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB6_14DnsClientCache10lookup_dns00Csa7TLgTh0CeG_9ssmanager:bb.a

_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit198.i.i.i: ; preds = %bb.hd, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i193.i.i.i, %bb.hc
  %.sroa.05.0.i195.i.i.i = phi ptr [ %i.adj, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i193.i.i.i ], [ %i.adk, %bb.hd ], [ %.sroa.6.sroa.5.0.copyload.i185.i.i.i, %bb.hc ]
  store i8 1, ptr %i.add, align 8, !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !19918
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.adl, i64 32, i1 false), !noalias !19918
  call void @llvm.experimental.noalias.scope.decl(metadata !20002)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.av) #46, !noalias !20003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !19918
  br label %bb.he

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit205.thread.i.i.i: ; preds = %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i193.i.i.i
  store i8 1, ptr %i.add, align 8, !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !19918
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.adm, i64 32, i1 false), !noalias !19918
  %.sroa.0638.0.copyload639.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !20004, !noalias !19918 ; 3 uses
  %.sroa.12640.0..sroa_idx641.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.12640.0.copyload642.i.i.i = load ptr, ptr %.sroa.12640.0..sroa_idx641.i.i.i, align 8, !alias.scope !20004, !noalias !19918 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !19918
  %i.adn = icmp eq i64 %.sroa.0638.0.copyload639.i.i.i, 2
  br i1 %i.adn, label %bb.he, label %bb.hk

bb.he:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit205.thread.i.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit198.i.i.i
  %.sroa.12640.01040.i.i.i = phi ptr [ %.sroa.05.0.i195.i.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit198.i.i.i ], [ %.sroa.12640.0.copyload642.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit205.thread.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12640.01040.i.i.i) ]
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20005)
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.adq = load i64, ptr %i.adp, align 8, !range !119, !alias.scope !20005, !noalias !19918, !noundef !80 ; 2 uses
  %i.adr = icmp eq i64 %i.adq, -1
  br i1 %i.adr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit211.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.experimental.noalias.scope.decl(metadata !20006)
  %.not.i.i207.i.i.i = icmp eq i64 %i.adq, 2
  br i1 %.not.i.i207.i.i.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.adp) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit211.i.i.i

bb.hh:                                            ; preds = %bb.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !20007)
  %.val.i.i.i208.i.i.i = load ptr, ptr %i.ado, align 8, !alias.scope !20008, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !20009
  %i.ads = ptrtoint ptr %.val.i.i.i208.i.i.i to i64 ; 2 uses
  %i.adt = and i64 %i.ads, 3
  switch i64 %i.adt, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i209.i.i.i
    i64 3, label %bb.hi
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i209.i.i.i
    i64 1, label %bb.hj
  ], !prof !111

bb.hi:                                            ; preds = %bb.hh
  %i.adu = icmp ult ptr %.val.i.i.i208.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.adv = and i64 %i.ads, 1095216660480
  %i.adw = icmp ne i64 %i.adv, 1095216660480
  call void @llvm.assume(i1 %i.adu)
  call void @llvm.assume(i1 %i.adw)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i209.i.i.i

bb.hj:                                            ; preds = %bb.hh
  %i.adx = getelementptr i8, ptr %.val.i.i.i208.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adx) ]
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.adx, ptr %i.ady, align 8, !alias.scope !20010, !noalias !20009
  store i8 3, ptr %i.ae, align 8, !alias.scope !20010, !noalias !20009
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ady) #46, !noalias !20011
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i209.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i209.i.i.i: ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !20009
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit211.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit211.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i209.i.i.i, %bb.hg, %bb.he
  store ptr %.sroa.12640.01040.i.i.i, ptr %i.ado, align 8, !noalias !19918
  store i64 2, ptr %i.adp, align 8, !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12636.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 688
  %.pre1082.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !19940, !noalias !19941
  %.phi.trans.insert1083.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.pre1084.i.i.i = load ptr, ptr %.phi.trans.insert1083.i.i.i, align 8, !alias.scope !19940, !noalias !19941
  br label %bb.ex

bb.hk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit205.thread.i.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6692.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6692.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.adz, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0689.i.i.i)
  %i.aea = getelementptr inbounds nuw i8, ptr %1, i64 696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0689.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aea, i64 32, i1 false), !noalias !19918
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20012)
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.aed = load i64, ptr %i.aec, align 8, !range !119, !alias.scope !20012, !noalias !19918, !noundef !80 ; 2 uses
  %i.aee = icmp eq i64 %i.aed, -1
  br i1 %i.aee, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.experimental.noalias.scope.decl(metadata !20013)
  %.not.i.i212.i.i.i = icmp eq i64 %i.aed, 2
  br i1 %.not.i.i212.i.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aec) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i

bb.hn:                                            ; preds = %bb.hl
  call void @llvm.experimental.noalias.scope.decl(metadata !20014)
  %.val.i.i.i213.i.i.i = load ptr, ptr %i.aeb, align 8, !alias.scope !20015, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !20016
  %i.aef = ptrtoint ptr %.val.i.i.i213.i.i.i to i64 ; 2 uses
  %i.aeg = and i64 %i.aef, 3
  switch i64 %i.aeg, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i214.i.i.i
    i64 3, label %bb.ho
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i214.i.i.i
    i64 1, label %bb.hp
  ], !prof !111

bb.ho:                                            ; preds = %bb.hn
  %i.aeh = icmp ult ptr %.val.i.i.i213.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aei = and i64 %i.aef, 1095216660480
  %i.aej = icmp ne i64 %i.aei, 1095216660480
  call void @llvm.assume(i1 %i.aeh)
  call void @llvm.assume(i1 %i.aej)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i214.i.i.i

bb.hp:                                            ; preds = %bb.hn
  %i.aek = getelementptr i8, ptr %.val.i.i.i213.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aek) ]
  %i.ael = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.aek, ptr %i.ael, align 8, !alias.scope !20017, !noalias !20016
  store i8 3, ptr %i.ad, align 8, !alias.scope !20017, !noalias !20016
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ael) #46, !noalias !20018
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i214.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i214.i.i.i: ; preds = %bb.hp, %bb.ho, %bb.hn, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !20016
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i214.i.i.i, %bb.hm, %bb.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aeb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0689.i.i.i, i64 32, i1 false), !noalias !19918
  store i64 %.sroa.0638.0.copyload639.i.i.i, ptr %i.aec, align 8, !noalias !19918
  %.sroa.5691.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %.sroa.12640.0.copyload642.i.i.i, ptr %.sroa.5691.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.6692.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6692.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6692.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0689.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6692.i.i.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.thread.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.thread.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.i.i.i, %bb.ex
  %i.aem = phi ptr [ %i.vu, %bb.ex ], [ %i.acy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i ], [ %i.vu, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.i.i.i ]
  %i.aen = phi ptr [ %i.vv, %bb.ex ], [ %i.acz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i ], [ %i.vv, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.i.i.i ]
  %i.aeo = phi ptr [ %i.vw, %bb.ex ], [ %i.ada, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i ], [ %i.vw, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.i.i.i ]
  %i.aep = phi ptr [ %i.vx, %bb.ex ], [ %i.adb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i ], [ %i.vx, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.i.i.i ]
  %i.aeq = phi ptr [ %i.vy, %bb.ex ], [ %i.adc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i ], [ %i.vy, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.i.i.i ]
  %.sroa.4694.0.copyload1088.i.i.i = phi i64 [ %.sroa.4694.0.copyload1089.i.i.i, %bb.ex ], [ %.sroa.0638.0.copyload639.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit216.i.i.i ], [ %.sroa.4694.0.copyload1089.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12636.i.i.i)
  %i.aer = getelementptr i8, ptr %1, i64 680
  %.val99.i.i.i = load i64, ptr %i.aer, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.aes = icmp eq i64 %.val99.i.i.i, 0
  br i1 %i.aes, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit217.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.thread.i.i.i
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val98.i.i.i = load ptr, ptr %i.aet, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.aeu = shl nuw i64 %.val99.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i.i.i, i64 noundef %i.aeu, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20019
  %.sroa.4694.0..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.sroa.4694.0.copyload.pre.i.i.i = load i64, ptr %.sroa.4694.0..sroa_idx.phi.trans.insert.i.i.i, align 8, !noalias !19918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit217.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit217.i.i.i: ; preds = %bb.hq, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.thread.i.i.i
  %.sroa.4694.0.copyload.i.i.i = phi i64 [ %.sroa.4694.0.copyload1088.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.thread.i.i.i ], [ %.sroa.4694.0.copyload.pre.i.i.i, %bb.hq ] ; 2 uses
  %.not.i218.i.i.i = icmp eq i64 %.sroa.4694.0.copyload.i.i.i, -1
  br i1 %.not.i218.i.i.i, label %bb.hr, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i, !prof !92

bb.hr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit217.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @649, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @655) #56, !noalias !20020
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit219.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit217.i.i.i
  %.sroa.5697.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.0693.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aev, align 8, !noalias !19918
  %i.aew = load <2 x ptr>, ptr %.sroa.5697.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.5697.sroa.4.0..sroa.5697.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.19.sroa.7.i.sroa.9.0.copyload87.i.i = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.5697.sroa.4.0..sroa.5697.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !19918
  br label %bb.gf

bb.hs:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit135.i.i.i
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i16 %.sroa.0634.0.copyload635.i.i.i, ptr %i.aex, align 8, !noalias !19918
  %.sroa.12636.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12636.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12636.i.i.i, i64 30, i1 false), !noalias !19918
  %5 = trunc nuw i16 %.sroa.0634.0.copyload635.i.i.i to i8
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.aez = load ptr, ptr %i.aey, align 8, !noalias !19918, !nonnull !80, !align !86, !noundef !80
  %6 = and i8 %5, 1
  %.sroa.7658.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store ptr %i.aez, ptr %.sroa.7658.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8659.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store i8 0, ptr %.sroa.8659.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.9660.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1217
  store i8 %6, ptr %.sroa.9660.0..sroa_idx.i.i.i, align 1, !noalias !19918
  br label %bb.gv

bb.ht:                                            ; preds = %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12636.i.i.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i

bb.hu:                                            ; preds = %bb.gv
  %.sroa.3663.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.3663.0.copyload.i.i.i = load ptr, ptr %.sroa.3663.0..sroa_idx.i.i.i, align 8, !noalias !19918 ; 5 uses
  %.sroa.5664.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5664.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5664.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !19918
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.afb = load i8, ptr %i.afa, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i220.i.i.i = icmp eq i8 %i.afb, 3
  br i1 %cond.i220.i.i.i, label %bb.hv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit228.i.i.i

bb.hv:                                            ; preds = %bb.hu
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 1201
  %i.afd = load i8, ptr %i.afc, align 1, !range !114, !noalias !19918, !noundef !80
  %cond.i.i221.i.i.i = icmp eq i8 %i.afd, 3
  br i1 %cond.i.i221.i.i.i, label %bb.hw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit228.i.i.i

bb.hw:                                            ; preds = %bb.hv
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.aff = load i8, ptr %i.afe, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i.i.i222.i.i.i = icmp eq i8 %i.aff, 3
  br i1 %cond.i.i.i222.i.i.i, label %bb.hx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit228.i.i.i

bb.hx:                                            ; preds = %bb.hw
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.val.i.i.i223.i.i.i = load i16, ptr %i.afg, align 8, !range !128, !noalias !19918, !noundef !80
  %i.afh = getelementptr i8, ptr %1, i64 1144
  %.val1.i.i.i224.i.i.i = load ptr, ptr %i.afh, align 8, !noalias !19918 ; 4 uses
  %cond.i.i.i.i.i225.i.i.i = icmp eq i16 %.val.i.i.i223.i.i.i, -1
  br i1 %cond.i.i.i.i.i225.i.i.i, label %bb.hy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit228.i.i.i

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i224.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !20021
  %i.afi = ptrtoint ptr %.val1.i.i.i224.i.i.i to i64 ; 2 uses
  %i.afj = and i64 %i.afi, 3
  switch i64 %i.afj, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i226.i.i.i
    i64 3, label %bb.hz
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i226.i.i.i
    i64 1, label %bb.ia
  ], !prof !111

bb.hz:                                            ; preds = %bb.hy
  %i.afk = icmp ult ptr %.val1.i.i.i224.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.afl = and i64 %i.afi, 1095216660480
  %i.afm = icmp ne i64 %i.afl, 1095216660480
  call void @llvm.assume(i1 %i.afk)
  call void @llvm.assume(i1 %i.afm)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i226.i.i.i

bb.ia:                                            ; preds = %bb.hy
  %i.afn = getelementptr i8, ptr %.val1.i.i.i224.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afn) ]
  %i.afo = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.afn, ptr %i.afo, align 8, !alias.scope !20022, !noalias !20021
  store i8 3, ptr %i.ac, align 8, !alias.scope !20022, !noalias !20021
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.afo) #46, !noalias !20023
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i226.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i226.i.i.i: ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !20021
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit228.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit228.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i226.i.i.i, %bb.hx, %bb.hw, %bb.hv, %bb.hu
  %i.afp = icmp eq i64 %i.acm, 2
  br i1 %i.afp, label %bb.ib, label %.thread1181.i.i.i

bb.ib:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit228.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3663.0.copyload.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12636.i.i.i)
  %i.afq = getelementptr i8, ptr %1, i64 680
  %.val97.i.i.i = load i64, ptr %i.afq, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.afr = icmp eq i64 %.val97.i.i.i, 0
  br i1 %i.afr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit230.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val96.i.i.i = load ptr, ptr %i.afs, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.aft = shl nuw i64 %.val97.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i.i.i, i64 noundef %i.aft, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20024
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit230.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit230.i.i.i: ; preds = %bb.ic, %bb.ib
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.experimental.noalias.scope.decl(metadata !20025)
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.afw = load i64, ptr %i.afv, align 8, !range !119, !alias.scope !20025, !noalias !19918, !noundef !80 ; 2 uses
  %i.afx = icmp eq i64 %i.afw, -1
  br i1 %i.afx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i, label %bb.id

bb.id:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit230.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20026)
  %.not.i.i231.i.i.i = icmp eq i64 %i.afw, 2
  br i1 %.not.i.i231.i.i.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.afv) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

bb.if:                                            ; preds = %bb.id
  call void @llvm.experimental.noalias.scope.decl(metadata !20027)
  %.val.i.i.i232.i.i.i = load ptr, ptr %i.afu, align 8, !alias.scope !20028, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !20029
  %i.afy = ptrtoint ptr %.val.i.i.i232.i.i.i to i64 ; 2 uses
  %i.afz = and i64 %i.afy, 3
  switch i64 %i.afz, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i233.i.i.i
    i64 3, label %bb.ig
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i233.i.i.i
    i64 1, label %bb.ih
  ], !prof !111

bb.ig:                                            ; preds = %bb.if
  %i.aga = icmp ult ptr %.val.i.i.i232.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.agb = and i64 %i.afy, 1095216660480
  %i.agc = icmp ne i64 %i.agb, 1095216660480
  call void @llvm.assume(i1 %i.aga)
  call void @llvm.assume(i1 %i.agc)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i233.i.i.i

bb.ih:                                            ; preds = %bb.if
  %i.agd = getelementptr i8, ptr %.val.i.i.i232.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agd) ]
  %i.age = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.agd, ptr %i.age, align 8, !alias.scope !20030, !noalias !20029
  store i8 3, ptr %i.ab, align 8, !alias.scope !20030, !noalias !20029
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.age) #46, !noalias !20031
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i233.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i233.i.i.i: ; preds = %bb.ih, %bb.ig, %bb.if, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !20029
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

.thread1181.i.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit228.i.i.i
  %.sroa.5667.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5667.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5664.i.i.i, i64 16, i1 false), !noalias !19918
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 3 uses
  store i64 %i.acm, ptr %i.agf, align 8, !noalias !19918
  %.sroa.4666.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %.sroa.3663.0.copyload.i.i.i, ptr %.sroa.4666.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %i.agg = getelementptr inbounds nuw i8, ptr %1, i64 696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acl, ptr noundef nonnull align 8 dereferenceable(32) %i.agg, i64 32, i1 false), !noalias !19918
  %.sroa.6674.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store ptr %i.agf, ptr %.sroa.6674.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8676.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1176 ; 2 uses
  store i8 0, ptr %.sroa.8676.0..sroa_idx.i.i.i, align 8, !noalias !19918
  br label %bb.gy

bb.ii:                                            ; preds = %bb.jf, %bb.cv
  %i.agh = phi ptr [ %i.ww, %bb.jf ], [ %i.ok, %bb.cv ] ; 5 uses
  %i.agi = phi ptr [ %i.wx, %bb.jf ], [ %i.oj, %bb.cv ] ; 4 uses
  %i.agj = phi ptr [ %i.wy, %bb.jf ], [ %.phi.trans.insert.i20, %bb.cv ] ; 5 uses
  %i.agk = phi ptr [ %i.wz, %bb.jf ], [ %.phi.trans.insert.i.i, %bb.cv ] ; 5 uses
  %i.agl = phi ptr [ %i.xa, %bb.jf ], [ %i.pv, %bb.cv ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !19918
  %i.agm = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 2 uses
  call fastcc void @_RNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0Csa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.au, ptr noundef nonnull align 8 %i.agm) #54, !noalias !19919
  %i.agn = load i64, ptr %i.au, align 8, !range !119, !noalias !19918, !noundef !80 ; 3 uses
  %i.ago = icmp eq i64 %i.agn, -1
  br i1 %i.ago, label %bb.ji, label %bb.jj

bb.ij:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12708.i.i.i)
  %.phi.trans.insert1112.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1176 ; 3 uses
  %.pre1113.i.i.i = load i8, ptr %.phi.trans.insert1112.i.i.i, align 8, !range !114, !noalias !19918
  switch i8 %.pre1113.i.i.i, label %bb.ik [
    i8 0, label %._crit_edge162.i.i
    i8 1, label %bb.io
    i8 3, label %bb.im
  ]

._crit_edge162.i.i:                               ; preds = %bb.ij
  %.phi.trans.insert163.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %.pre164.i.i = load ptr, ptr %.phi.trans.insert163.i.i, align 8, !noalias !19918
  br label %bb.il

bb.ik:                                            ; preds = %bb.ij
  unreachable

bb.il:                                            ; preds = %.thread1182.i.i.i, %._crit_edge162.i.i
  %i.agp = phi ptr [ %i.agh, %.thread1182.i.i.i ], [ %i.ok, %._crit_edge162.i.i ]
  %i.agq = phi ptr [ %i.agi, %.thread1182.i.i.i ], [ %i.oj, %._crit_edge162.i.i ]
  %i.agr = phi ptr [ %i.agj, %.thread1182.i.i.i ], [ %.phi.trans.insert.i20, %._crit_edge162.i.i ]
  %i.ags = phi ptr [ %i.agk, %.thread1182.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge162.i.i ]
  %i.agt = phi ptr [ %i.agl, %.thread1182.i.i.i ], [ %i.pv, %._crit_edge162.i.i ]
  %i.agu = phi ptr [ %i.aky, %.thread1182.i.i.i ], [ %.pre164.i.i, %._crit_edge162.i.i ]
  %i.agv = phi ptr [ %.sroa.8748.0..sroa_idx.i.i.i, %.thread1182.i.i.i ], [ %.phi.trans.insert1112.i.i.i, %._crit_edge162.i.i ]
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 1136
  store ptr %i.agu, ptr %i.agx, align 8, !noalias !19918, !captures !173
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 1144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agy, ptr noundef nonnull align 8 dereferenceable(32) %i.agw, i64 32, i1 false), !noalias !19918
end_hunk_1
begin_hunk_2_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB6_14DnsClientCache10lookup_dns00Csa7TLgTh0CeG_9ssmanager:bb.a
_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit254.i.i.i: ; preds = %bb.iq, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i249.i.i.i, %bb.ip
  %.sroa.05.0.i251.i.i.i = phi ptr [ %i.ahk, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i249.i.i.i ], [ %i.ahl, %bb.iq ], [ %.sroa.6.sroa.5.0.copyload.i241.i.i.i, %bb.ip ]
  store i8 1, ptr %i.ahe, align 8, !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !19918
  %i.ahm = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ahm, i64 32, i1 false), !noalias !19918
  call void @llvm.experimental.noalias.scope.decl(metadata !20039)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at) #46, !noalias !20040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !19918
  br label %bb.ir

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit261.thread.i.i.i: ; preds = %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i249.i.i.i
  store i8 1, ptr %i.ahe, align 8, !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !19918
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ahn, i64 32, i1 false), !noalias !19918
  %.sroa.0710.0.copyload711.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !20041, !noalias !19918 ; 3 uses
  %.sroa.12712.0..sroa_idx713.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.12712.0.copyload714.i.i.i = load ptr, ptr %.sroa.12712.0..sroa_idx713.i.i.i, align 8, !alias.scope !20041, !noalias !19918 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !19918
  %i.aho = icmp eq i64 %.sroa.0710.0.copyload711.i.i.i, 2
  br i1 %i.aho, label %bb.ir, label %bb.ix

bb.ir:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit261.thread.i.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit254.i.i.i
  %.sroa.12712.01048.i.i.i = phi ptr [ %.sroa.05.0.i251.i.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit254.i.i.i ], [ %.sroa.12712.0.copyload714.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit261.thread.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12712.01048.i.i.i) ]
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20042)
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.ahr = load i64, ptr %i.ahq, align 8, !range !119, !alias.scope !20042, !noalias !19918, !noundef !80 ; 2 uses
  %i.ahs = icmp eq i64 %i.ahr, -1
  br i1 %i.ahs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit267.i.i.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call void @llvm.experimental.noalias.scope.decl(metadata !20043)
  %.not.i.i263.i.i.i = icmp eq i64 %i.ahr, 2
  br i1 %.not.i.i263.i.i.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ahq) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit267.i.i.i

bb.iu:                                            ; preds = %bb.is
  call void @llvm.experimental.noalias.scope.decl(metadata !20044)
  %.val.i.i.i264.i.i.i = load ptr, ptr %i.ahp, align 8, !alias.scope !20045, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !20046
  %i.aht = ptrtoint ptr %.val.i.i.i264.i.i.i to i64 ; 2 uses
  %i.ahu = and i64 %i.aht, 3
  switch i64 %i.ahu, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i265.i.i.i
    i64 3, label %bb.iv
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i265.i.i.i
    i64 1, label %bb.iw
  ], !prof !111

bb.iv:                                            ; preds = %bb.iu
  %i.ahv = icmp ult ptr %.val.i.i.i264.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ahw = and i64 %i.aht, 1095216660480
  %i.ahx = icmp ne i64 %i.ahw, 1095216660480
  call void @llvm.assume(i1 %i.ahv)
  call void @llvm.assume(i1 %i.ahx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i265.i.i.i

bb.iw:                                            ; preds = %bb.iu
  %i.ahy = getelementptr i8, ptr %.val.i.i.i264.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahy) ]
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ahy, ptr %i.ahz, align 8, !alias.scope !20047, !noalias !20046
  store i8 3, ptr %i.z, align 8, !alias.scope !20047, !noalias !20046
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ahz) #46, !noalias !20048
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i265.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i265.i.i.i: ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !20046
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit267.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit267.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i265.i.i.i, %bb.it, %bb.ir
  store ptr %.sroa.12712.01048.i.i.i, ptr %i.ahp, align 8, !noalias !19918
  store i64 2, ptr %i.ahq, align 8, !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12708.i.i.i)
  %.phi.trans.insert1108.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 752
  %.pre1109.i.i.i = load ptr, ptr %.phi.trans.insert1108.i.i.i, align 8, !alias.scope !19946, !noalias !19947
  %.phi.trans.insert1110.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 736
  %.pre1111.i.i.i = load ptr, ptr %.phi.trans.insert1110.i.i.i, align 8, !alias.scope !19946, !noalias !19947
  br label %bb.fb

bb.ix:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit261.thread.i.i.i
  %i.aia = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6764.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6764.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aia, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0761.i.i.i)
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0761.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aib, i64 32, i1 false), !noalias !19918
  %i.aic = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20049)
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.aie = load i64, ptr %i.aid, align 8, !range !119, !alias.scope !20049, !noalias !19918, !noundef !80 ; 2 uses
  %i.aif = icmp eq i64 %i.aie, -1
  br i1 %i.aif, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.experimental.noalias.scope.decl(metadata !20050)
  %.not.i.i268.i.i.i = icmp eq i64 %i.aie, 2
  br i1 %.not.i.i268.i.i.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aid) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i

bb.ja:                                            ; preds = %bb.iy
  call void @llvm.experimental.noalias.scope.decl(metadata !20051)
  %.val.i.i.i269.i.i.i = load ptr, ptr %i.aic, align 8, !alias.scope !20052, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !20053
  %i.aig = ptrtoint ptr %.val.i.i.i269.i.i.i to i64 ; 2 uses
  %i.aih = and i64 %i.aig, 3
  switch i64 %i.aih, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i270.i.i.i
    i64 3, label %bb.jb
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i270.i.i.i
    i64 1, label %bb.jc
  ], !prof !111

bb.jb:                                            ; preds = %bb.ja
  %i.aii = icmp ult ptr %.val.i.i.i269.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aij = and i64 %i.aig, 1095216660480
  %i.aik = icmp ne i64 %i.aij, 1095216660480
  call void @llvm.assume(i1 %i.aii)
  call void @llvm.assume(i1 %i.aik)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i270.i.i.i

bb.jc:                                            ; preds = %bb.ja
  %i.ail = getelementptr i8, ptr %.val.i.i.i269.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ail) ]
  %i.aim = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ail, ptr %i.aim, align 8, !alias.scope !20054, !noalias !20053
  store i8 3, ptr %i.y, align 8, !alias.scope !20054, !noalias !20053
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aim) #46, !noalias !20055
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i270.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i270.i.i.i: ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !20053
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i270.i.i.i, %bb.iz, %bb.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aic, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0761.i.i.i, i64 32, i1 false), !noalias !19918
  store i64 %.sroa.0710.0.copyload711.i.i.i, ptr %i.aid, align 8, !noalias !19918
  %.sroa.5763.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr %.sroa.12712.0.copyload714.i.i.i, ptr %.sroa.5763.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.6764.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6764.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6764.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0761.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6764.i.i.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.thread.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.thread.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.i.i.i, %bb.fb
  %i.ain = phi ptr [ %i.ww, %bb.fb ], [ %i.agz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i ], [ %i.ww, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.i.i.i ] ; 2 uses
  %i.aio = phi ptr [ %i.wx, %bb.fb ], [ %i.aha, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i ], [ %i.wx, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.i.i.i ] ; 2 uses
  %i.aip = phi ptr [ %i.wy, %bb.fb ], [ %i.ahb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i ], [ %i.wy, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.i.i.i ] ; 2 uses
  %i.aiq = phi ptr [ %i.wz, %bb.fb ], [ %i.ahc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i ], [ %i.wz, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.i.i.i ] ; 2 uses
  %i.air = phi ptr [ %i.xa, %bb.fb ], [ %i.ahd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i ], [ %i.xa, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.i.i.i ] ; 2 uses
  %.sroa.4766.0.copyload1115.i.i.i = phi i64 [ %.sroa.4766.0.copyload1116.i.i.i, %bb.fb ], [ %.sroa.0710.0.copyload711.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit272.i.i.i ], [ %.sroa.4766.0.copyload1116.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12708.i.i.i)
  %i.ais = getelementptr i8, ptr %1, i64 744
  %.val95.i.i.i = load i64, ptr %i.ais, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.ait = icmp eq i64 %.val95.i.i.i, 0
  br i1 %i.ait, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit273.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.thread.i.i.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %1, i64 728
  %.val94.i.i.i = load ptr, ptr %i.aiu, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.aiv = shl nuw i64 %.val95.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val94.i.i.i, i64 noundef %i.aiv, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20056
  %.sroa.4766.0..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.sroa.4766.0.copyload.pre.i.i.i = load i64, ptr %.sroa.4766.0..sroa_idx.phi.trans.insert.i.i.i, align 8, !noalias !19918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit273.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit273.i.i.i: ; preds = %bb.jd, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.thread.i.i.i
  %.sroa.4766.0.copyload.i.i.i = phi i64 [ %.sroa.4766.0.copyload1115.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.thread.i.i.i ], [ %.sroa.4766.0.copyload.pre.i.i.i, %bb.jd ] ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.sroa.0765.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aiw, align 8, !noalias !19918 ; 3 uses
  %.not.i274.i.i.i = icmp eq i64 %.sroa.4766.0.copyload.i.i.i, -1
  br i1 %.not.i274.i.i.i, label %bb.je, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i, !prof !92

bb.je:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit273.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @649, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @655) #56, !noalias !20057
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit273.i.i.i
  %.sroa.5769.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.aix = load <2 x ptr>, ptr %.sroa.5769.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.5769.sroa.4.0..sroa.5769.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.sroa.19.sroa.7.i.sroa.9.0.copyload86.i.i = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.5769.sroa.4.0..sroa.5769.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !19918
  %i.aiy = icmp eq i64 %.sroa.4766.0.copyload.i.i.i, 2
  br i1 %i.aiy, label %bb.jg, label %bb.gf

bb.jf:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit147.i.i.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 760
  store i16 %.sroa.0706.0.copyload707.i.i.i, ptr %i.aiz, align 8, !noalias !19918
  %.sroa.12708.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12708.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12708.i.i.i, i64 30, i1 false), !noalias !19918
  %7 = trunc nuw i16 %.sroa.0706.0.copyload707.i.i.i to i8
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.ajb = load ptr, ptr %i.aja, align 8, !noalias !19918, !nonnull !80, !align !86, !noundef !80
  %8 = and i8 %7, 1
  %.sroa.7730.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store ptr %i.ajb, ptr %.sroa.7730.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8731.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store i8 0, ptr %.sroa.8731.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.9732.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1217
  store i8 %8, ptr %.sroa.9732.0..sroa_idx.i.i.i, align 1, !noalias !19918
  br label %bb.ii

bb.jg:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit275.i.i.i
  %i.ajc = getelementptr inbounds nuw i8, ptr %1, i64 1048
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0765.sroa.0.0.copyload.i.i.i) ]
  store ptr %.sroa.0765.sroa.0.0.copyload.i.i.i, ptr %i.ajc, align 8, !noalias !19918
  %i.ajd = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i64 -1, ptr %i.ajd, align 8, !noalias !19918
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 1090
  store i8 0, ptr %i.aje, align 2, !noalias !19918
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %.sroa.0775.0.copyload.i.i.i = load i64, ptr %i.ajf, align 8, !noalias !19918
  %.sroa.4776.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %.sroa.4776.0.copyload.i.i.i = load ptr, ptr %.sroa.4776.0..sroa_idx.i.i.i, align 8, !noalias !19918, !nonnull !80, !noundef !80 ; 4 uses
  %.sroa.5777.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %.sroa.5777.0.copyload.i.i.i = load i64, ptr %.sroa.5777.0..sroa_idx.i.i.i, align 8, !noalias !19918 ; 2 uses
  %i.ajg = icmp ult i64 %.sroa.5777.0.copyload.i.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.ajg)
  %i.ajh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.4776.0.copyload.i.i.i, i64 %.sroa.5777.0.copyload.i.i.i ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 792
  store ptr %.sroa.4776.0.copyload.i.i.i, ptr %i.aji, align 8, !noalias !19918
  %.sroa.9772.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 800
  store ptr %.sroa.4776.0.copyload.i.i.i, ptr %.sroa.9772.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.10773.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 808
  store i64 %.sroa.0775.0.copyload.i.i.i, ptr %.sroa.10773.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.11774.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 816
  store ptr %i.ajh, ptr %.sroa.11774.0..sroa_idx.i.i.i, align 8, !noalias !19918
  br label %bb.jh

bb.jh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i, %bb.jg
  %i.ajj = phi ptr [ %i.als, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i ], [ %i.ain, %bb.jg ] ; 3 uses
  %i.ajk = phi ptr [ %i.alt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i ], [ %i.aio, %bb.jg ] ; 3 uses
  %i.ajl = phi ptr [ %i.alu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i ], [ %i.aip, %bb.jg ] ; 3 uses
  %i.ajm = phi ptr [ %i.alv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i ], [ %i.aiq, %bb.jg ] ; 3 uses
  %i.ajn = phi ptr [ %i.alw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i ], [ %i.air, %bb.jg ] ; 3 uses
  %.sroa.4838.0.copyload1125.i.i.i = phi i64 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i ], [ -1, %bb.jg ] ; 2 uses
  %i.ajo = phi ptr [ %.pre1120.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i ], [ %.sroa.4776.0.copyload.i.i.i, %bb.jg ] ; 4 uses
  %i.ajp = phi ptr [ %.pre1118.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i ], [ %i.ajh, %bb.jg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12780.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !20058)
  %i.ajq = icmp eq ptr %i.ajo, %i.ajp
  br i1 %i.ajq, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.thread.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i: ; preds = %bb.jh
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajo, i64 32
  store ptr %i.ajs, ptr %i.ajr, align 8, !alias.scope !20058, !noalias !20059
  %.sroa.0778.0.copyload779.i.i.i = load i16, ptr %i.ajo, align 4, !noalias !20060 ; 3 uses
  %.sroa.12780.0..sroa_idx781.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajo, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12780.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12780.0..sroa_idx781.i.i.i, i64 30, i1 false), !noalias !20060
  %.not80.i.i.i = icmp eq i16 %.sroa.0778.0.copyload779.i.i.i, 2
  br i1 %.not80.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.thread.i.i.i, label %bb.kw

bb.ji:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12708.i.i.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i

bb.jj:                                            ; preds = %bb.ii
  %.sroa.3735.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.3735.0.copyload.i.i.i = load ptr, ptr %.sroa.3735.0..sroa_idx.i.i.i, align 8, !noalias !19918 ; 5 uses
  %.sroa.5736.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5736.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5736.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !19918
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.aju = load i8, ptr %i.ajt, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i282.i.i.i = icmp eq i8 %i.aju, 3
  br i1 %cond.i282.i.i.i, label %bb.jk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit290.i.i.i

bb.jk:                                            ; preds = %bb.jj
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 1201
  %i.ajw = load i8, ptr %i.ajv, align 1, !range !114, !noalias !19918, !noundef !80
  %cond.i.i283.i.i.i = icmp eq i8 %i.ajw, 3
  br i1 %cond.i.i283.i.i.i, label %bb.jl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit290.i.i.i

bb.jl:                                            ; preds = %bb.jk
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.ajy = load i8, ptr %i.ajx, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i.i.i284.i.i.i = icmp eq i8 %i.ajy, 3
  br i1 %cond.i.i.i284.i.i.i, label %bb.jm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit290.i.i.i

bb.jm:                                            ; preds = %bb.jl
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.val.i.i.i285.i.i.i = load i16, ptr %i.ajz, align 8, !range !128, !noalias !19918, !noundef !80
  %i.aka = getelementptr i8, ptr %1, i64 1144
  %.val1.i.i.i286.i.i.i = load ptr, ptr %i.aka, align 8, !noalias !19918 ; 4 uses
  %cond.i.i.i.i.i287.i.i.i = icmp eq i16 %.val.i.i.i285.i.i.i, -1
  br i1 %cond.i.i.i.i.i287.i.i.i, label %bb.jn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit290.i.i.i

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i286.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !20061
  %i.akb = ptrtoint ptr %.val1.i.i.i286.i.i.i to i64 ; 2 uses
  %i.akc = and i64 %i.akb, 3
  switch i64 %i.akc, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i288.i.i.i
    i64 3, label %bb.jo
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i288.i.i.i
    i64 1, label %bb.jp
  ], !prof !111

bb.jo:                                            ; preds = %bb.jn
  %i.akd = icmp ult ptr %.val1.i.i.i286.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ake = and i64 %i.akb, 1095216660480
  %i.akf = icmp ne i64 %i.ake, 1095216660480
  call void @llvm.assume(i1 %i.akd)
  call void @llvm.assume(i1 %i.akf)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i288.i.i.i

bb.jp:                                            ; preds = %bb.jn
  %i.akg = getelementptr i8, ptr %.val1.i.i.i286.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akg) ]
  %i.akh = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.akg, ptr %i.akh, align 8, !alias.scope !20062, !noalias !20061
  store i8 3, ptr %i.x, align 8, !alias.scope !20062, !noalias !20061
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akh) #46, !noalias !20063
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i288.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i288.i.i.i: ; preds = %bb.jp, %bb.jo, %bb.jn, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !20061
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit290.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit290.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i288.i.i.i, %bb.jm, %bb.jl, %bb.jk, %bb.jj
  %i.aki = icmp eq i64 %i.agn, 2
  br i1 %i.aki, label %bb.jq, label %.thread1182.i.i.i

bb.jq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit290.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3735.0.copyload.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12708.i.i.i)
  %i.akj = getelementptr i8, ptr %1, i64 744
  %.val93.i.i.i = load i64, ptr %i.akj, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.akk = icmp eq i64 %.val93.i.i.i, 0
  br i1 %i.akk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit292.i.i.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.akl = getelementptr inbounds nuw i8, ptr %1, i64 728
  %.val92.i.i.i = load ptr, ptr %i.akl, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.akm = shl nuw i64 %.val93.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val92.i.i.i, i64 noundef %i.akm, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20064
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit292.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit292.i.i.i: ; preds = %bb.jr, %bb.jq
  %i.akn = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.experimental.noalias.scope.decl(metadata !20065)
  %i.ako = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.akp = load i64, ptr %i.ako, align 8, !range !119, !alias.scope !20065, !noalias !19918, !noundef !80 ; 2 uses
  %i.akq = icmp eq i64 %i.akp, -1
  br i1 %i.akq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i, label %bb.js

bb.js:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit292.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20066)
  %.not.i.i293.i.i.i = icmp eq i64 %i.akp, 2
  br i1 %.not.i.i293.i.i.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ako) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

bb.ju:                                            ; preds = %bb.js
  call void @llvm.experimental.noalias.scope.decl(metadata !20067)
  %.val.i.i.i294.i.i.i = load ptr, ptr %i.akn, align 8, !alias.scope !20068, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !20069
  %i.akr = ptrtoint ptr %.val.i.i.i294.i.i.i to i64 ; 2 uses
  %i.aks = and i64 %i.akr, 3
  switch i64 %i.aks, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i295.i.i.i
    i64 3, label %bb.jv
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i295.i.i.i
    i64 1, label %bb.jw
  ], !prof !111

bb.jv:                                            ; preds = %bb.ju
  %i.akt = icmp ult ptr %.val.i.i.i294.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aku = and i64 %i.akr, 1095216660480
  %i.akv = icmp ne i64 %i.aku, 1095216660480
  call void @llvm.assume(i1 %i.akt)
  call void @llvm.assume(i1 %i.akv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i295.i.i.i

bb.jw:                                            ; preds = %bb.ju
  %i.akw = getelementptr i8, ptr %.val.i.i.i294.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akw) ]
  %i.akx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.akw, ptr %i.akx, align 8, !alias.scope !20070, !noalias !20069
  store i8 3, ptr %i.w, align 8, !alias.scope !20070, !noalias !20069
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akx) #46, !noalias !20071
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i295.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i295.i.i.i: ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !20069
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

.thread1182.i.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit290.i.i.i
  %.sroa.5739.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5739.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5736.i.i.i, i64 16, i1 false), !noalias !19918
  %i.aky = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 3 uses
  store i64 %i.agn, ptr %i.aky, align 8, !noalias !19918
  %.sroa.4738.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %.sroa.3735.0.copyload.i.i.i, ptr %.sroa.4738.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 760
end_hunk_2
begin_hunk_3_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB6_14DnsClientCache10lookup_dns00Csa7TLgTh0CeG_9ssmanager:bb.a
  %.not.i.i325.i.i.i = icmp eq i64 %i.amk, 2
  br i1 %.not.i.i325.i.i.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.amj) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i

bb.kj:                                            ; preds = %bb.kh
  call void @llvm.experimental.noalias.scope.decl(metadata !20084)
  %.val.i.i.i326.i.i.i = load ptr, ptr %i.ami, align 8, !alias.scope !20085, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !20086
  %i.amm = ptrtoint ptr %.val.i.i.i326.i.i.i to i64 ; 2 uses
  %i.amn = and i64 %i.amm, 3
  switch i64 %i.amn, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i327.i.i.i
    i64 3, label %bb.kk
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i327.i.i.i
    i64 1, label %bb.kl
  ], !prof !111

bb.kk:                                            ; preds = %bb.kj
  %i.amo = icmp ult ptr %.val.i.i.i326.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.amp = and i64 %i.amm, 1095216660480
  %i.amq = icmp ne i64 %i.amp, 1095216660480
  call void @llvm.assume(i1 %i.amo)
  call void @llvm.assume(i1 %i.amq)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i327.i.i.i

bb.kl:                                            ; preds = %bb.kj
  %i.amr = getelementptr i8, ptr %.val.i.i.i326.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amr) ]
  %i.ams = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.amr, ptr %i.ams, align 8, !alias.scope !20087, !noalias !20086
  store i8 3, ptr %i.u, align 8, !alias.scope !20087, !noalias !20086
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ams) #46, !noalias !20088
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i327.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i327.i.i.i: ; preds = %bb.kl, %bb.kk, %bb.kj, %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !20086
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit329.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i327.i.i.i, %bb.ki, %bb.kg
  store ptr %.sroa.12784.01058.i.i.i, ptr %i.ami, align 8, !noalias !19918
  store i64 2, ptr %i.amj, align 8, !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12780.i.i.i)
  %.phi.trans.insert1117.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 816
  %.pre1118.i.i.i = load ptr, ptr %.phi.trans.insert1117.i.i.i, align 8, !alias.scope !20058, !noalias !20059
  %.phi.trans.insert1119.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 800
  %.pre1120.i.i.i = load ptr, ptr %.phi.trans.insert1119.i.i.i, align 8, !alias.scope !20058, !noalias !20059
  br label %bb.jh

bb.km:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit323.thread.i.i.i
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6836.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6836.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.amt, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0833.i.i.i)
  %i.amu = getelementptr inbounds nuw i8, ptr %1, i64 824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0833.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.amu, i64 32, i1 false), !noalias !19918
  %i.amv = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20089)
  %i.amw = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  %i.amx = load i64, ptr %i.amw, align 8, !range !119, !alias.scope !20089, !noalias !19918, !noundef !80 ; 2 uses
  %i.amy = icmp eq i64 %i.amx, -1
  br i1 %i.amy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  call void @llvm.experimental.noalias.scope.decl(metadata !20090)
  %.not.i.i330.i.i.i = icmp eq i64 %i.amx, 2
  br i1 %.not.i.i330.i.i.i, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.amw) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i

bb.kp:                                            ; preds = %bb.kn
  call void @llvm.experimental.noalias.scope.decl(metadata !20091)
  %.val.i.i.i331.i.i.i = load ptr, ptr %i.amv, align 8, !alias.scope !20092, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20093
  %i.amz = ptrtoint ptr %.val.i.i.i331.i.i.i to i64 ; 2 uses
  %i.ana = and i64 %i.amz, 3
  switch i64 %i.ana, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i332.i.i.i
    i64 3, label %bb.kq
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i332.i.i.i
    i64 1, label %bb.kr
  ], !prof !111

bb.kq:                                            ; preds = %bb.kp
  %i.anb = icmp ult ptr %.val.i.i.i331.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.anc = and i64 %i.amz, 1095216660480
  %i.and = icmp ne i64 %i.anc, 1095216660480
  call void @llvm.assume(i1 %i.anb)
  call void @llvm.assume(i1 %i.and)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i332.i.i.i

bb.kr:                                            ; preds = %bb.kp
  %i.ane = getelementptr i8, ptr %.val.i.i.i331.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ane) ]
  %i.anf = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.ane, ptr %i.anf, align 8, !alias.scope !20094, !noalias !20093
  store i8 3, ptr %i.t, align 8, !alias.scope !20094, !noalias !20093
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.anf) #46, !noalias !20095
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i332.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i332.i.i.i: ; preds = %bb.kr, %bb.kq, %bb.kp, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20093
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i332.i.i.i, %bb.ko, %bb.km
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0833.i.i.i, i64 32, i1 false), !noalias !19918
  store i64 %.sroa.0782.0.copyload783.i.i.i, ptr %i.amw, align 8, !noalias !19918
  %.sroa.5835.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr %.sroa.12784.0.copyload786.i.i.i, ptr %.sroa.5835.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.6836.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6836.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6836.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0833.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6836.i.i.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.thread.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.thread.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i, %bb.jh
  %i.ang = phi ptr [ %i.ajj, %bb.jh ], [ %i.als, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i ], [ %i.ajj, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i ]
  %i.anh = phi ptr [ %i.ajk, %bb.jh ], [ %i.alt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i ], [ %i.ajk, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i ]
  %i.ani = phi ptr [ %i.ajl, %bb.jh ], [ %i.alu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i ], [ %i.ajl, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i ]
  %i.anj = phi ptr [ %i.ajm, %bb.jh ], [ %i.alv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i ], [ %i.ajm, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i ]
  %i.ank = phi ptr [ %i.ajn, %bb.jh ], [ %i.alw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i ], [ %i.ajn, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i ]
  %.sroa.4838.0.copyload1124.i.i.i = phi i64 [ %.sroa.4838.0.copyload1125.i.i.i, %bb.jh ], [ %.sroa.0782.0.copyload783.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit334.i.i.i ], [ %.sroa.4838.0.copyload1125.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12780.i.i.i)
  %i.anl = getelementptr i8, ptr %1, i64 808
  %.val91.i.i.i = load i64, ptr %i.anl, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.anm = icmp eq i64 %.val91.i.i.i, 0
  br i1 %i.anm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit335.i.i.i, label %bb.ks

bb.ks:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.thread.i.i.i
  %i.ann = getelementptr inbounds nuw i8, ptr %1, i64 792
  %.val90.i.i.i = load ptr, ptr %i.ann, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.ano = shl nuw i64 %.val91.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90.i.i.i, i64 noundef %i.ano, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20096
  %.sroa.4838.0..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 440
  %.sroa.4838.0.copyload.pre.i.i.i = load i64, ptr %.sroa.4838.0..sroa_idx.phi.trans.insert.i.i.i, align 8, !noalias !19918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit335.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit335.i.i.i: ; preds = %bb.ks, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.thread.i.i.i
  %.sroa.4838.0.copyload.i.i.i = phi i64 [ %.sroa.4838.0.copyload1124.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.thread.i.i.i ], [ %.sroa.4838.0.copyload.pre.i.i.i, %bb.ks ] ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.sroa.0837.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.anp, align 8, !noalias !19918
  %.sroa.5841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 448
  %.sroa.5841.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.5841.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.not.i336.i.i.i = icmp eq i64 %.sroa.4838.0.copyload.i.i.i, -1
  br i1 %.not.i336.i.i.i, label %bb.kt, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit337.i.i.i, !prof !92

bb.kt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit335.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @649, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @655) #56, !noalias !20097
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit337.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit335.i.i.i
  %.sroa.5841.sroa.4.0..sroa.5841.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 456
  %.sroa.19.sroa.7.i.sroa.0.0.copyload80.i.i = load ptr, ptr %.sroa.5841.sroa.4.0..sroa.5841.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.5841.sroa.4.0..sroa.5841.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.sroa.19.sroa.7.i.sroa.9.0.copyload85.i.i = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.5841.sroa.4.0..sroa.5841.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !19918
  %i.anq = getelementptr inbounds nuw i8, ptr %1, i64 1048
  call void @llvm.experimental.noalias.scope.decl(metadata !20098)
  %.val.i338.i.i.i = load ptr, ptr %i.anq, align 8, !alias.scope !20098, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20099
  %i.anr = ptrtoint ptr %.val.i338.i.i.i to i64   ; 2 uses
  %i.ans = and i64 %i.anr, 3
  switch i64 %i.ans, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
    i64 3, label %bb.ku
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
    i64 1, label %bb.kv
  ], !prof !111

bb.ku:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit337.i.i.i
  %i.ant = icmp ult ptr %.val.i338.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.anu = and i64 %i.anr, 1095216660480
  %i.anv = icmp ne i64 %i.anu, 1095216660480
  call void @llvm.assume(i1 %i.ant)
  call void @llvm.assume(i1 %i.anv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.kv:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit337.i.i.i
  %i.anw = getelementptr i8, ptr %.val.i338.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.anw) ]
  %i.anx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.anw, ptr %i.anx, align 8, !alias.scope !20100, !noalias !20099
  store i8 3, ptr %i.s, align 8, !alias.scope !20100, !noalias !20099
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.anx) #46, !noalias !20101
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.kv, %bb.ku, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit337.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit337.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20099
  %i.any = insertelement <2 x ptr> poison, ptr %.sroa.5841.sroa.0.0.copyload.i.i.i, i64 0
  %i.anz = insertelement <2 x ptr> %i.any, ptr %.sroa.19.sroa.7.i.sroa.0.0.copyload80.i.i, i64 1
  br label %bb.gf

bb.kw:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit281.i.i.i
  %i.aoa = getelementptr inbounds nuw i8, ptr %1, i64 824
  store i16 %.sroa.0778.0.copyload779.i.i.i, ptr %i.aoa, align 8, !noalias !19918
  %.sroa.12780.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12780.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12780.i.i.i, i64 30, i1 false), !noalias !19918
  %9 = trunc nuw i16 %.sroa.0778.0.copyload779.i.i.i to i8
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.aoc = load ptr, ptr %i.aob, align 8, !noalias !19918, !nonnull !80, !align !86, !noundef !80
  %10 = and i8 %9, 1
  %.sroa.7802.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store ptr %i.aoc, ptr %.sroa.7802.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8803.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store i8 0, ptr %.sroa.8803.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.9804.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1217
  store i8 %10, ptr %.sroa.9804.0..sroa_idx.i.i.i, align 1, !noalias !19918
  br label %bb.jx

bb.kx:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12780.i.i.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i

bb.ky:                                            ; preds = %bb.jx
  %.sroa.3807.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.3807.0.copyload.i.i.i = load ptr, ptr %.sroa.3807.0..sroa_idx.i.i.i, align 8, !noalias !19918 ; 3 uses
  %.sroa.5808.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5808.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5808.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !19918
  %i.aod = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.aoe = load i8, ptr %i.aod, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i340.i.i.i = icmp eq i8 %i.aoe, 3
  br i1 %cond.i340.i.i.i, label %bb.kz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit348.i.i.i

bb.kz:                                            ; preds = %bb.ky
  %i.aof = getelementptr inbounds nuw i8, ptr %1, i64 1201
  %i.aog = load i8, ptr %i.aof, align 1, !range !114, !noalias !19918, !noundef !80
  %cond.i.i341.i.i.i = icmp eq i8 %i.aog, 3
  br i1 %cond.i.i341.i.i.i, label %bb.la, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit348.i.i.i

bb.la:                                            ; preds = %bb.kz
  %i.aoh = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.aoi = load i8, ptr %i.aoh, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i.i.i342.i.i.i = icmp eq i8 %i.aoi, 3
  br i1 %cond.i.i.i342.i.i.i, label %bb.lb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit348.i.i.i

bb.lb:                                            ; preds = %bb.la
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.val.i.i.i343.i.i.i = load i16, ptr %i.aoj, align 8, !range !128, !noalias !19918, !noundef !80
  %i.aok = getelementptr i8, ptr %1, i64 1144
  %.val1.i.i.i344.i.i.i = load ptr, ptr %i.aok, align 8, !noalias !19918 ; 4 uses
  %cond.i.i.i.i.i345.i.i.i = icmp eq i16 %.val.i.i.i343.i.i.i, -1
  br i1 %cond.i.i.i.i.i345.i.i.i, label %bb.lc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit348.i.i.i

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i344.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20102
  %i.aol = ptrtoint ptr %.val1.i.i.i344.i.i.i to i64 ; 2 uses
  %i.aom = and i64 %i.aol, 3
  switch i64 %i.aom, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i346.i.i.i
    i64 3, label %bb.ld
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i346.i.i.i
    i64 1, label %bb.le
  ], !prof !111

bb.ld:                                            ; preds = %bb.lc
  %i.aon = icmp ult ptr %.val1.i.i.i344.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aoo = and i64 %i.aol, 1095216660480
  %i.aop = icmp ne i64 %i.aoo, 1095216660480
  call void @llvm.assume(i1 %i.aon)
  call void @llvm.assume(i1 %i.aop)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i346.i.i.i

bb.le:                                            ; preds = %bb.lc
  %i.aoq = getelementptr i8, ptr %.val1.i.i.i344.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aoq) ]
  %i.aor = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.aoq, ptr %i.aor, align 8, !alias.scope !20103, !noalias !20102
  store i8 3, ptr %i.r, align 8, !alias.scope !20103, !noalias !20102
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aor) #46, !noalias !20104
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i346.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i346.i.i.i: ; preds = %bb.le, %bb.ld, %bb.lc, %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !20102
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit348.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit348.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i346.i.i.i, %bb.lb, %bb.la, %bb.kz, %bb.ky
  %i.aos = icmp eq i64 %i.alg, 2
  br i1 %i.aos, label %bb.lf, label %.thread1183.i.i.i

bb.lf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit348.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3807.0.copyload.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12780.i.i.i)
  %i.aot = getelementptr i8, ptr %1, i64 808
  %.val89.i.i.i = load i64, ptr %i.aot, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.aou = icmp eq i64 %.val89.i.i.i, 0
  br i1 %i.aou, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit350.i.i.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 792
  %.val88.i.i.i = load ptr, ptr %i.aov, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.aow = shl nuw i64 %.val89.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val88.i.i.i, i64 noundef %i.aow, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20105
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit350.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit350.i.i.i: ; preds = %bb.lg, %bb.lf
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.experimental.noalias.scope.decl(metadata !20106)
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.aoz = load i64, ptr %i.aoy, align 8, !range !119, !alias.scope !20106, !noalias !19918, !noundef !80 ; 2 uses
  %i.apa = icmp eq i64 %i.aoz, -1
  br i1 %i.apa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit355.i.i.i, label %bb.lh

bb.lh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit350.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20107)
  %.not.i.i351.i.i.i = icmp eq i64 %i.aoz, 2
  br i1 %.not.i.i351.i.i.i, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aoy) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit355.i.i.i

bb.lj:                                            ; preds = %bb.lh
  call void @llvm.experimental.noalias.scope.decl(metadata !20108)
  %.val.i.i.i352.i.i.i = load ptr, ptr %i.aox, align 8, !alias.scope !20109, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20110
  %i.apb = ptrtoint ptr %.val.i.i.i352.i.i.i to i64 ; 2 uses
  %i.apc = and i64 %i.apb, 3
  switch i64 %i.apc, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i353.i.i.i
    i64 3, label %bb.lk
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i353.i.i.i
    i64 1, label %bb.ll
  ], !prof !111

bb.lk:                                            ; preds = %bb.lj
  %i.apd = icmp ult ptr %.val.i.i.i352.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ape = and i64 %i.apb, 1095216660480
  %i.apf = icmp ne i64 %i.ape, 1095216660480
  call void @llvm.assume(i1 %i.apd)
  call void @llvm.assume(i1 %i.apf)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i353.i.i.i

bb.ll:                                            ; preds = %bb.lj
  %i.apg = getelementptr i8, ptr %.val.i.i.i352.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.apg) ]
  %i.aph = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.apg, ptr %i.aph, align 8, !alias.scope !20111, !noalias !20110
  store i8 3, ptr %i.q, align 8, !alias.scope !20111, !noalias !20110
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aph) #46, !noalias !20112
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i353.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i353.i.i.i: ; preds = %bb.ll, %bb.lk, %bb.lj, %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !20110
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit355.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit355.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i353.i.i.i, %bb.li, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit350.i.i.i
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 1048
  call void @llvm.experimental.noalias.scope.decl(metadata !20113)
  %.val.i356.i.i.i = load ptr, ptr %i.api, align 8, !alias.scope !20113, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20114
  %i.apj = ptrtoint ptr %.val.i356.i.i.i to i64   ; 2 uses
  %i.apk = and i64 %i.apj, 3
  switch i64 %i.apk, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit358.i.i.i
    i64 3, label %bb.lm
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit358.i.i.i
    i64 1, label %bb.ln
  ], !prof !111

bb.lm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit355.i.i.i
  %i.apl = icmp ult ptr %.val.i356.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.apm = and i64 %i.apj, 1095216660480
  %i.apn = icmp ne i64 %i.apm, 1095216660480
  call void @llvm.assume(i1 %i.apl)
  call void @llvm.assume(i1 %i.apn)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit358.i.i.i

bb.ln:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit355.i.i.i
  %i.apo = getelementptr i8, ptr %.val.i356.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.apo) ]
  %i.app = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.apo, ptr %i.app, align 8, !alias.scope !20115, !noalias !20114
  store i8 3, ptr %i.p, align 8, !alias.scope !20115, !noalias !20114
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.app) #46, !noalias !20116
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit358.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit358.i.i.i: ; preds = %bb.ln, %bb.lm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit355.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit355.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20114
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

.thread1183.i.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit348.i.i.i
  %.sroa.5811.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5811.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5808.i.i.i, i64 16, i1 false), !noalias !19918
  %i.apq = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 3 uses
  store i64 %i.alg, ptr %i.apq, align 8, !noalias !19918
  %.sroa.4810.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %.sroa.3807.0.copyload.i.i.i, ptr %.sroa.4810.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %i.apr = getelementptr inbounds nuw i8, ptr %1, i64 824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alf, ptr noundef nonnull align 8 dereferenceable(32) %i.apr, i64 32, i1 false), !noalias !19918
  %.sroa.6818.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store ptr %i.apq, ptr %.sroa.6818.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8820.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1176 ; 2 uses
  store i8 0, ptr %.sroa.8820.0..sroa_idx.i.i.i, align 8, !noalias !19918
  br label %bb.ka

bb.lo:                                            ; preds = %bb.ml, %bb.cx
  %i.aps = phi ptr [ %i.wm, %bb.ml ], [ %i.ok, %bb.cx ] ; 5 uses
  %i.apt = phi ptr [ %i.wn, %bb.ml ], [ %i.oj, %bb.cx ] ; 4 uses
  %i.apu = phi ptr [ %i.wo, %bb.ml ], [ %.phi.trans.insert.i20, %bb.cx ] ; 5 uses
  %i.apv = phi ptr [ %i.wp, %bb.ml ], [ %.phi.trans.insert.i.i, %bb.cx ] ; 5 uses
  %i.apw = phi ptr [ %i.wq, %bb.ml ], [ %i.pv, %bb.cx ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !19918
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 2 uses
  call fastcc void @_RNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0Csa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.aq, ptr noundef nonnull align 8 %i.apx) #54, !noalias !19919
end_hunk_3
begin_hunk_4_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB6_14DnsClientCache10lookup_dns00Csa7TLgTh0CeG_9ssmanager:bb.a
_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit377.i.i.i: ; preds = %bb.lw, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i372.i.i.i, %bb.lv
  %.sroa.05.0.i374.i.i.i = phi ptr [ %i.aqv, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i372.i.i.i ], [ %i.aqw, %bb.lw ], [ %.sroa.6.sroa.5.0.copyload.i364.i.i.i, %bb.lv ]
  store i8 1, ptr %i.aqp, align 8, !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !19918
  %i.aqx = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aqx, i64 32, i1 false), !noalias !19918
  call void @llvm.experimental.noalias.scope.decl(metadata !20124)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap) #46, !noalias !20125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !19918
  br label %bb.lx

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit384.thread.i.i.i: ; preds = %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsa7TLgTh0CeG_9ssmanager.exit.us.i372.i.i.i
  store i8 1, ptr %i.aqp, align 8, !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !19918
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aqy, i64 32, i1 false), !noalias !19918
  %.sroa.0870.0.copyload871.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !20126, !noalias !19918 ; 3 uses
  %.sroa.12872.0..sroa_idx873.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.12872.0.copyload874.i.i.i = load ptr, ptr %.sroa.12872.0..sroa_idx873.i.i.i, align 8, !alias.scope !20126, !noalias !19918 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !19918
  %i.aqz = icmp eq i64 %.sroa.0870.0.copyload871.i.i.i, 2
  br i1 %i.aqz, label %bb.lx, label %bb.md

bb.lx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit384.thread.i.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit377.i.i.i
  %.sroa.12872.01066.i.i.i = phi ptr [ %.sroa.05.0.i374.i.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager.exit377.i.i.i ], [ %.sroa.12872.0.copyload874.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit384.thread.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12872.01066.i.i.i) ]
  %i.ara = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20127)
  %i.arb = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.arc = load i64, ptr %i.arb, align 8, !range !119, !alias.scope !20127, !noalias !19918, !noundef !80 ; 2 uses
  %i.ard = icmp eq i64 %i.arc, -1
  br i1 %i.ard, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit390.i.i.i, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.experimental.noalias.scope.decl(metadata !20128)
  %.not.i.i386.i.i.i = icmp eq i64 %i.arc, 2
  br i1 %.not.i.i386.i.i.i, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.arb) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit390.i.i.i

bb.ma:                                            ; preds = %bb.ly
  call void @llvm.experimental.noalias.scope.decl(metadata !20129)
  %.val.i.i.i387.i.i.i = load ptr, ptr %i.ara, align 8, !alias.scope !20130, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20131
  %i.are = ptrtoint ptr %.val.i.i.i387.i.i.i to i64 ; 2 uses
  %i.arf = and i64 %i.are, 3
  switch i64 %i.arf, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i388.i.i.i
    i64 3, label %bb.mb
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i388.i.i.i
    i64 1, label %bb.mc
  ], !prof !111

bb.mb:                                            ; preds = %bb.ma
  %i.arg = icmp ult ptr %.val.i.i.i387.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.arh = and i64 %i.are, 1095216660480
  %i.ari = icmp ne i64 %i.arh, 1095216660480
  call void @llvm.assume(i1 %i.arg)
  call void @llvm.assume(i1 %i.ari)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i388.i.i.i

bb.mc:                                            ; preds = %bb.ma
  %i.arj = getelementptr i8, ptr %.val.i.i.i387.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.arj) ]
  %i.ark = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.arj, ptr %i.ark, align 8, !alias.scope !20132, !noalias !20131
  store i8 3, ptr %i.n, align 8, !alias.scope !20132, !noalias !20131
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ark) #46, !noalias !20133
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i388.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i388.i.i.i: ; preds = %bb.mc, %bb.mb, %bb.ma, %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20131
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit390.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit390.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i388.i.i.i, %bb.lz, %bb.lx
  store ptr %.sroa.12872.01066.i.i.i, ptr %i.ara, align 8, !noalias !19918
  store i64 2, ptr %i.arb, align 8, !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12868.i.i.i)
  %.phi.trans.insert1090.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 880
  %.pre1091.i.i.i = load ptr, ptr %.phi.trans.insert1090.i.i.i, align 8, !alias.scope !19943, !noalias !19944
  %.phi.trans.insert1092.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 864
  %.pre1093.i.i.i = load ptr, ptr %.phi.trans.insert1092.i.i.i, align 8, !alias.scope !19943, !noalias !19944
  br label %bb.fa

bb.md:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit384.thread.i.i.i
  %i.arl = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6924.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6924.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.arl, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0921.i.i.i)
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0921.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.arm, i64 32, i1 false), !noalias !19918
  %i.arn = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20134)
  %i.aro = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.arp = load i64, ptr %i.aro, align 8, !range !119, !alias.scope !20134, !noalias !19918, !noundef !80 ; 2 uses
  %i.arq = icmp eq i64 %i.arp, -1
  br i1 %i.arq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i, label %bb.me

bb.me:                                            ; preds = %bb.md
  call void @llvm.experimental.noalias.scope.decl(metadata !20135)
  %.not.i.i391.i.i.i = icmp eq i64 %i.arp, 2
  br i1 %.not.i.i391.i.i.i, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aro) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i

bb.mg:                                            ; preds = %bb.me
  call void @llvm.experimental.noalias.scope.decl(metadata !20136)
  %.val.i.i.i392.i.i.i = load ptr, ptr %i.arn, align 8, !alias.scope !20137, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20138
  %i.arr = ptrtoint ptr %.val.i.i.i392.i.i.i to i64 ; 2 uses
  %i.ars = and i64 %i.arr, 3
  switch i64 %i.ars, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i393.i.i.i
    i64 3, label %bb.mh
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i393.i.i.i
    i64 1, label %bb.mi
  ], !prof !111

bb.mh:                                            ; preds = %bb.mg
  %i.art = icmp ult ptr %.val.i.i.i392.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aru = and i64 %i.arr, 1095216660480
  %i.arv = icmp ne i64 %i.aru, 1095216660480
  call void @llvm.assume(i1 %i.art)
  call void @llvm.assume(i1 %i.arv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i393.i.i.i

bb.mi:                                            ; preds = %bb.mg
  %i.arw = getelementptr i8, ptr %.val.i.i.i392.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.arw) ]
  %i.arx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.arw, ptr %i.arx, align 8, !alias.scope !20139, !noalias !20138
  store i8 3, ptr %i.m, align 8, !alias.scope !20139, !noalias !20138
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.arx) #46, !noalias !20140
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i393.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i393.i.i.i: ; preds = %bb.mi, %bb.mh, %bb.mg, %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20138
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i393.i.i.i, %bb.mf, %bb.md
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.arn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0921.i.i.i, i64 32, i1 false), !noalias !19918
  store i64 %.sroa.0870.0.copyload871.i.i.i, ptr %i.aro, align 8, !noalias !19918
  %.sroa.5923.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %.sroa.12872.0.copyload874.i.i.i, ptr %.sroa.5923.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.6924.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6924.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6924.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0921.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6924.i.i.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.thread.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.thread.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.i.i.i, %bb.fa
  %i.ary = phi ptr [ %i.wm, %bb.fa ], [ %i.aqk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i ], [ %i.wm, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.i.i.i ] ; 2 uses
  %i.arz = phi ptr [ %i.wn, %bb.fa ], [ %i.aql, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i ], [ %i.wn, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.i.i.i ] ; 2 uses
  %i.asa = phi ptr [ %i.wo, %bb.fa ], [ %i.aqm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i ], [ %i.wo, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.i.i.i ] ; 2 uses
  %i.asb = phi ptr [ %i.wp, %bb.fa ], [ %i.aqn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i ], [ %i.wp, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.i.i.i ] ; 2 uses
  %i.asc = phi ptr [ %i.wq, %bb.fa ], [ %i.aqo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i ], [ %i.wq, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.i.i.i ] ; 2 uses
  %.sroa.5927.0.copyload1097.i.i.i = phi i64 [ %.sroa.5927.0.copyload1098.i.i.i, %bb.fa ], [ %.sroa.0870.0.copyload871.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit395.i.i.i ], [ %.sroa.5927.0.copyload1098.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12868.i.i.i)
  %i.asd = getelementptr i8, ptr %1, i64 872
  %.val87.i.i.i = load i64, ptr %i.asd, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.ase = icmp eq i64 %.val87.i.i.i, 0
  br i1 %i.ase, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit396.i.i.i, label %bb.mj

bb.mj:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.thread.i.i.i
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.val86.i.i.i = load ptr, ptr %i.asf, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.asg = shl nuw i64 %.val87.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86.i.i.i, i64 noundef %i.asg, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20141
  %.sroa.5927.0..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.sroa.5927.0.copyload.pre.i.i.i = load i64, ptr %.sroa.5927.0..sroa_idx.phi.trans.insert.i.i.i, align 8, !noalias !19918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit396.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit396.i.i.i: ; preds = %bb.mj, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.thread.i.i.i
  %.sroa.5927.0.copyload.i.i.i = phi i64 [ %.sroa.5927.0.copyload1097.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.thread.i.i.i ], [ %.sroa.5927.0.copyload.pre.i.i.i, %bb.mj ] ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.sroa.0925.0.copyload.i.i.i = load ptr, ptr %i.ash, align 8, !noalias !19918 ; 3 uses
  %.not.i397.i.i.i = icmp eq i64 %.sroa.5927.0.copyload.i.i.i, -1
  br i1 %.not.i397.i.i.i, label %bb.mk, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i, !prof !92

bb.mk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit396.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @649, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @655) #56, !noalias !20142
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit396.i.i.i
  %.sroa.7928.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.asi = load <2 x ptr>, ptr %.sroa.7928.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.7928.sroa.4.0..sroa.7928.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 528
  %.sroa.19.sroa.7.i.sroa.9.0.copyload84.i.i = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.7928.sroa.4.0..sroa.7928.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !19918
  %i.asj = icmp eq i64 %.sroa.5927.0.copyload.i.i.i, 2
  br i1 %i.asj, label %bb.mm, label %bb.gf

bb.ml:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit146.i.i.i
  %i.ask = getelementptr inbounds nuw i8, ptr %1, i64 888
  store i16 %.sroa.0866.0.copyload867.i.i.i, ptr %i.ask, align 8, !noalias !19918
  %.sroa.12868.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12868.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12868.i.i.i, i64 30, i1 false), !noalias !19918
  %11 = trunc nuw i16 %.sroa.0866.0.copyload867.i.i.i to i8
  %i.asl = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.asm = load ptr, ptr %i.asl, align 8, !noalias !19918, !nonnull !80, !align !86, !noundef !80
  %12 = and i8 %11, 1
  %.sroa.7890.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store ptr %i.asm, ptr %.sroa.7890.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8891.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store i8 0, ptr %.sroa.8891.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.9892.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1217
  store i8 %12, ptr %.sroa.9892.0..sroa_idx.i.i.i, align 1, !noalias !19918
  br label %bb.lo

bb.mm:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit398.i.i.i
  %i.asn = getelementptr inbounds nuw i8, ptr %1, i64 1056
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0925.0.copyload.i.i.i) ]
  store ptr %.sroa.0925.0.copyload.i.i.i, ptr %i.asn, align 8, !noalias !19918
  %i.aso = getelementptr inbounds nuw i8, ptr %1, i64 568
  store i64 -1, ptr %i.aso, align 8, !noalias !19918
  %i.asp = getelementptr inbounds nuw i8, ptr %1, i64 1089
  store i8 0, ptr %i.asp, align 1, !noalias !19918
  %i.asq = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %.sroa.0933.0.copyload.i.i.i = load i64, ptr %i.asq, align 8, !noalias !19918
  %.sroa.4934.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.sroa.4934.0.copyload.i.i.i = load ptr, ptr %.sroa.4934.0..sroa_idx.i.i.i, align 8, !noalias !19918, !nonnull !80, !noundef !80 ; 4 uses
  %.sroa.5935.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %.sroa.5935.0.copyload.i.i.i = load i64, ptr %.sroa.5935.0..sroa_idx.i.i.i, align 8, !noalias !19918 ; 2 uses
  %i.asr = icmp ult i64 %.sroa.5935.0.copyload.i.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.asr)
  %i.ass = getelementptr inbounds nuw [32 x i8], ptr %.sroa.4934.0.copyload.i.i.i, i64 %.sroa.5935.0.copyload.i.i.i ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %1, i64 920
  store ptr %.sroa.4934.0.copyload.i.i.i, ptr %i.ast, align 8, !noalias !19918
  %.sroa.9930.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 928
  store ptr %.sroa.4934.0.copyload.i.i.i, ptr %.sroa.9930.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.10931.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 936
  store i64 %.sroa.0933.0.copyload.i.i.i, ptr %.sroa.10931.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.11932.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 944
  store ptr %i.ass, ptr %.sroa.11932.0..sroa_idx.i.i.i, align 8, !noalias !19918
  br label %bb.mn

bb.mn:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i, %bb.mm
  %i.asu = phi ptr [ %i.avd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i ], [ %i.ary, %bb.mm ] ; 3 uses
  %i.asv = phi ptr [ %i.ave, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i ], [ %i.arz, %bb.mm ] ; 3 uses
  %i.asw = phi ptr [ %i.avf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i ], [ %i.asa, %bb.mm ] ; 3 uses
  %i.asx = phi ptr [ %i.avg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i ], [ %i.asb, %bb.mm ] ; 3 uses
  %i.asy = phi ptr [ %i.avh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i ], [ %i.asc, %bb.mm ] ; 3 uses
  %.sroa.5997.0.copyload1107.i.i.i = phi i64 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i ], [ -1, %bb.mm ] ; 2 uses
  %i.asz = phi ptr [ %.pre1102.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i ], [ %.sroa.4934.0.copyload.i.i.i, %bb.mm ] ; 4 uses
  %i.ata = phi ptr [ %.pre1100.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i ], [ %i.ass, %bb.mm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12938.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !20143)
  %i.atb = icmp eq ptr %i.asz, %i.ata
  br i1 %i.atb, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.thread.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i: ; preds = %bb.mn
  %i.atc = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asz, i64 32
  store ptr %i.atd, ptr %i.atc, align 8, !alias.scope !20143, !noalias !20144
  %.sroa.0936.0.copyload937.i.i.i = load i16, ptr %i.asz, align 4, !noalias !20145 ; 3 uses
  %.sroa.12938.0..sroa_idx939.i.i.i = getelementptr inbounds nuw i8, ptr %i.asz, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12938.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12938.0..sroa_idx939.i.i.i, i64 30, i1 false), !noalias !20145
  %.not78.i.i.i = icmp eq i16 %.sroa.0936.0.copyload937.i.i.i, 2
  br i1 %.not78.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.thread.i.i.i, label %bb.oc

bb.mo:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12868.i.i.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i

bb.mp:                                            ; preds = %bb.lo
  %.sroa.3895.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.3895.0.copyload.i.i.i = load ptr, ptr %.sroa.3895.0..sroa_idx.i.i.i, align 8, !noalias !19918 ; 5 uses
  %.sroa.5896.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5896.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5896.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !19918
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.atf = load i8, ptr %i.ate, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i405.i.i.i = icmp eq i8 %i.atf, 3
  br i1 %cond.i405.i.i.i, label %bb.mq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit413.i.i.i

bb.mq:                                            ; preds = %bb.mp
  %i.atg = getelementptr inbounds nuw i8, ptr %1, i64 1201
  %i.ath = load i8, ptr %i.atg, align 1, !range !114, !noalias !19918, !noundef !80
  %cond.i.i406.i.i.i = icmp eq i8 %i.ath, 3
  br i1 %cond.i.i406.i.i.i, label %bb.mr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit413.i.i.i

bb.mr:                                            ; preds = %bb.mq
  %i.ati = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.atj = load i8, ptr %i.ati, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i.i.i407.i.i.i = icmp eq i8 %i.atj, 3
  br i1 %cond.i.i.i407.i.i.i, label %bb.ms, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit413.i.i.i

bb.ms:                                            ; preds = %bb.mr
  %i.atk = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.val.i.i.i408.i.i.i = load i16, ptr %i.atk, align 8, !range !128, !noalias !19918, !noundef !80
  %i.atl = getelementptr i8, ptr %1, i64 1144
  %.val1.i.i.i409.i.i.i = load ptr, ptr %i.atl, align 8, !noalias !19918 ; 4 uses
  %cond.i.i.i.i.i410.i.i.i = icmp eq i16 %.val.i.i.i408.i.i.i, -1
  br i1 %cond.i.i.i.i.i410.i.i.i, label %bb.mt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit413.i.i.i

bb.mt:                                            ; preds = %bb.ms
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i409.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20146
  %i.atm = ptrtoint ptr %.val1.i.i.i409.i.i.i to i64 ; 2 uses
  %i.atn = and i64 %i.atm, 3
  switch i64 %i.atn, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i411.i.i.i
    i64 3, label %bb.mu
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i411.i.i.i
    i64 1, label %bb.mv
  ], !prof !111

bb.mu:                                            ; preds = %bb.mt
  %i.ato = icmp ult ptr %.val1.i.i.i409.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.atp = and i64 %i.atm, 1095216660480
  %i.atq = icmp ne i64 %i.atp, 1095216660480
  call void @llvm.assume(i1 %i.ato)
  call void @llvm.assume(i1 %i.atq)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i411.i.i.i

bb.mv:                                            ; preds = %bb.mt
  %i.atr = getelementptr i8, ptr %.val1.i.i.i409.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.atr) ]
  %i.ats = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.atr, ptr %i.ats, align 8, !alias.scope !20147, !noalias !20146
  store i8 3, ptr %i.l, align 8, !alias.scope !20147, !noalias !20146
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ats) #46, !noalias !20148
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i411.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i411.i.i.i: ; preds = %bb.mv, %bb.mu, %bb.mt, %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20146
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit413.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit413.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i411.i.i.i, %bb.ms, %bb.mr, %bb.mq, %bb.mp
  %i.att = icmp eq i64 %i.apy, 2
  br i1 %i.att, label %bb.mw, label %.thread1184.i.i.i

bb.mw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit413.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3895.0.copyload.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12868.i.i.i)
  %i.atu = getelementptr i8, ptr %1, i64 872
  %.val85.i.i.i = load i64, ptr %i.atu, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.atv = icmp eq i64 %.val85.i.i.i, 0
  br i1 %i.atv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit415.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.atw = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.val84.i.i.i = load ptr, ptr %i.atw, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.atx = shl nuw i64 %.val85.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val84.i.i.i, i64 noundef %i.atx, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20149
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit415.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit415.i.i.i: ; preds = %bb.mx, %bb.mw
  %i.aty = getelementptr inbounds nuw i8, ptr %1, i64 472
  call void @llvm.experimental.noalias.scope.decl(metadata !20150)
  %i.atz = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.aua = load i64, ptr %i.atz, align 8, !range !119, !alias.scope !20150, !noalias !19918, !noundef !80 ; 2 uses
  %i.aub = icmp eq i64 %i.aua, -1
  br i1 %i.aub, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i, label %bb.my

bb.my:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit415.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20151)
  %.not.i.i416.i.i.i = icmp eq i64 %i.aua, 2
  br i1 %.not.i.i416.i.i.i, label %bb.na, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.atz) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

bb.na:                                            ; preds = %bb.my
  call void @llvm.experimental.noalias.scope.decl(metadata !20152)
  %.val.i.i.i417.i.i.i = load ptr, ptr %i.aty, align 8, !alias.scope !20153, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20154
  %i.auc = ptrtoint ptr %.val.i.i.i417.i.i.i to i64 ; 2 uses
  %i.aud = and i64 %i.auc, 3
  switch i64 %i.aud, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i418.i.i.i
    i64 3, label %bb.nb
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i418.i.i.i
    i64 1, label %bb.nc
  ], !prof !111

bb.nb:                                            ; preds = %bb.na
  %i.aue = icmp ult ptr %.val.i.i.i417.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.auf = and i64 %i.auc, 1095216660480
  %i.aug = icmp ne i64 %i.auf, 1095216660480
  call void @llvm.assume(i1 %i.aue)
  call void @llvm.assume(i1 %i.aug)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i418.i.i.i

bb.nc:                                            ; preds = %bb.na
  %i.auh = getelementptr i8, ptr %.val.i.i.i417.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.auh) ]
  %i.aui = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.auh, ptr %i.aui, align 8, !alias.scope !20155, !noalias !20154
  store i8 3, ptr %i.k, align 8, !alias.scope !20155, !noalias !20154
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aui) #46, !noalias !20156
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i418.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i418.i.i.i: ; preds = %bb.nc, %bb.nb, %bb.na, %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20154
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit179.i.i.i

.thread1184.i.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit413.i.i.i
  %.sroa.5899.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5899.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5896.i.i.i, i64 16, i1 false), !noalias !19918
  %i.auj = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 3 uses
  store i64 %i.apy, ptr %i.auj, align 8, !noalias !19918
  %.sroa.4898.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %.sroa.3895.0.copyload.i.i.i, ptr %.sroa.4898.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %i.auk = getelementptr inbounds nuw i8, ptr %1, i64 888
end_hunk_4
begin_hunk_5_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB6_14DnsClientCache10lookup_dns00Csa7TLgTh0CeG_9ssmanager:bb.a
  %.not.i.i448.i.i.i = icmp eq i64 %i.avv, 2
  br i1 %.not.i.i448.i.i.i, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.avu) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i

bb.np:                                            ; preds = %bb.nn
  call void @llvm.experimental.noalias.scope.decl(metadata !20169)
  %.val.i.i.i449.i.i.i = load ptr, ptr %i.avt, align 8, !alias.scope !20170, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20171
  %i.avx = ptrtoint ptr %.val.i.i.i449.i.i.i to i64 ; 2 uses
  %i.avy = and i64 %i.avx, 3
  switch i64 %i.avy, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i450.i.i.i
    i64 3, label %bb.nq
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i450.i.i.i
    i64 1, label %bb.nr
  ], !prof !111

bb.nq:                                            ; preds = %bb.np
  %i.avz = icmp ult ptr %.val.i.i.i449.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.awa = and i64 %i.avx, 1095216660480
  %i.awb = icmp ne i64 %i.awa, 1095216660480
  call void @llvm.assume(i1 %i.avz)
  call void @llvm.assume(i1 %i.awb)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i450.i.i.i

bb.nr:                                            ; preds = %bb.np
  %i.awc = getelementptr i8, ptr %.val.i.i.i449.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awc) ]
  %i.awd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.awc, ptr %i.awd, align 8, !alias.scope !20172, !noalias !20171
  store i8 3, ptr %i.i, align 8, !alias.scope !20172, !noalias !20171
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.awd) #46, !noalias !20173
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i450.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i450.i.i.i: ; preds = %bb.nr, %bb.nq, %bb.np, %bb.np
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20171
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit452.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i450.i.i.i, %bb.no, %bb.nm
  store ptr %.sroa.12942.01076.i.i.i, ptr %i.avt, align 8, !noalias !19918
  store i64 2, ptr %i.avu, align 8, !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12938.i.i.i)
  %.phi.trans.insert1099.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 944
  %.pre1100.i.i.i = load ptr, ptr %.phi.trans.insert1099.i.i.i, align 8, !alias.scope !20143, !noalias !20144
  %.phi.trans.insert1101.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 928
  %.pre1102.i.i.i = load ptr, ptr %.phi.trans.insert1101.i.i.i, align 8, !alias.scope !20143, !noalias !20144
  br label %bb.mn

bb.ns:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit446.thread.i.i.i
  %i.awe = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6994.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6994.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.awe, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0991.i.i.i)
  %i.awf = getelementptr inbounds nuw i8, ptr %1, i64 952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0991.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.awf, i64 32, i1 false), !noalias !19918
  %i.awg = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20174)
  %i.awh = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.awi = load i64, ptr %i.awh, align 8, !range !119, !alias.scope !20174, !noalias !19918, !noundef !80 ; 2 uses
  %i.awj = icmp eq i64 %i.awi, -1
  br i1 %i.awj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  call void @llvm.experimental.noalias.scope.decl(metadata !20175)
  %.not.i.i453.i.i.i = icmp eq i64 %i.awi, 2
  br i1 %.not.i.i453.i.i.i, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.awh) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i

bb.nv:                                            ; preds = %bb.nt
  call void @llvm.experimental.noalias.scope.decl(metadata !20176)
  %.val.i.i.i454.i.i.i = load ptr, ptr %i.awg, align 8, !alias.scope !20177, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20178
  %i.awk = ptrtoint ptr %.val.i.i.i454.i.i.i to i64 ; 2 uses
  %i.awl = and i64 %i.awk, 3
  switch i64 %i.awl, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i455.i.i.i
    i64 3, label %bb.nw
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i455.i.i.i
    i64 1, label %bb.nx
  ], !prof !111

bb.nw:                                            ; preds = %bb.nv
  %i.awm = icmp ult ptr %.val.i.i.i454.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.awn = and i64 %i.awk, 1095216660480
  %i.awo = icmp ne i64 %i.awn, 1095216660480
  call void @llvm.assume(i1 %i.awm)
  call void @llvm.assume(i1 %i.awo)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i455.i.i.i

bb.nx:                                            ; preds = %bb.nv
  %i.awp = getelementptr i8, ptr %.val.i.i.i454.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awp) ]
  %i.awq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.awp, ptr %i.awq, align 8, !alias.scope !20179, !noalias !20178
  store i8 3, ptr %i.h, align 8, !alias.scope !20179, !noalias !20178
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.awq) #46, !noalias !20180
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i455.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i455.i.i.i: ; preds = %bb.nx, %bb.nw, %bb.nv, %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20178
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i455.i.i.i, %bb.nu, %bb.ns
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.awg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0991.i.i.i, i64 32, i1 false), !noalias !19918
  store i64 %.sroa.0940.0.copyload941.i.i.i, ptr %i.awh, align 8, !noalias !19918
  %.sroa.5993.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr %.sroa.12942.0.copyload944.i.i.i, ptr %.sroa.5993.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.6994.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6994.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6994.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0991.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6994.i.i.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.thread.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.thread.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i, %bb.mn
  %i.awr = phi ptr [ %i.asu, %bb.mn ], [ %i.avd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i ], [ %i.asu, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i ]
  %i.aws = phi ptr [ %i.asv, %bb.mn ], [ %i.ave, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i ], [ %i.asv, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i ]
  %i.awt = phi ptr [ %i.asw, %bb.mn ], [ %i.avf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i ], [ %i.asw, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i ]
  %i.awu = phi ptr [ %i.asx, %bb.mn ], [ %i.avg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i ], [ %i.asx, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i ]
  %i.awv = phi ptr [ %i.asy, %bb.mn ], [ %i.avh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i ], [ %i.asy, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i ]
  %.sroa.5997.0.copyload1106.i.i.i = phi i64 [ %.sroa.5997.0.copyload1107.i.i.i, %bb.mn ], [ %.sroa.0940.0.copyload941.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit457.i.i.i ], [ %.sroa.5997.0.copyload1107.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12938.i.i.i)
  %i.aww = getelementptr i8, ptr %1, i64 936
  %.val83.i.i.i = load i64, ptr %i.aww, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.awx = icmp eq i64 %.val83.i.i.i, 0
  br i1 %i.awx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit458.i.i.i, label %bb.ny

bb.ny:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.thread.i.i.i
  %i.awy = getelementptr inbounds nuw i8, ptr %1, i64 920
  %.val82.i.i.i = load ptr, ptr %i.awy, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.awz = shl nuw i64 %.val83.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val82.i.i.i, i64 noundef %i.awz, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20181
  %.sroa.5997.0..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 568
  %.sroa.5997.0.copyload.pre.i.i.i = load i64, ptr %.sroa.5997.0..sroa_idx.phi.trans.insert.i.i.i, align 8, !noalias !19918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit458.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit458.i.i.i: ; preds = %bb.ny, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.thread.i.i.i
  %.sroa.5997.0.copyload.i.i.i = phi i64 [ %.sroa.5997.0.copyload1106.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.thread.i.i.i ], [ %.sroa.5997.0.copyload.pre.i.i.i, %bb.ny ] ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.sroa.0995.0.copyload.i.i.i = load ptr, ptr %i.axa, align 8, !noalias !19918
  %.sroa.7998.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 576
  %.sroa.7998.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7998.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.not.i459.i.i.i = icmp eq i64 %.sroa.5997.0.copyload.i.i.i, -1
  br i1 %.not.i459.i.i.i, label %bb.nz, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit460.i.i.i, !prof !92

bb.nz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit458.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @649, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @655) #56, !noalias !20182
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit460.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit458.i.i.i
  %.sroa.7998.sroa.4.0..sroa.7998.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 584
  %.sroa.19.sroa.7.i.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7998.sroa.4.0..sroa.7998.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.7998.sroa.4.0..sroa.7998.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 592
  %.sroa.19.sroa.7.i.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.7998.sroa.4.0..sroa.7998.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !19918
  %i.axb = getelementptr inbounds nuw i8, ptr %1, i64 1056
  call void @llvm.experimental.noalias.scope.decl(metadata !20183)
  %.val.i461.i.i.i = load ptr, ptr %i.axb, align 8, !alias.scope !20183, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20184
  %i.axc = ptrtoint ptr %.val.i461.i.i.i to i64   ; 2 uses
  %i.axd = and i64 %i.axc, 3
  switch i64 %i.axd, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i
    i64 3, label %bb.oa
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i
    i64 1, label %bb.ob
  ], !prof !111

bb.oa:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit460.i.i.i
  %i.axe = icmp ult ptr %.val.i461.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.axf = and i64 %i.axc, 1095216660480
  %i.axg = icmp ne i64 %i.axf, 1095216660480
  call void @llvm.assume(i1 %i.axe)
  call void @llvm.assume(i1 %i.axg)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i

bb.ob:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit460.i.i.i
  %i.axh = getelementptr i8, ptr %.val.i461.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axh) ]
  %i.axi = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.axh, ptr %i.axi, align 8, !alias.scope !20185, !noalias !20184
  store i8 3, ptr %i.g, align 8, !alias.scope !20185, !noalias !20184
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.axi) #46, !noalias !20186
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit463.i.i.i: ; preds = %bb.ob, %bb.oa, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit460.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit460.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20184
  %i.axj = insertelement <2 x ptr> poison, ptr %.sroa.7998.sroa.0.0.copyload.i.i.i, i64 0
  %i.axk = insertelement <2 x ptr> %i.axj, ptr %.sroa.19.sroa.7.i.sroa.0.0.copyload.i.i, i64 1
  br label %bb.gf

bb.oc:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit404.i.i.i
  %i.axl = getelementptr inbounds nuw i8, ptr %1, i64 952
  store i16 %.sroa.0936.0.copyload937.i.i.i, ptr %i.axl, align 8, !noalias !19918
  %.sroa.12938.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12938.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12938.i.i.i, i64 30, i1 false), !noalias !19918
  %13 = trunc nuw i16 %.sroa.0936.0.copyload937.i.i.i to i8
  %i.axm = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.axn = load ptr, ptr %i.axm, align 8, !noalias !19918, !nonnull !80, !align !86, !noundef !80
  %14 = and i8 %13, 1
  %.sroa.7960.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store ptr %i.axn, ptr %.sroa.7960.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.8961.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store i8 0, ptr %.sroa.8961.0..sroa_idx.i.i.i, align 8, !noalias !19918
  %.sroa.9962.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1217
  store i8 %14, ptr %.sroa.9962.0..sroa_idx.i.i.i, align 1, !noalias !19918
  br label %bb.nd

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.oe, %bb.od, %bb.gf
  store i8 0, ptr %i.aax, align 1, !noalias !19918
  %i.axo = getelementptr inbounds nuw i8, ptr %1, i64 1090 ; 2 uses
  %i.axp = load i8, ptr %i.axo, align 2, !range !93, !noalias !19918, !noundef !80
  %i.axq = trunc nuw i8 %i.axp to i1
  br i1 %i.axq, label %bb.of, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit464.i.i.i

bb.od:                                            ; preds = %bb.gf
  %i.axr = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %.val110.i.i.i = load i64, ptr %i.axr, align 8, !range !82, !noalias !19918, !noundef !80 ; 2 uses
  %i.axs = icmp eq i64 %.val110.i.i.i, 0
  br i1 %i.axs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.axt = getelementptr i8, ptr %1, i64 1032
  %.val111.i.i.i = load ptr, ptr %i.axt, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.axu = shl nuw i64 %.val110.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val111.i.i.i, i64 noundef %i.axu, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit464.i.i.i: ; preds = %bb.og, %bb.of, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  store i8 0, ptr %i.axo, align 2, !noalias !19918
  %i.axv = icmp eq i64 %.sroa.11853.0.i.i.i, 2
  br i1 %i.axv, label %bb.oh, label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0Csa7TLgTh0CeG_9ssmanager.exit.thread111.i.i

_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0Csa7TLgTh0CeG_9ssmanager.exit.thread111.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit464.i.i.i
  %i.axw = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.axx = load ptr, ptr %i.axw, align 8, !noalias !19918, !nonnull !80, !align !86, !noundef !80
  %i.axy = load <2 x i64>, ptr %i.axx, align 8, !noalias !19919
  store i8 1, ptr %i.aau, align 1, !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5966.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5896.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5808.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5736.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5664.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5592.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !19915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6542.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5495.i.i.i)
  br label %bb.pe

bb.of:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.axz = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %.val108.i.i.i = load i64, ptr %i.axz, align 8, !range !82, !noalias !19918, !noundef !80 ; 2 uses
  %i.aya = icmp eq i64 %.val108.i.i.i, 0
  br i1 %i.aya, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit464.i.i.i, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.ayb = getelementptr i8, ptr %1, i64 1008
  %.val109.i.i.i = load ptr, ptr %i.ayb, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.ayc = shl nuw i64 %.val108.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val109.i.i.i, i64 noundef %i.ayc, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit464.i.i.i

bb.oh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit464.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0843.0.i.i.i) ]
  br label %.thread.i.i22

bb.oi:                                            ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12938.i.i.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i

bb.oj:                                            ; preds = %bb.nd
  %.sroa.3965.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.3965.0.copyload.i.i.i = load ptr, ptr %.sroa.3965.0..sroa_idx.i.i.i, align 8, !noalias !19918 ; 3 uses
  %.sroa.5966.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5966.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5966.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !19918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !19918
  %i.ayd = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.aye = load i8, ptr %i.ayd, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i465.i.i.i = icmp eq i8 %i.aye, 3
  br i1 %cond.i465.i.i.i, label %bb.ok, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit473.i.i.i

bb.ok:                                            ; preds = %bb.oj
  %i.ayf = getelementptr inbounds nuw i8, ptr %1, i64 1201
  %i.ayg = load i8, ptr %i.ayf, align 1, !range !114, !noalias !19918, !noundef !80
  %cond.i.i466.i.i.i = icmp eq i8 %i.ayg, 3
  br i1 %cond.i.i466.i.i.i, label %bb.ol, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit473.i.i.i

bb.ol:                                            ; preds = %bb.ok
  %i.ayh = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.ayi = load i8, ptr %i.ayh, align 8, !range !114, !noalias !19918, !noundef !80
  %cond.i.i.i467.i.i.i = icmp eq i8 %i.ayi, 3
  br i1 %cond.i.i.i467.i.i.i, label %bb.om, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit473.i.i.i

bb.om:                                            ; preds = %bb.ol
  %i.ayj = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.val.i.i.i468.i.i.i = load i16, ptr %i.ayj, align 8, !range !128, !noalias !19918, !noundef !80
  %i.ayk = getelementptr i8, ptr %1, i64 1144
  %.val1.i.i.i469.i.i.i = load ptr, ptr %i.ayk, align 8, !noalias !19918 ; 4 uses
  %cond.i.i.i.i.i470.i.i.i = icmp eq i16 %.val.i.i.i468.i.i.i, -1
  br i1 %cond.i.i.i.i.i470.i.i.i, label %bb.on, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit473.i.i.i

bb.on:                                            ; preds = %bb.om
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i469.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20187
  %i.ayl = ptrtoint ptr %.val1.i.i.i469.i.i.i to i64 ; 2 uses
  %i.aym = and i64 %i.ayl, 3
  switch i64 %i.aym, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i471.i.i.i
    i64 3, label %bb.oo
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i471.i.i.i
    i64 1, label %bb.op
  ], !prof !111

bb.oo:                                            ; preds = %bb.on
  %i.ayn = icmp ult ptr %.val1.i.i.i469.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ayo = and i64 %i.ayl, 1095216660480
  %i.ayp = icmp ne i64 %i.ayo, 1095216660480
  call void @llvm.assume(i1 %i.ayn)
  call void @llvm.assume(i1 %i.ayp)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i471.i.i.i

bb.op:                                            ; preds = %bb.on
  %i.ayq = getelementptr i8, ptr %.val1.i.i.i469.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ayq) ]
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ayq, ptr %i.ayr, align 8, !alias.scope !20188, !noalias !20187
  store i8 3, ptr %i.f, align 8, !alias.scope !20188, !noalias !20187
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ayr) #46, !noalias !20189
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i471.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i471.i.i.i: ; preds = %bb.op, %bb.oo, %bb.on, %bb.on
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20187
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit473.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit473.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i471.i.i.i, %bb.om, %bb.ol, %bb.ok, %bb.oj
  %i.ays = icmp eq i64 %i.aur, 2
  br i1 %i.ays, label %bb.oq, label %.thread1185.i.i.i

bb.oq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit473.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3965.0.copyload.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12938.i.i.i)
  %i.ayt = getelementptr i8, ptr %1, i64 936
  %.val81.i.i.i = load i64, ptr %i.ayt, align 8, !alias.scope !19981, !noalias !19918, !noundef !80 ; 2 uses
  %i.ayu = icmp eq i64 %.val81.i.i.i, 0
  br i1 %i.ayu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit475.i.i.i, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.ayv = getelementptr inbounds nuw i8, ptr %1, i64 920
  %.val.i.i.i = load ptr, ptr %i.ayv, align 8, !noalias !19918, !nonnull !80, !noundef !80
  %i.ayw = shl nuw i64 %.val81.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ayw, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !20190
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit475.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit475.i.i.i: ; preds = %bb.or, %bb.oq
  %i.ayx = getelementptr inbounds nuw i8, ptr %1, i64 536
  call void @llvm.experimental.noalias.scope.decl(metadata !20191)
  %i.ayy = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.ayz = load i64, ptr %i.ayy, align 8, !range !119, !alias.scope !20191, !noalias !19918, !noundef !80 ; 2 uses
  %i.aza = icmp eq i64 %i.ayz, -1
  br i1 %i.aza, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit480.i.i.i, label %bb.os

bb.os:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit475.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20192)
  %.not.i.i476.i.i.i = icmp eq i64 %i.ayz, 2
  br i1 %.not.i.i476.i.i.i, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ayy) #46, !noalias !19919
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit480.i.i.i

bb.ou:                                            ; preds = %bb.os
  call void @llvm.experimental.noalias.scope.decl(metadata !20193)
  %.val.i.i.i477.i.i.i = load ptr, ptr %i.ayx, align 8, !alias.scope !20194, !noalias !19918, !nonnull !80, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20195
  %i.azb = ptrtoint ptr %.val.i.i.i477.i.i.i to i64 ; 2 uses
  %i.azc = and i64 %i.azb, 3
  switch i64 %i.azc, label %default.unreachable403 [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i478.i.i.i
    i64 3, label %bb.ov
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i478.i.i.i
    i64 1, label %bb.ow
  ], !prof !111

bb.ov:                                            ; preds = %bb.ou
  %i.azd = icmp ult ptr %.val.i.i.i477.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aze = and i64 %i.azb, 1095216660480
  %i.azf = icmp ne i64 %i.aze, 1095216660480
  call void @llvm.assume(i1 %i.azd)
  call void @llvm.assume(i1 %i.azf)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i478.i.i.i

bb.ow:                                            ; preds = %bb.ou
  %i.azg = getelementptr i8, ptr %.val.i.i.i477.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azg) ]
  %i.azh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.azg, ptr %i.azh, align 8, !alias.scope !20196, !noalias !20195
  store i8 3, ptr %i.e, align 8, !alias.scope !20196, !noalias !20195
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.azh) #46, !noalias !20197
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i478.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i478.i.i.i: ; preds = %bb.ow, %bb.ov, %bb.ou, %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20195
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit480.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit480.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i478.i.i.i, %bb.ot, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit475.i.i.i
end_hunk_5
begin_hunk_6_@_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket17connect_with_opts0Csa7TLgTh0CeG_9ssmanager:bb.a
    i64 3, label %bb.l
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
    i64 1, label %bb.m
  ], !prof !111

default.unreachable:                              ; preds = %bb.u, %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.y = icmp ult ptr %.val1.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.z = and i64 %i.w, 1095216660480
  %i.aa = icmp ne i64 %i.z, 1095216660480
  tail call void @llvm.assume(i1 %i.y)
  tail call void @llvm.assume(i1 %i.aa)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %.val1.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !22998, !noalias !22997
  store i8 3, ptr %i.b, align 8, !alias.scope !22998, !noalias !22997
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #46, !noalias !22997
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22997
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.ad = icmp eq i64 %i.m, 2
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.310.0.copyload) ]
  br label %bb.q

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511, i64 16, i1 false)
  store i64 %i.m, ptr %i.l, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %.sroa.310.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !80, !align !153, !noundef !80
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.l, ptr %i.ag, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.af, ptr %.sroa.721.0..sroa_idx, align 8
  %.sroa.923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %.sroa.923.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = call fastcc { i64, ptr } @_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectRNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0Csa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.ah) #54 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.y, %bb.x, %bb.n
  %.sroa.025.0 = phi i64 [ 2, %bb.n ], [ %.sroa.032.0.copyload, %bb.y ], [ 2, %bb.x ]
  %.sroa.427.0 = phi ptr [ %.sroa.310.0.copyload, %bb.n ], [ %.sroa.433.0.copyload, %bb.y ], [ %i.am, %bb.x ]
  %i.al = phi <2 x i64> [ undef, %bb.n ], [ %i.bb, %bb.y ], [ undef, %bb.x ]
  store i64 %.sroa.025.0, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.427.0, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.629.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.629, i64 16, i1 false)
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.al, ptr %.sroa.630.0..sroa_idx, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  store i64 -1, ptr %0, align 8
  br label %common.ret

bb.s:                                             ; preds = %bb.p
  %i.am = extractvalue { i64, ptr } %i.ai, 1      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = load i8, ptr %i.an, align 8, !range !114, !noundef !80
  %cond.i6 = icmp eq i8 %i.ao, 3
  br i1 %cond.i6, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectRNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i = load i16, ptr %i.ap, align 8, !range !128, !noundef !80
  %i.aq = getelementptr i8, ptr %1, i64 104
  %.val1.i = load ptr, ptr %i.aq, align 8         ; 4 uses
  %cond.i.i.i7 = icmp eq i16 %.val.i, -1
  br i1 %cond.i.i.i7, label %bb.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectRNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22999
  %i.ar = ptrtoint ptr %.val1.i to i64            ; 2 uses
  %i.as = and i64 %i.ar, 3
  switch i64 %i.as, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
    i64 3, label %bb.v
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
    i64 1, label %bb.w
  ], !prof !111

bb.v:                                             ; preds = %bb.u
  %i.at = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.au = and i64 %i.ar, 1095216660480
  %i.av = icmp ne i64 %i.au, 1095216660480
  call void @llvm.assume(i1 %i.at)
  call void @llvm.assume(i1 %i.av)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.aw = getelementptr i8, ptr %.val1.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !23000, !noalias !22999
  store i8 3, ptr %i.a, align 8, !alias.scope !23000, !noalias !22999
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #46, !noalias !22999
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22999
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectRNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectRNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.s, %bb.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %.not = icmp eq ptr %i.am, null
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectRNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay) #46
  br label %bb.q

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectRNtNtNtB4_3net11socket_addr10SocketAddrE0ECsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.032.0.copyload = load i64, ptr %i.ay, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.433.0.copyload = load ptr, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.629, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534.0..sroa_idx, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !80, !align !86, !noundef !80
  %i.bb = load <2 x i64>, ptr %i.ba, align 8
  br label %bb.q
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB4_14DnsClientCache12lookup_local0Csa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 16 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.721.i.i = alloca [24 x i8], align 8      ; 6 uses
  %.sroa.828.i.i = alloca [32 x i8], align 8      ; 4 uses
  %i.d = alloca [2416 x i8], align 16             ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [2416 x i8], align 16             ; 5 uses
  %i.g = alloca [2416 x i8], align 16             ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 16 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [96 x i8], align 8                ; 16 uses
  %i.k = alloca [96 x i8], align 8                ; 16 uses
  %i.l = alloca [96 x i8], align 8                ; 16 uses
  %i.m = alloca [1 x i8], align 1                 ; 6 uses
  %i.n = alloca [1 x i8], align 1                 ; 6 uses
  %i.o = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.6116.i = alloca [2400 x i8], align 16    ; 9 uses
  %i.p = alloca [2416 x i8], align 16             ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.945.i.i = alloca [2408 x i8], align 8    ; 7 uses
  %.sroa.314.sroa.3.i = alloca [47 x i8], align 1 ; 7 uses
  %.sroa.416.i = alloca [96 x i8], align 8        ; 6 uses
  %.sroa.37.i = alloca [48 x i8], align 8         ; 7 uses
  %.sroa.086.i = alloca [4928 x i8], align 16     ; 5 uses
  %.sroa.49.i = alloca [96 x i8], align 8         ; 6 uses
  %i.t = alloca [152 x i8], align 8               ; 7 uses
  %.sroa.078.i = alloca [152 x i8], align 8       ; 9 uses
  %.sroa.4.i = alloca [2400 x i8], align 16       ; 6 uses
  %.sroa.869.i = alloca [2400 x i8], align 16     ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 21032 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !114, !noundef !80
  switch i8 %i.v, label %bb.b [
    i8 0, label %.thread
    i8 1, label %bb.dc
    i8 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20864
  %i.x = load ptr, ptr %i.w, align 16, !nonnull !80, !align !86, !noundef !80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20880
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20872
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !80, !align !86, !noundef !80
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 21033
  %i.ac = load i8, ptr %i.ab, align 1, !range !93, !noundef !80
  %. = zext nneg i8 %i.ac to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ad, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 %., ptr %i.ae, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2792
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(152) %i.y, i64 152, i1 false)
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2560
  store ptr %i.aa, ptr %.sroa.65.0..sroa_idx, align 16
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2776
  store ptr %i.x, ptr %.sroa.98.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2784
  store ptr %i.ae, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2945
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.314.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2945
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 2945
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !108, !noalias !23154
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23155)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.314.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2945 ; 8 uses
  switch i8 %.pre, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.f
    i8 5, label %bb.bh
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.thread, %bb.c
  %i.aj = phi ptr [ %i.ag, %.thread ], [ %i.ai, %bb.c ]
  %i.ak = phi ptr [ %i.af, %.thread ], [ %i.ah, %bb.c ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2944
  store i8 0, ptr %i.al, align 16, !noalias !23154
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2584
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2776 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !noalias !23154
  %i.ap = load ptr, ptr %i.an, align 8, !noalias !23154, !nonnull !80, !align !86, !noundef !80
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !noalias !23154
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2600
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2792
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.aq, ptr noundef nonnull align 8 dereferenceable(152) %i.ar, i64 152, i1 false), !noalias !23154
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2752
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2560
  %i.au = load <2 x ptr>, ptr %i.at, align 16, !noalias !23154
  store <2 x ptr> %i.au, ptr %i.as, align 16, !noalias !23154
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 2768
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2576
  %i.ax = load ptr, ptr %i.aw, align 16, !noalias !23154, !align !86, !noundef !80
  store ptr %i.ax, ptr %i.av, align 16, !noalias !23154
  store i8 -1, ptr %i.ak, align 16, !noalias !23154
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.az = load i64, ptr %i.ay, align 8, !noalias !23155, !noundef !80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 0, ptr %i.ba, align 16, !noalias !23154
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %i.az, ptr %i.bb, align 8, !noalias !23154
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.078.i), !noalias !23154
  br label %bb.aw

bb.g:                                             ; preds = %bb.ch, %bb.e
  %i.bc = phi ptr [ %i.qd, %bb.ch ], [ %i.aj, %bb.e ] ; 2 uses
  %i.bd = phi ptr [ %i.qe, %bb.ch ], [ %i.ak, %bb.e ] ; 3 uses
  %i.be = phi i64 [ %.pre137.i, %bb.ch ], [ %i.az, %bb.e ]
  %i.bf = phi i64 [ %.pre.i, %bb.ch ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23156)
  call void @llvm.experimental.noalias.scope.decl(metadata !23157)
  %i.bg = icmp ult i64 %i.bf, %i.be
  br i1 %i.bg, label %.thread.i, label %bb.ci

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #56, !noalias !23155
  unreachable

bb.i:                                             ; preds = %bb.c
  %.phi.trans.insert138.i = getelementptr inbounds nuw i8, ptr %1, i64 14897 ; 5 uses
  %.pre139.i = load i8, ptr %.phi.trans.insert138.i, align 1, !range !108, !noalias !23158
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2960 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6116.i)
  switch i8 %.pre139.i, label %bb.j [
    i8 0, label %._crit_edge
    i8 1, label %bb.m
    i8 3, label %bb.l
    i8 4, label %bb.x
    i8 5, label %bb.au
  ]

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %1, i64 14880
  %.pre18 = load ptr, ptr %.phi.trans.insert17, align 16, !noalias !23158
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %1, i64 14888
  %.pre20 = load ptr, ptr %.phi.trans.insert19, align 8, !noalias !23158
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %._crit_edge, %.thread.i
  %i.bi = phi ptr [ %i.bc, %.thread.i ], [ %i.ai, %._crit_edge ]
  %i.bj = phi ptr [ %i.bd, %.thread.i ], [ %i.ah, %._crit_edge ]
  %i.bk = phi ptr [ %i.qi, %.thread.i ], [ %.pre20, %._crit_edge ]
  %i.bl = phi ptr [ %i.qn, %.thread.i ], [ %.pre18, %._crit_edge ]
  %i.bm = phi ptr [ %.sroa.20.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert138.i, %._crit_edge ]
  %i.bn = phi ptr [ %i.qo, %.thread.i ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 14896
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 14864
  store ptr %i.bk, ptr %i.bp, align 16, !noalias !23158, !captures !173
  store i8 1, ptr %i.bo, align 16, !noalias !23158
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5952) %i.bq, ptr noundef nonnull align 16 dereferenceable(5952) %i.bn, i64 5952, i1 false), !noalias !23158
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 14904
  store ptr %i.bl, ptr %i.br, align 8, !noalias !23158
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 15016
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !23158
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bs = phi ptr [ %i.bi, %bb.k ], [ %i.ai, %bb.i ] ; 4 uses
  %i.bt = phi ptr [ %i.bj, %bb.k ], [ %i.ah, %bb.i ] ; 3 uses
  %i.bu = phi ptr [ %i.bm, %bb.k ], [ %.phi.trans.insert138.i, %bb.i ] ; 4 uses
  %i.bv = phi ptr [ %i.bn, %bb.k ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 14904 ; 2 uses
  %i.bx = call fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtB7_5MutexINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB1R_8upstream9DnsClientEEE4lock0Csa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.bw, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #54, !noalias !23159 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_RNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB5_14DnsClientCache20get_client_or_createNCNCNvB4_10lookup_dns00E0Csa7TLgTh0CeG_9ssmanager.exit.thread.i, label %bb.n

bb.m:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #56, !noalias !23159
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 14872 ; 3 uses
  store ptr %i.bx, ptr %i.bz, align 8, !noalias !23158
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 15016
  %i.cb = load i8, ptr %i.ca, align 8, !range !114, !noalias !23158, !noundef !80
  %cond.i.i.i = icmp eq i8 %i.cb, 3
  br i1 %cond.i.i.i, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtBJ_5MutexINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB2t_8upstream9DnsClientEEE4lock0ECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 15008
  %i.cd = load i8, ptr %i.cc, align 16, !range !114, !noalias !23158, !noundef !80
  %cond.i.i.i.i = icmp eq i8 %i.cd, 3
  br i1 %cond.i.i.i.i, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtBJ_5MutexINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB2t_8upstream9DnsClientEEE4lock0ECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 14936
  %i.cf = load i8, ptr %i.ce, align 8, !range !107, !noalias !23158, !noundef !80
  %cond.i.i.i.i.i = icmp eq i8 %i.cf, 4
  br i1 %cond.i.i.i.i.i, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtBJ_5MutexINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB2t_8upstream9DnsClientEEE4lock0ECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 14944
  call void @_RNvXs3_NtNtCsczhfDQ1qNkX_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.cg) #46, !noalias !23159
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 14952
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !23158, !align !86, !noundef !80 ; 2 uses
  %i.ci = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.ci, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtBJ_5MutexINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB2t_8upstream9DnsClientEEE4lock0ECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr i8, ptr %1, i64 14960
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.cj, align 16, !noalias !23158
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !23159, !nonnull !80, !noundef !80
  call void %i.cl(ptr noundef %.val1.i.i.i.i.i.i) #46, !noalias !23159, !inline_history !23010
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtBJ_5MutexINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB2t_8upstream9DnsClientEEE4lock0ECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtBJ_5MutexINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB2t_8upstream9DnsClientEEE4lock0ECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.val18.i.i = load ptr, ptr %i.bz, align 8, !noalias !23158, !nonnull !80, !align !86, !noundef !80 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 14864
  %i.cn = load ptr, ptr %i.cm, align 16, !noalias !23158, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23160)
  call void @llvm.experimental.noalias.scope.decl(metadata !23161)
  %i.co = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !23162, !noalias !23163, !noundef !80
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %select.unfold.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtBJ_5MutexINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB2t_8upstream9DnsClientEEE4lock0ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 72
end_hunk_6
