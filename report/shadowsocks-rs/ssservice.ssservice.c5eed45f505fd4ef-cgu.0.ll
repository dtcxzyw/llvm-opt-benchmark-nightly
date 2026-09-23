Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtCsgCecv3eZDcN_5alloc6string6StringE12send_request0CsgZAIVb0XKpv_9ssservice:bb.a
  store i64 0, ptr %i.sx, align 16, !noalias !67010
  %.sroa.7256.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9560
  store i64 %i.uc, ptr %.sroa.7256.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.8257.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9568
  store i64 0, ptr %.sroa.8257.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.9258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9576
  store i64 %i.ue, ptr %.sroa.9258.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.10259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9584
  store i64 0, ptr %.sroa.10259.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.11260.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9592
  store i64 %i.ug, ptr %.sroa.11260.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.13262.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14256
  store i8 0, ptr %.sroa.13262.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.15264.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14264
  store <4 x i8> <i8 1, i8 1, i8 2, i8 0>, ptr %.sroa.15264.0..sroa_idx.i.i, align 8, !noalias !67010
  br label %bb.di

bb.de:                                            ; preds = %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 9704 ; 2 uses
  store ptr null, ptr %i.uh, align 8, !alias.scope !67028, !noalias !67010
  store i64 0, ptr %i.sx, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9568 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9584 ; 2 uses
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9592
  store i64 1024, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !67028, !noalias !67010
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9600 ; 2 uses
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9604
  store i32 16384, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !alias.scope !67028, !noalias !67010
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9608
  store i32 0, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !67028, !noalias !67010
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9616 ; 2 uses
  store i32 0, ptr %.sroa.13.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9624 ; 2 uses
  store i64 20, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !67028, !noalias !67010
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9632 ; 2 uses
  store i32 0, ptr %.sroa.16.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9648 ; 2 uses
  store i32 -1, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9664 ; 2 uses
  store i32 -1, ptr %.sroa.20.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9672 ; 2 uses
  store i64 100, ptr %.sroa.213.0..sroa_idx.i.i.i, align 8, !alias.scope !67028, !noalias !67010
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9680
  store i64 1048576, ptr %.sroa.22.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9688 ; 2 uses
  store i32 5242880, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !alias.scope !67028, !noalias !67010
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9692
  store i32 2097152, ptr %.sroa.24.0..sroa_idx.i.i.i, align 4, !alias.scope !67028, !noalias !67010
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9696 ; 2 uses
  store i32 16384, ptr %.sroa.25.0..sroa_idx.i.i.i, align 16, !alias.scope !67028, !noalias !67010
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9700 ; 2 uses
  store i8 0, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !alias.scope !67028, !noalias !67010
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9701 ; 2 uses
  store i8 0, ptr %.sroa.27.0..sroa_idx.i.i.i, align 1, !alias.scope !67028, !noalias !67010
  call void @llvm.experimental.noalias.scope.decl(metadata !67029)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !67030
  %i.ui = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !67030 ; 6 uses
  %i.uj = icmp eq ptr %i.ui, null
  br i1 %i.uj, label %bb.df, label %bb.dg, !prof !183

bb.df:                                            ; preds = %bb.de
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #62, !noalias !67030
  unreachable

bb.dg:                                            ; preds = %bb.de
  store i64 1, ptr %i.ui, align 8, !noalias !67031
  %.sroa.4.0..sroa_idx.i40.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i40.i.i, align 8, !noalias !67031
  store ptr %i.ui, ptr %i.uh, align 8, !alias.scope !67029, !noalias !67010
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 9712
  store ptr @225, ptr %i.uk, align 16, !alias.scope !67029, !noalias !67010
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 9640
  store i64 15, ptr %i.ul, align 8, !alias.scope !67032, !noalias !67010
  store i32 0, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !alias.scope !67032, !noalias !67010
  call void @llvm.experimental.noalias.scope.decl(metadata !67033)
  call void @llvm.experimental.noalias.scope.decl(metadata !67034)
  %i.um = atomicrmw add ptr %i.ui, i64 1 monotonic, align 8, !noalias !67035
  %i.un = icmp slt i64 %i.um, 0
  br i1 %i.un, label %bb.dh, label %.thread.i.i

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.trap()
  unreachable

.thread.i.i:                                      ; preds = %bb.dg
  %i.uo = load i8, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !range !181, !alias.scope !67036, !noalias !67037, !noundef !178
  %i.up = load i32, ptr %.sroa.25.0..sroa_idx.i.i.i, align 16, !alias.scope !67036, !noalias !67037, !noundef !178
  %i.uq = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !67036, !noalias !67037, !noundef !178
  %i.ur = load i32, ptr %.sroa.16.0..sroa_idx.i.i.i, align 16, !range !298, !alias.scope !67036, !noalias !67037, !noundef !178
  %i.us = load i8, ptr %.sroa.27.0..sroa_idx.i.i.i, align 1, !range !181, !alias.scope !67036, !noalias !67037, !noundef !178
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 9656
  %i.uu = load i64, ptr %i.ut, align 8, !alias.scope !67036, !noalias !67037
  %i.uv = load i32, ptr %.sroa.20.0..sroa_idx.i.i.i, align 16, !range !198, !alias.scope !67036, !noalias !67037, !noundef !178
  %.sroa.9178.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4656) %.sroa.9178.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(4656) %i.tp, i64 4656, i1 false), !noalias !67010
  %.sroa.7176.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24288
  store ptr %i.ui, ptr %.sroa.7176.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.8177.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24296
  store ptr @225, ptr %.sroa.8177.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.11180.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28984
  %i.uw = load <2 x i64>, ptr %i.sx, align 16, !alias.scope !67036, !noalias !67037
  store <2 x i64> %i.uw, ptr %.sroa.11180.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.13182.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29000
  %i.ux = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !alias.scope !67036, !noalias !67037
  store <2 x i64> %i.ux, ptr %.sroa.13182.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.15184.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29016
  %i.uy = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !67036, !noalias !67037
  store <2 x i64> %i.uy, ptr %.sroa.15184.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.17186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29032
  %i.uz = load <4 x i32>, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !alias.scope !67036, !noalias !67037
  store <4 x i32> %i.uz, ptr %.sroa.17186.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.21190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29048
  %i.va = load <2 x i32>, ptr %.sroa.13.0..sroa_idx.i.i.i, align 16, !alias.scope !67036, !noalias !67037
  store <2 x i32> %i.va, ptr %.sroa.21190.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.23192.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29056
  store i64 %i.uq, ptr %.sroa.23192.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.24193.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29064
  store i32 %i.ur, ptr %.sroa.24193.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.26195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29072
  store i64 15, ptr %.sroa.26195.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.27196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29080
  store i32 0, ptr %.sroa.27196.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.29198.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29088
  store i64 %i.uu, ptr %.sroa.29198.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.30199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29096
  store i32 %i.uv, ptr %.sroa.30199.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.32201.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29104
  %i.vb = load <2 x i64>, ptr %.sroa.213.0..sroa_idx.i.i.i, align 8, !alias.scope !67036, !noalias !67037
  store <2 x i64> %i.vb, ptr %.sroa.32201.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29120
  %i.vc = load <2 x i32>, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !alias.scope !67036, !noalias !67037
  store <2 x i32> %i.vc, ptr %.sroa.34.0..sroa_idx.i.i, align 16, !noalias !67010
  %.sroa.36.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29128
  store i32 %i.up, ptr %.sroa.36.0..sroa_idx.i.i, align 8, !noalias !67010
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29132
  store i8 %i.uo, ptr %.sroa.37.0..sroa_idx.i.i, align 4, !noalias !67010
  %.sroa.38.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29133
  store i8 %i.us, ptr %.sroa.38.0..sroa_idx.i.i, align 1, !noalias !67010
  %.sroa.40.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29136 ; 2 uses
  store i8 0, ptr %.sroa.40.0..sroa_idx.i.i, align 16, !noalias !67010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12206.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15209.i.i)
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 9728
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.464.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.768.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1071.i.i.i)
  br label %.thread.i.i.i

bb.di:                                            ; preds = %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i, %bb.cp
  %i.ve = phi ptr [ %i.st, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %i.pj, %bb.cp ] ; 4 uses
  %i.vf = phi ptr [ %i.su, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %i.pi, %bb.cp ] ; 2 uses
  %.sroa.0171.4514 = phi i64 [ %.sroa.0171.4518, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ undef, %bb.cp ] ; 2 uses
  %.sroa.14.4498 = phi ptr [ %.sroa.14.4502, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ undef, %bb.cp ] ; 2 uses
  %i.vg = phi ptr [ %i.sv, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.phi.trans.insert.i, %bb.cp ] ; 3 uses
  %i.vh = phi ptr [ %i.sw, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %i.rx, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !67010
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 9552
  call fastcc void @_RNCINvMs5_NtNtNtCsaI3lGUjttVO_5hyper6client4conn5http1NtB8_7Builder9handshakeINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB1m_3net11http_stream15ProxyHttpStreamNtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(5344) %i.ak, ptr noundef nonnull align 16 %i.vi) #61, !noalias !67013
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.vk = load i64, ptr %i.vj, align 16, !range !236, !noalias !67010, !noundef !178 ; 5 uses
  %i.vl = icmp eq i64 %i.vk, -1
  br i1 %i.vl, label %bb.ft, label %bb.fu

bb.dj:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29136 ; 4 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 16, !range !233, !noalias !67038
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12206.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15209.i.i)
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 9728 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.464.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.768.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1071.i.i.i)
  switch i8 %.pre.i.i, label %bb.dk [
    i8 0, label %.thread.i.i.i
    i8 1, label %bb.ee
    i8 3, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  unreachable

.thread.i.i.i:                                    ; preds = %bb.dj, %.thread.i.i
  %i.vn = phi ptr [ %i.st, %.thread.i.i ], [ %i.pj, %bb.dj ]
  %i.vo = phi ptr [ %i.su, %.thread.i.i ], [ %i.pi, %bb.dj ]
  %.sroa.0171.4517 = phi i64 [ %.sroa.0171.4518, %.thread.i.i ], [ undef, %bb.dj ]
  %.sroa.14.4501 = phi ptr [ %.sroa.14.4502, %.thread.i.i ], [ undef, %bb.dj ]
  %i.vp = phi ptr [ %i.sv, %.thread.i.i ], [ %.phi.trans.insert.i, %bb.dj ]
  %i.vq = phi ptr [ %i.sw, %.thread.i.i ], [ %i.rx, %bb.dj ]
  %i.vr = phi ptr [ %.sroa.40.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %bb.dj ]
  %i.vs = phi ptr [ %i.vd, %.thread.i.i ], [ %i.vm, %bb.dj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !67038
  call fastcc void @_RINvNtNtCsaI3lGUjttVO_5hyper6client8dispatch7channelINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtBT_8response8ResponseNtNtNtB6_4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ai) #53, !noalias !67039
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 28960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.vt, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !67038
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 24304
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 28984 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 24288
  %3 = load <2 x ptr>, ptr %i.vu, align 8, !noalias !67038 ; 2 uses
  %.sroa.713.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !67038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4656) %i.vs, ptr noundef nonnull align 16 dereferenceable(4656) %i.vv, i64 4656, i1 false), !noalias !67038
  %i.vy = load <2 x ptr>, ptr %i.vx, align 16, !noalias !67038 ; 2 uses
  store <2 x ptr> %3, ptr %.sroa.713.0..sroa_idx.i.i.i, align 16, !noalias !67038
  %.sroa.915.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14400
  store <2 x ptr> %i.vy, ptr %.sroa.915.0..sroa_idx.i.i.i, align 16, !noalias !67038
  %.sroa.12.0..sroa_idx.i61.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24112
  store ptr %i.vw, ptr %.sroa.12.0..sroa_idx.i61.i.i, align 16, !noalias !67038
  %.sroa.14.0..sroa_idx.i62.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24280 ; 2 uses
  store i8 0, ptr %.sroa.14.0..sroa_idx.i62.i.i, align 8, !noalias !67038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !67038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !67038
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.021.i.i.i.i)
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> %i.vy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24280 ; 3 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !233, !noalias !67040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !67038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !67038
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.021.i.i.i.i)
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  switch i8 %.pre.i.i.i, label %bb.dm [
    i8 0, label %._crit_edge.i.i147
    i8 1, label %bb.dp
    i8 3, label %bb.do
  ]

._crit_edge.i.i147:                               ; preds = %bb.dl
  %.phi.trans.insert316.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14384
  %.phi.trans.insert320.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24112
  %.pre321.i.i = load ptr, ptr %.phi.trans.insert320.i.i, align 16, !noalias !67040
  %5 = load <4 x ptr>, ptr %.phi.trans.insert316.i.i, align 16, !noalias !67040
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  unreachable

bb.dn:                                            ; preds = %._crit_edge.i.i147, %.thread.i.i.i
  %i.wb = phi ptr [ %i.vn, %.thread.i.i.i ], [ %i.pj, %._crit_edge.i.i147 ]
  %i.wc = phi ptr [ %i.vo, %.thread.i.i.i ], [ %i.pi, %._crit_edge.i.i147 ]
  %.sroa.0171.4516 = phi i64 [ %.sroa.0171.4517, %.thread.i.i.i ], [ undef, %._crit_edge.i.i147 ]
  %.sroa.14.4500 = phi ptr [ %.sroa.14.4501, %.thread.i.i.i ], [ undef, %._crit_edge.i.i147 ]
  %i.wd = phi ptr [ %i.vp, %.thread.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i.i147 ]
  %i.we = phi ptr [ %i.vq, %.thread.i.i.i ], [ %i.rx, %._crit_edge.i.i147 ]
  %i.wf = phi ptr [ %i.vr, %.thread.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i.i147 ]
  %i.wg = phi ptr [ %i.vs, %.thread.i.i.i ], [ %i.vm, %._crit_edge.i.i147 ] ; 2 uses
  %i.wh = phi ptr [ %i.vw, %.thread.i.i.i ], [ %.pre321.i.i, %._crit_edge.i.i147 ] ; 2 uses
  %i.wi = phi ptr [ %.sroa.14.0..sroa_idx.i62.i.i, %.thread.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge.i.i147 ]
  %i.wj = phi ptr [ %i.vz, %.thread.i.i.i ], [ %i.wa, %._crit_edge.i.i147 ]
  %6 = phi <4 x ptr> [ %4, %.thread.i.i.i ], [ %5, %._crit_edge.i.i147 ]
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 24281
  %.sroa.021.4656..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.i.i.i.i, i64 4656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4656) %.sroa.021.4656..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(4656) %i.wg, i64 4656, i1 false), !noalias !67040
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 14416
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 24120
  store ptr %i.wh, ptr %i.wm, align 8, !noalias !67040, !captures !231
  store i8 1, ptr %i.wk, align 1, !noalias !67040
  store <4 x ptr> %6, ptr %i.wl, align 16, !noalias !67040
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 24128 ; 2 uses
  call void @_RNvNtNtNtCsaI3lGUjttVO_5hyper5proto2h26client11new_builder(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.wn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.wh) #53, !noalias !67041
  %.sroa.021.9504..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.i.i.i.i, i64 9504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %.sroa.021.9504..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(152) %i.wn, i64 152, i1 false), !noalias !67040
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 14448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9656) %i.wo, ptr noundef nonnull align 16 dereferenceable(9656) %.sroa.021.i.i.i.i, i64 9656, i1 false), !noalias !67040
  %.sroa.7.0..sroa_idx24.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24104
  store i8 0, ptr %.sroa.7.0..sroa_idx24.i.i.i.i, align 8, !noalias !67040
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dl
  %i.wp = phi ptr [ %i.pj, %bb.dl ], [ %i.wb, %bb.dn ] ; 5 uses
  %i.wq = phi ptr [ %i.pi, %bb.dl ], [ %i.wc, %bb.dn ] ; 4 uses
  %.sroa.0171.4515 = phi i64 [ undef, %bb.dl ], [ %.sroa.0171.4516, %bb.dn ] ; 4 uses
  %.sroa.14.4499 = phi ptr [ undef, %bb.dl ], [ %.sroa.14.4500, %bb.dn ] ; 4 uses
  %i.wr = phi ptr [ %.phi.trans.insert.i, %bb.dl ], [ %i.wd, %bb.dn ] ; 5 uses
  %i.ws = phi ptr [ %i.rx, %bb.dl ], [ %i.we, %bb.dn ] ; 4 uses
  %i.wt = phi ptr [ %.phi.trans.insert.i.i, %bb.dl ], [ %i.wf, %bb.dn ] ; 2 uses
  %i.wu = phi ptr [ %i.vm, %bb.dl ], [ %i.wg, %bb.dn ] ; 3 uses
  %i.wv = phi ptr [ %.phi.trans.insert.i.i.i, %bb.dl ], [ %i.wi, %bb.dn ] ; 3 uses
  %i.ww = phi ptr [ %i.wa, %bb.dl ], [ %i.wj, %bb.dn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !67040
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 14448 ; 2 uses
  call fastcc void @_RNCNvMs4_NtCs2dlyTE5y14r_2h26clientINtB7_10ConnectionINtNtNtNtCsaI3lGUjttVO_5hyper6common2io6compat6CompatINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB1P_3net11http_stream15ProxyHttpStreamNtNtNtNtB1N_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEEINtNtNtBY_5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE10handshake20CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(5952) %i.ag, ptr noundef nonnull align 16 %i.wx, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !67042
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ag, i64 5840
  %i.wz = load i64, ptr %i.wy, align 16, !range !236, !noalias !67040, !noundef !178 ; 3 uses
  %i.xa = icmp eq i64 %i.wz, -1
  br i1 %i.xa, label %bb.em, label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @742) #63, !noalias !67041
  unreachable

bb.dq:                                            ; preds = %bb.do
  %.sroa.026.0.copyload.i.i.i.i = load ptr, ptr %i.ag, align 16, !noalias !67040 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5832) %.sroa.3.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(5832) %.sroa.3.0..sroa_idx.i.i.i.i, i64 5832, i1 false), !noalias !67040
  %.sroa.629.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 5848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.629.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.629.0..sroa_idx.i.i.i.i, i64 104, i1 false), !noalias !67040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !67040
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs4_NtCs2dlyTE5y14r_2h26clientINtBJ_10ConnectionINtNtNtNtCsaI3lGUjttVO_5hyper6common2io6compat6CompatINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB2r_3net11http_stream15ProxyHttpStreamNtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEEINtNtNtB1A_5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE10handshake20ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.wx) #53, !noalias !67042
  %i.xb = icmp eq i64 %i.wz, 2                    ; 2 uses
  br i1 %i.xb, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !67043
  store ptr %.sroa.026.0.copyload.i.i.i.i, ptr %i.aa, align 8, !noalias !67044
  %.sroa.3.0..sroa_idx28.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx28.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i.i.i, i64 32, i1 false), !noalias !67040
  %i.xc = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error6new_h2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aa) #53, !noalias !67045 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !67043
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 14432 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67046)
  %i.xe = load ptr, ptr %i.xd, align 16, !alias.scope !67046, !noalias !67040, !noundef !178 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.xe, null
  br i1 %.not.i.i.i.i.i, label %bb.ef, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.xf = atomicrmw sub ptr %i.xe, i64 1 release, align 8, !noalias !67047
  %i.xg = icmp eq i64 %i.xf, 1
  br i1 %i.xg, label %bb.dt, label %bb.ef

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5TimerNtNtCsf3Ta7LF998c_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.xd) #60, !noalias !67042
  br label %bb.ef

bb.du:                                            ; preds = %bb.dq
  %.sroa.532.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 5816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !67040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.532.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.629.i.i.i.i, i64 104, i1 false), !noalias !67040
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5808) %i.ah, ptr noundef nonnull align 8 dereferenceable(5808) %i.xh, i64 5808, i1 false), !noalias !67040
  %.sroa.431.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 5808
  store i64 %i.wz, ptr %.sroa.431.32..sroa_idx.i.i.i.i, align 16, !noalias !67040
  call fastcc void @_RINvNtCslXgxf2tUV4p_15futures_channel4mpsc7channelzECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.af) #53
  %i.xi = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8, !noalias !67040, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !67048
  %i.xk = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !67048 ; 12 uses
  %i.xl = icmp eq ptr %i.xk, null
  br i1 %i.xl, label %bb.dv, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, !prof !183

bb.dv:                                            ; preds = %bb.du
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #62, !noalias !67048
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i: ; preds = %bb.du
  store i64 1, ptr %i.xk, align 8, !noalias !67042
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67042
  %.sroa.5.0..sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx14.i.i.i.i.i, align 8, !noalias !67042
  %.sroa.616.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  store i8 0, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67042
  %.sroa.717.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 40
  store ptr null, ptr %.sroa.717.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67042
  %.sroa.818.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 56
  store i8 0, ptr %.sroa.818.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67042
  %.sroa.919.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 64
  store i8 0, ptr %.sroa.919.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67042
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 65
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 1, !noalias !67042
  %i.xm = atomicrmw add ptr %i.xk, i64 1 monotonic, align 8, !noalias !67042
  %i.xn = icmp slt i64 %i.xm, 0
  br i1 %i.xn, label %bb.dw, label %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channelzECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.dw:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  call void @llvm.trap()
  unreachable

_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channelzECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 24120
  %i.xp = load ptr, ptr %i.xo, align 8, !noalias !67040, !nonnull !178, !align !186, !noundef !178 ; 7 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 148
  %i.xr = load i8, ptr %i.xq, align 4, !range !181, !alias.scope !67049, !noalias !67050, !noundef !178 ; 3 uses
  %i.xs = trunc nuw i8 %i.xr to i1
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 140
  %i.xu = load i32, ptr %i.xt, align 4, !alias.scope !67049, !noalias !67050
  %.sroa.5.0.i.i.i.i.i = select i1 %i.xs, i32 %i.xu, i32 undef
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.xr to i32
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xp, i64 88
  %i.xw = load i64, ptr %i.xv, align 8, !alias.scope !67049, !noalias !67050
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xp, i64 96
  %i.xy = load i32, ptr %i.xx, align 8, !range !198, !alias.scope !67049, !noalias !67050, !noundef !178 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xp, i64 72
  %i.ya = load i64, ptr %i.xz, align 8, !alias.scope !67049, !noalias !67050, !noundef !178
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xp, i64 80
  %i.yc = load i32, ptr %i.yb, align 8, !range !298, !alias.scope !67049, !noalias !67050, !noundef !178
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xp, i64 149
  %i.ye = load i8, ptr %i.yd, align 1, !range !181, !alias.scope !67049, !noalias !67050, !noundef !178
  %.not.i6.i.i.i.i = icmp ne i8 %i.xr, 0
  %i.yf = icmp ne i32 %i.xy, -1
  %.sroa.0.0.i7.i.i.i.i = or i1 %.not.i6.i.i.i.i, %i.yf
  br i1 %.sroa.0.0.i7.i.i.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channelzECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5920) %i.ac, ptr noundef nonnull align 16 dereferenceable(5920) %i.ah, i64 5920, i1 false), !noalias !67040
  br label %bb.ea

bb.dy:                                            ; preds = %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channelzECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.yh = call noundef ptr @_RNvMNtNtCs2dlyTE5y14r_2h25proto9ping_pongNtB2_8PingPong15take_user_pings(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.yg) #53, !noalias !67042 ; 2 uses
  %.not.i8.i.i.i.i = icmp eq ptr %i.yh, null
  br i1 %.not.i8.i.i.i.i, label %bb.dz, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !187

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @743, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @744) #63, !noalias !67042
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.dy
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 24281
  store i8 0, ptr %i.yi, align 1, !noalias !67040
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 14432
  %i.yk = load ptr, ptr %i.yj, align 16, !noalias !67040, !noundef !178
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 14440
  %i.ym = load ptr, ptr %i.yl, align 8, !noalias !67040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !67040
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.ab, align 8, !noalias !67040
  %.sroa.536.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.536.0..sroa_idx.i.i.i.i, align 4, !noalias !67040
  %.sroa.637.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ya, ptr %.sroa.637.0..sroa_idx.i.i.i.i, align 8, !noalias !67040
  %.sroa.738.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.yc, ptr %.sroa.738.0..sroa_idx.i.i.i.i, align 8, !noalias !67040
  %.sroa.840.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.xw, ptr %.sroa.840.0..sroa_idx.i.i.i.i, align 8, !noalias !67040
  %.sroa.941.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 %i.xy, ptr %.sroa.941.0..sroa_idx.i.i.i.i, align 8, !noalias !67040
  %.sroa.1143.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i8 %i.ye, ptr %.sroa.1143.0..sroa_idx.i.i.i.i, align 8, !noalias !67040
  call void @_RNvNtNtNtCsaI3lGUjttVO_5hyper5proto2h24ping7channel(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.ae, ptr noundef nonnull %i.yh, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ab, ptr noundef %i.yk, ptr %i.ym) #53, !noalias !67042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !67040
  %i.yn = load ptr, ptr %i.ae, align 8, !noalias !67040, !noundef !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5920) %i.ac, ptr noundef nonnull align 16 dereferenceable(5920) %i.ah, i64 5920, i1 false), !noalias !67040
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ac, i64 5920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.yo, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.ww, i64 136, i1 false), !noalias !67040
  br label %bb.ea

bb.ea:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.dx
  %.sroa.0.sroa.0.0.i.i.i.i = phi i128 [ 0, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ 1, %bb.dx ]
  %.sroa.5.0.i.i60.i.i = phi ptr [ %i.yn, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ null, %bb.dx ]
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 24281 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !67040
  store i128 %.sroa.0.sroa.0.0.i.i.i.i, ptr %i.ad, align 16, !noalias !67040
  %.sroa.457.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6064) %.sroa.457.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(6064) %i.ac, i64 6064, i1 false), !noalias !67040
  %.sroa.558.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 6080
  store i8 0, ptr %.sroa.558.0..sroa_idx.i.i.i.i, align 16, !noalias !67040
  %.sroa.760.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 6096
  store ptr %i.xj, ptr %.sroa.760.0..sroa_idx.i.i.i.i, align 16, !noalias !67040
  %.sroa.861.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 6104
  store ptr %i.xk, ptr %.sroa.861.0..sroa_idx.i.i.i.i, align 8, !noalias !67040
  call fastcc void @_RNvXNtNtNtCsaI3lGUjttVO_5hyper2rt6bounds9h2_clientNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorINtB2_19Http2ClientConnExecNtNtCsgCecv3eZDcN_5alloc6string6StringINtBO_7TokioIoINtNtNtBU_3net11http_stream15ProxyHttpStreamNtNtNtNtBS_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEE17execute_h2_futureCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(6112) %i.ad) #53, !noalias !67042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !67040
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 14416
  %i.yr = load ptr, ptr %i.yq, align 16, !noalias !67040, !nonnull !178, !noundef !178
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 14424
  %i.yt = load ptr, ptr %i.ys, align 8, !noalias !67040, !nonnull !178, !noundef !178
  %.sroa.464.104..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.464.i.i.i.i, i64 88
end_hunk_0
begin_hunk_1_@_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingE12send_request0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 14344
  %i.ud = load i64, ptr %i.uc, align 8, !alias.scope !68058, !noalias !68059
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 14360
  %i.uf = load i64, ptr %i.ue, align 8, !alias.scope !68058, !noalias !68059
  store i64 0, ptr %i.sw, align 16, !noalias !68042
  %.sroa.7256.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9608
  store i64 %i.ub, ptr %.sroa.7256.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.8257.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9616
  store i64 0, ptr %.sroa.8257.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.9258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9624
  store i64 %i.ud, ptr %.sroa.9258.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.10259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9632
  store i64 0, ptr %.sroa.10259.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.11260.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9640
  store i64 %i.uf, ptr %.sroa.11260.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.13262.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14304
  store i8 0, ptr %.sroa.13262.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.15264.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14312
  store <4 x i8> <i8 1, i8 1, i8 2, i8 0>, ptr %.sroa.15264.0..sroa_idx.i.i, align 8, !noalias !68042
  br label %bb.di

bb.de:                                            ; preds = %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 9752 ; 2 uses
  store ptr null, ptr %i.ug, align 8, !alias.scope !68060, !noalias !68042
  store i64 0, ptr %i.sw, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9616 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9632 ; 2 uses
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9640
  store i64 1024, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !68060, !noalias !68042
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9648 ; 2 uses
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9652
  store i32 16384, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !alias.scope !68060, !noalias !68042
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9656
  store i32 0, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !68060, !noalias !68042
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9664 ; 2 uses
  store i32 0, ptr %.sroa.13.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9672 ; 2 uses
  store i64 20, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !68060, !noalias !68042
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9680 ; 2 uses
  store i32 0, ptr %.sroa.16.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9696 ; 2 uses
  store i32 -1, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9712 ; 2 uses
  store i32 -1, ptr %.sroa.20.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9720 ; 2 uses
  store i64 100, ptr %.sroa.213.0..sroa_idx.i.i.i, align 8, !alias.scope !68060, !noalias !68042
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9728
  store i64 1048576, ptr %.sroa.22.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9736 ; 2 uses
  store i32 5242880, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !alias.scope !68060, !noalias !68042
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9740
  store i32 2097152, ptr %.sroa.24.0..sroa_idx.i.i.i, align 4, !alias.scope !68060, !noalias !68042
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9744 ; 2 uses
  store i32 16384, ptr %.sroa.25.0..sroa_idx.i.i.i, align 16, !alias.scope !68060, !noalias !68042
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9748 ; 2 uses
  store i8 0, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !alias.scope !68060, !noalias !68042
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9749 ; 2 uses
  store i8 0, ptr %.sroa.27.0..sroa_idx.i.i.i, align 1, !alias.scope !68060, !noalias !68042
  call void @llvm.experimental.noalias.scope.decl(metadata !68061)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !68062
  %i.uh = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !68062 ; 6 uses
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %bb.df, label %bb.dg, !prof !183

bb.df:                                            ; preds = %bb.de
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #62, !noalias !68062
  unreachable

bb.dg:                                            ; preds = %bb.de
  store i64 1, ptr %i.uh, align 8, !noalias !68063
  %.sroa.4.0..sroa_idx.i40.i.i = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i40.i.i, align 8, !noalias !68063
  store ptr %i.uh, ptr %i.ug, align 8, !alias.scope !68061, !noalias !68042
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 9760
  store ptr @225, ptr %i.uj, align 16, !alias.scope !68061, !noalias !68042
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 9688
  store i64 15, ptr %i.uk, align 8, !alias.scope !68064, !noalias !68042
  store i32 0, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !alias.scope !68064, !noalias !68042
  call void @llvm.experimental.noalias.scope.decl(metadata !68065)
  call void @llvm.experimental.noalias.scope.decl(metadata !68066)
  %i.ul = atomicrmw add ptr %i.uh, i64 1 monotonic, align 8, !noalias !68067
  %i.um = icmp slt i64 %i.ul, 0
  br i1 %i.um, label %bb.dh, label %.thread.i.i

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.trap()
  unreachable

.thread.i.i:                                      ; preds = %bb.dg
  %i.un = load i8, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !range !181, !alias.scope !68068, !noalias !68069, !noundef !178
  %i.uo = load i32, ptr %.sroa.25.0..sroa_idx.i.i.i, align 16, !alias.scope !68068, !noalias !68069, !noundef !178
  %i.up = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !68068, !noalias !68069, !noundef !178
  %i.uq = load i32, ptr %.sroa.16.0..sroa_idx.i.i.i, align 16, !range !298, !alias.scope !68068, !noalias !68069, !noundef !178
  %i.ur = load i8, ptr %.sroa.27.0..sroa_idx.i.i.i, align 1, !range !181, !alias.scope !68068, !noalias !68069, !noundef !178
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 9704
  %i.ut = load i64, ptr %i.us, align 8, !alias.scope !68068, !noalias !68069
  %i.uu = load i32, ptr %.sroa.20.0..sroa_idx.i.i.i, align 16, !range !198, !alias.scope !68068, !noalias !68069, !noundef !178
  %.sroa.9178.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4656) %.sroa.9178.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(4656) %i.to, i64 4656, i1 false), !noalias !68042
  %.sroa.7176.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24336
  store ptr %i.uh, ptr %.sroa.7176.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.8177.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24344
  store ptr @225, ptr %.sroa.8177.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.11180.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29032
  %i.uv = load <2 x i64>, ptr %i.sw, align 16, !alias.scope !68068, !noalias !68069
  store <2 x i64> %i.uv, ptr %.sroa.11180.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.13182.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29048
  %i.uw = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !alias.scope !68068, !noalias !68069
  store <2 x i64> %i.uw, ptr %.sroa.13182.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.15184.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29064
  %i.ux = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !68068, !noalias !68069
  store <2 x i64> %i.ux, ptr %.sroa.15184.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.17186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29080
  %i.uy = load <4 x i32>, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !alias.scope !68068, !noalias !68069
  store <4 x i32> %i.uy, ptr %.sroa.17186.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.21190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29096
  %i.uz = load <2 x i32>, ptr %.sroa.13.0..sroa_idx.i.i.i, align 16, !alias.scope !68068, !noalias !68069
  store <2 x i32> %i.uz, ptr %.sroa.21190.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.23192.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29104
  store i64 %i.up, ptr %.sroa.23192.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.24193.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29112
  store i32 %i.uq, ptr %.sroa.24193.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.26195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29120
  store i64 15, ptr %.sroa.26195.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.27196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29128
  store i32 0, ptr %.sroa.27196.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.29198.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29136
  store i64 %i.ut, ptr %.sroa.29198.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.30199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29144
  store i32 %i.uu, ptr %.sroa.30199.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.32201.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29152
  %i.va = load <2 x i64>, ptr %.sroa.213.0..sroa_idx.i.i.i, align 8, !alias.scope !68068, !noalias !68069
  store <2 x i64> %i.va, ptr %.sroa.32201.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29168
  %i.vb = load <2 x i32>, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !alias.scope !68068, !noalias !68069
  store <2 x i32> %i.vb, ptr %.sroa.34.0..sroa_idx.i.i, align 16, !noalias !68042
  %.sroa.36.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29176
  store i32 %i.uo, ptr %.sroa.36.0..sroa_idx.i.i, align 8, !noalias !68042
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29180
  store i8 %i.un, ptr %.sroa.37.0..sroa_idx.i.i, align 4, !noalias !68042
  %.sroa.38.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29181
  store i8 %i.ur, ptr %.sroa.38.0..sroa_idx.i.i, align 1, !noalias !68042
  %.sroa.40.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29184 ; 2 uses
  store i8 0, ptr %.sroa.40.0..sroa_idx.i.i, align 16, !noalias !68042
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12206.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15209.i.i)
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 9776
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.464.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.768.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1071.i.i.i)
  br label %.thread.i.i.i

bb.di:                                            ; preds = %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i, %bb.cp
  %i.vd = phi ptr [ %i.ss, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %i.pi, %bb.cp ] ; 4 uses
  %i.ve = phi ptr [ %i.st, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %i.ph, %bb.cp ] ; 2 uses
  %i.vf = phi ptr [ %i.su, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.phi.trans.insert.i, %bb.cp ] ; 3 uses
  %i.vg = phi ptr [ %i.sv, %_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB2_15ProxyHttpStreamNtNtNtNtNtB6_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE16negotiated_http2CsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %i.rw, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !68042
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 9600
  call fastcc void @_RNCINvMs5_NtNtNtCsaI3lGUjttVO_5hyper6client4conn5http1NtB8_7Builder9handshakeINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB1m_3net11http_stream15ProxyHttpStreamNtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtNtBe_4body8incoming8IncomingE0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(5344) %i.ak, ptr noundef nonnull align 16 %i.vh) #61, !noalias !68045
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.vj = load i64, ptr %i.vi, align 16, !range !236, !noalias !68042, !noundef !178 ; 5 uses
  %i.vk = icmp eq i64 %i.vj, -1
  br i1 %i.vk, label %bb.ft, label %bb.fu

bb.dj:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 29184 ; 4 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 16, !range !233, !noalias !68070
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12206.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15209.i.i)
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 9776 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.464.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.768.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1071.i.i.i)
  switch i8 %.pre.i.i, label %bb.dk [
    i8 0, label %.thread.i.i.i
    i8 1, label %bb.ee
    i8 3, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  unreachable

.thread.i.i.i:                                    ; preds = %bb.dj, %.thread.i.i
  %i.vm = phi ptr [ %i.ss, %.thread.i.i ], [ %i.pi, %bb.dj ]
  %i.vn = phi ptr [ %i.st, %.thread.i.i ], [ %i.ph, %bb.dj ]
  %i.vo = phi ptr [ %i.su, %.thread.i.i ], [ %.phi.trans.insert.i, %bb.dj ]
  %i.vp = phi ptr [ %i.sv, %.thread.i.i ], [ %i.rw, %bb.dj ]
  %i.vq = phi ptr [ %.sroa.40.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %bb.dj ]
  %i.vr = phi ptr [ %i.vc, %.thread.i.i ], [ %i.vl, %bb.dj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !68070
  call fastcc void @_RINvNtNtCsaI3lGUjttVO_5hyper6client8dispatch7channelINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB6_4body8incoming8IncomingEINtNtBT_8response8ResponseB1s_EECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ai) #53, !noalias !68071
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 29008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.vs, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !68070
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 24352
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 29032 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 24336
  %3 = load <2 x ptr>, ptr %i.vt, align 8, !noalias !68070 ; 2 uses
  %.sroa.713.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !68070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4656) %i.vr, ptr noundef nonnull align 16 dereferenceable(4656) %i.vu, i64 4656, i1 false), !noalias !68070
  %i.vx = load <2 x ptr>, ptr %i.vw, align 16, !noalias !68070 ; 2 uses
  store <2 x ptr> %3, ptr %.sroa.713.0..sroa_idx.i.i.i, align 16, !noalias !68070
  %.sroa.915.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14448
  store <2 x ptr> %i.vx, ptr %.sroa.915.0..sroa_idx.i.i.i, align 16, !noalias !68070
  %.sroa.12.0..sroa_idx.i61.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24160
  store ptr %i.vv, ptr %.sroa.12.0..sroa_idx.i61.i.i, align 16, !noalias !68070
  %.sroa.14.0..sroa_idx.i62.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24328 ; 2 uses
  store i8 0, ptr %.sroa.14.0..sroa_idx.i62.i.i, align 8, !noalias !68070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !68070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !68070
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.021.i.i.i.i)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> %i.vx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24328 ; 3 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !233, !noalias !68072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !68070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !68070
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.021.i.i.i.i)
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  switch i8 %.pre.i.i.i, label %bb.dm [
    i8 0, label %._crit_edge.i.i145
    i8 1, label %bb.dp
    i8 3, label %bb.do
  ]

._crit_edge.i.i145:                               ; preds = %bb.dl
  %.phi.trans.insert316.i.i = getelementptr inbounds nuw i8, ptr %1, i64 14432
  %.phi.trans.insert320.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24160
  %.pre321.i.i = load ptr, ptr %.phi.trans.insert320.i.i, align 16, !noalias !68072
  %5 = load <4 x ptr>, ptr %.phi.trans.insert316.i.i, align 16, !noalias !68072
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  unreachable

bb.dn:                                            ; preds = %._crit_edge.i.i145, %.thread.i.i.i
  %i.wa = phi ptr [ %i.vm, %.thread.i.i.i ], [ %i.pi, %._crit_edge.i.i145 ]
  %i.wb = phi ptr [ %i.vn, %.thread.i.i.i ], [ %i.ph, %._crit_edge.i.i145 ]
  %i.wc = phi ptr [ %i.vo, %.thread.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i.i145 ]
  %i.wd = phi ptr [ %i.vp, %.thread.i.i.i ], [ %i.rw, %._crit_edge.i.i145 ]
  %i.we = phi ptr [ %i.vq, %.thread.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i.i145 ]
  %i.wf = phi ptr [ %i.vr, %.thread.i.i.i ], [ %i.vl, %._crit_edge.i.i145 ] ; 2 uses
  %i.wg = phi ptr [ %i.vv, %.thread.i.i.i ], [ %.pre321.i.i, %._crit_edge.i.i145 ] ; 2 uses
  %i.wh = phi ptr [ %.sroa.14.0..sroa_idx.i62.i.i, %.thread.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge.i.i145 ]
  %i.wi = phi ptr [ %i.vy, %.thread.i.i.i ], [ %i.vz, %._crit_edge.i.i145 ]
  %6 = phi <4 x ptr> [ %4, %.thread.i.i.i ], [ %5, %._crit_edge.i.i145 ]
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 24329
  %.sroa.021.4656..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.i.i.i.i, i64 4656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4656) %.sroa.021.4656..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(4656) %i.wf, i64 4656, i1 false), !noalias !68072
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 14464
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 24168
  store ptr %i.wg, ptr %i.wl, align 8, !noalias !68072, !captures !231
  store i8 1, ptr %i.wj, align 1, !noalias !68072
  store <4 x ptr> %6, ptr %i.wk, align 16, !noalias !68072
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 24176 ; 2 uses
  call void @_RNvNtNtNtCsaI3lGUjttVO_5hyper5proto2h26client11new_builder(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.wm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.wg) #53, !noalias !68073
  %.sroa.021.9504..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.i.i.i.i, i64 9504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %.sroa.021.9504..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(152) %i.wm, i64 152, i1 false), !noalias !68072
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 14496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9656) %i.wn, ptr noundef nonnull align 16 dereferenceable(9656) %.sroa.021.i.i.i.i, i64 9656, i1 false), !noalias !68072
  %.sroa.7.0..sroa_idx24.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24152
  store i8 0, ptr %.sroa.7.0..sroa_idx24.i.i.i.i, align 8, !noalias !68072
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dl
  %i.wo = phi ptr [ %i.pi, %bb.dl ], [ %i.wa, %bb.dn ] ; 5 uses
  %i.wp = phi ptr [ %i.ph, %bb.dl ], [ %i.wb, %bb.dn ] ; 4 uses
  %i.wq = phi ptr [ %.phi.trans.insert.i, %bb.dl ], [ %i.wc, %bb.dn ] ; 5 uses
  %i.wr = phi ptr [ %i.rw, %bb.dl ], [ %i.wd, %bb.dn ] ; 4 uses
  %i.ws = phi ptr [ %.phi.trans.insert.i.i, %bb.dl ], [ %i.we, %bb.dn ] ; 2 uses
  %i.wt = phi ptr [ %i.vl, %bb.dl ], [ %i.wf, %bb.dn ] ; 3 uses
  %i.wu = phi ptr [ %.phi.trans.insert.i.i.i, %bb.dl ], [ %i.wh, %bb.dn ] ; 3 uses
  %i.wv = phi ptr [ %i.vz, %bb.dl ], [ %i.wi, %bb.dn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !68072
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 14496 ; 2 uses
  call fastcc void @_RNCNvMs4_NtCs2dlyTE5y14r_2h26clientINtB7_10ConnectionINtNtNtNtCsaI3lGUjttVO_5hyper6common2io6compat6CompatINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB1P_3net11http_stream15ProxyHttpStreamNtNtNtNtB1N_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEEINtNtNtBY_5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE10handshake20CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(5952) %i.ag, ptr noundef nonnull align 16 %i.ww, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !68074
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ag, i64 5840
  %i.wy = load i64, ptr %i.wx, align 16, !range !236, !noalias !68072, !noundef !178 ; 3 uses
  %i.wz = icmp eq i64 %i.wy, -1
  br i1 %i.wz, label %bb.em, label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @742) #63, !noalias !68073
  unreachable

bb.dq:                                            ; preds = %bb.do
  %.sroa.026.0.copyload.i.i.i.i = load ptr, ptr %i.ag, align 16, !noalias !68072 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5832) %.sroa.3.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(5832) %.sroa.3.0..sroa_idx.i.i.i.i, i64 5832, i1 false), !noalias !68072
  %.sroa.629.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 5848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.629.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.629.0..sroa_idx.i.i.i.i, i64 104, i1 false), !noalias !68072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !68072
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs4_NtCs2dlyTE5y14r_2h26clientINtBJ_10ConnectionINtNtNtNtCsaI3lGUjttVO_5hyper6common2io6compat6CompatINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB2r_3net11http_stream15ProxyHttpStreamNtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEEINtNtNtB1A_5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE10handshake20ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.ww) #53, !noalias !68074
  %i.xa = icmp eq i64 %i.wy, 2                    ; 2 uses
  br i1 %i.xa, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !68075
  store ptr %.sroa.026.0.copyload.i.i.i.i, ptr %i.aa, align 8, !noalias !68076
  %.sroa.3.0..sroa_idx28.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx28.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i.i.i, i64 32, i1 false), !noalias !68072
  %i.xb = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error6new_h2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aa) #53, !noalias !68077 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !68075
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 14480 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68078)
  %i.xd = load ptr, ptr %i.xc, align 16, !alias.scope !68078, !noalias !68072, !noundef !178 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.xd, null
  br i1 %.not.i.i.i.i.i, label %bb.ef, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.xe = atomicrmw sub ptr %i.xd, i64 1 release, align 8, !noalias !68079
  %i.xf = icmp eq i64 %i.xe, 1
  br i1 %i.xf, label %bb.dt, label %bb.ef

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5TimerNtNtCsf3Ta7LF998c_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.xc) #60, !noalias !68074
  br label %bb.ef

bb.du:                                            ; preds = %bb.dq
  %.sroa.532.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 5816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !68072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.532.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.629.i.i.i.i, i64 104, i1 false), !noalias !68072
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5808) %i.ah, ptr noundef nonnull align 8 dereferenceable(5808) %i.xg, i64 5808, i1 false), !noalias !68072
  %.sroa.431.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 5808
  store i64 %i.wy, ptr %.sroa.431.32..sroa_idx.i.i.i.i, align 16, !noalias !68072
  call fastcc void @_RINvNtCslXgxf2tUV4p_15futures_channel4mpsc7channelzECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.af) #53
  %i.xh = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !noalias !68072, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !68080
  %i.xj = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !68080 ; 12 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %bb.dv, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, !prof !183

bb.dv:                                            ; preds = %bb.du
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #62, !noalias !68080
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i: ; preds = %bb.du
  store i64 1, ptr %i.xj, align 8, !noalias !68074
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68074
  %.sroa.5.0..sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx14.i.i.i.i.i, align 8, !noalias !68074
  %.sroa.616.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 32
  store i8 0, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68074
  %.sroa.717.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 40
  store ptr null, ptr %.sroa.717.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68074
  %.sroa.818.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 56
  store i8 0, ptr %.sroa.818.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68074
  %.sroa.919.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 64
  store i8 0, ptr %.sroa.919.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68074
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 65
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 1, !noalias !68074
  %i.xl = atomicrmw add ptr %i.xj, i64 1 monotonic, align 8, !noalias !68074
  %i.xm = icmp slt i64 %i.xl, 0
  br i1 %i.xm, label %bb.dw, label %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channelzECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.dw:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  call void @llvm.trap()
  unreachable

_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channelzECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 24168
  %i.xo = load ptr, ptr %i.xn, align 8, !noalias !68072, !nonnull !178, !align !186, !noundef !178 ; 7 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 148
  %i.xq = load i8, ptr %i.xp, align 4, !range !181, !alias.scope !68081, !noalias !68082, !noundef !178 ; 3 uses
  %i.xr = trunc nuw i8 %i.xq to i1
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 140
  %i.xt = load i32, ptr %i.xs, align 4, !alias.scope !68081, !noalias !68082
  %.sroa.5.0.i.i.i.i.i = select i1 %i.xr, i32 %i.xt, i32 undef
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.xq to i32
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xo, i64 88
  %i.xv = load i64, ptr %i.xu, align 8, !alias.scope !68081, !noalias !68082
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xo, i64 96
  %i.xx = load i32, ptr %i.xw, align 8, !range !198, !alias.scope !68081, !noalias !68082, !noundef !178 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xo, i64 72
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !68081, !noalias !68082, !noundef !178
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xo, i64 80
  %i.yb = load i32, ptr %i.ya, align 8, !range !298, !alias.scope !68081, !noalias !68082, !noundef !178
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xo, i64 149
  %i.yd = load i8, ptr %i.yc, align 1, !range !181, !alias.scope !68081, !noalias !68082, !noundef !178
  %.not.i6.i.i.i.i = icmp ne i8 %i.xq, 0
  %i.ye = icmp ne i32 %i.xx, -1
  %.sroa.0.0.i7.i.i.i.i = or i1 %.not.i6.i.i.i.i, %i.ye
  br i1 %.sroa.0.0.i7.i.i.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channelzECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5920) %i.ac, ptr noundef nonnull align 16 dereferenceable(5920) %i.ah, i64 5920, i1 false), !noalias !68072
  br label %bb.ea

bb.dy:                                            ; preds = %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channelzECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.yg = call noundef ptr @_RNvMNtNtCs2dlyTE5y14r_2h25proto9ping_pongNtB2_8PingPong15take_user_pings(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.yf) #53, !noalias !68074 ; 2 uses
  %.not.i8.i.i.i.i = icmp eq ptr %i.yg, null
  br i1 %.not.i8.i.i.i.i, label %bb.dz, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !187

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @743, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @744) #63, !noalias !68074
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.dy
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 24329
  store i8 0, ptr %i.yh, align 1, !noalias !68072
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 14480
  %i.yj = load ptr, ptr %i.yi, align 16, !noalias !68072, !noundef !178
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 14488
  %i.yl = load ptr, ptr %i.yk, align 8, !noalias !68072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !68072
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.ab, align 8, !noalias !68072
  %.sroa.536.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.536.0..sroa_idx.i.i.i.i, align 4, !noalias !68072
  %.sroa.637.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.xz, ptr %.sroa.637.0..sroa_idx.i.i.i.i, align 8, !noalias !68072
  %.sroa.738.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.yb, ptr %.sroa.738.0..sroa_idx.i.i.i.i, align 8, !noalias !68072
  %.sroa.840.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.xv, ptr %.sroa.840.0..sroa_idx.i.i.i.i, align 8, !noalias !68072
  %.sroa.941.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 %i.xx, ptr %.sroa.941.0..sroa_idx.i.i.i.i, align 8, !noalias !68072
  %.sroa.1143.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i8 %i.yd, ptr %.sroa.1143.0..sroa_idx.i.i.i.i, align 8, !noalias !68072
  call void @_RNvNtNtNtCsaI3lGUjttVO_5hyper5proto2h24ping7channel(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.ae, ptr noundef nonnull %i.yg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ab, ptr noundef %i.yj, ptr %i.yl) #53, !noalias !68074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !68072
  %i.ym = load ptr, ptr %i.ae, align 8, !noalias !68072, !noundef !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5920) %i.ac, ptr noundef nonnull align 16 dereferenceable(5920) %i.ah, i64 5920, i1 false), !noalias !68072
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ac, i64 5920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.yn, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.wv, i64 136, i1 false), !noalias !68072
  br label %bb.ea

bb.ea:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.dx
  %.sroa.0.sroa.0.0.i.i.i.i = phi i128 [ 0, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ 1, %bb.dx ]
  %.sroa.5.0.i.i60.i.i = phi ptr [ %i.ym, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionNtNtCs2dlyTE5y14r_2h25share8PingPongE6expectCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ null, %bb.dx ]
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 24329 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !68072
  store i128 %.sroa.0.sroa.0.0.i.i.i.i, ptr %i.ad, align 16, !noalias !68072
  %.sroa.457.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6064) %.sroa.457.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(6064) %i.ac, i64 6064, i1 false), !noalias !68072
  %.sroa.558.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 6080
  store i8 0, ptr %.sroa.558.0..sroa_idx.i.i.i.i, align 16, !noalias !68072
  %.sroa.760.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 6096
  store ptr %i.xi, ptr %.sroa.760.0..sroa_idx.i.i.i.i, align 16, !noalias !68072
  %.sroa.861.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 6104
  store ptr %i.xj, ptr %.sroa.861.0..sroa_idx.i.i.i.i, align 8, !noalias !68072
  call fastcc void @_RNvXNtNtNtCsaI3lGUjttVO_5hyper2rt6bounds9h2_clientNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorINtB2_19Http2ClientConnExecNtNtNtB8_4body8incoming8IncomingINtBO_7TokioIoINtNtNtBU_3net11http_stream15ProxyHttpStreamNtNtNtNtBS_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEE17execute_h2_futureCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(6112) %i.ad) #53, !noalias !68074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !68072
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 14464
  %i.yq = load ptr, ptr %i.yp, align 16, !noalias !68072, !nonnull !178, !noundef !178
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 14472
  %i.ys = load ptr, ptr %i.yr, align 8, !noalias !68072, !nonnull !178, !noundef !178
  %.sroa.464.120..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.464.i.i.i.i, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.464.120..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !68070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.767.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i.i, i64 24, i1 false), !noalias !68070
end_hunk_1
