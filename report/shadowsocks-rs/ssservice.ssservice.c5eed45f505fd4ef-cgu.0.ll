Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils20establish_tcp_tunnelNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamNtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice:bb.a
  store i32 1, ptr %i.mr, align 8, !noalias !43891
  %i.ms = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 262, ptr %i.ms, align 4, !noalias !43891
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c) #53, !noalias !43892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43887
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.loopexit76.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43887
  br label %bb.de

bb.dd:                                            ; preds = %bb.at
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @751) #63, !noalias !43858
  unreachable

bb.de:                                            ; preds = %bb.dc, %bb.da, %bb.cz
  %.sroa.13147.0187 = phi i64 [ undef, %bb.dc ], [ %i.ma, %bb.da ], [ %i.ma, %bb.cz ]
  %.sroa.9146.0185 = phi i64 [ %.sroa.9146.0.ph, %bb.dc ], [ %.sroa.7.0.i.i.i, %bb.da ], [ %.sroa.7.0.i.i.i, %bb.cz ] ; 2 uses
  %.sroa.0145.0183 = phi i1 [ true, %bb.dc ], [ false, %bb.da ], [ false, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43887
  call void @llvm.experimental.noalias.scope.decl(metadata !43893)
  call void @llvm.experimental.noalias.scope.decl(metadata !43894)
  %i.mt = load i8, ptr %i.fx, align 8, !range !233, !alias.scope !43895, !noalias !43857, !noundef !178
  %i.mu = icmp samesign ult i8 %i.mt, 2
  br i1 %i.mu, label %bb.df, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.df:                                            ; preds = %bb.de
  %.val1.i.i.i = load i64, ptr %i.fy, align 8, !alias.scope !43896, !noalias !43857, !noundef !178 ; 2 uses
  %i.mv = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.mv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.df
  %.val.i.i.i = load ptr, ptr %i.fv, align 8, !alias.scope !43895, !noalias !43857, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #53, !noalias !43897
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.df, %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !43898)
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8448
  %i.mx = load i8, ptr %i.mw, align 8, !range !233, !alias.scope !43899, !noalias !43857, !noundef !178
  %i.my = icmp samesign ult i8 %i.mx, 2
  br i1 %i.my, label %bb.dg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.dg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 8416
  %.val1.i1.i.i = load i64, ptr %i.mz, align 8, !alias.scope !43900, !noalias !43857, !noundef !178 ; 2 uses
  %i.na = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.na, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0ECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.dg
  %.val.i3.i.i = load ptr, ptr %i.fw, align 8, !alias.scope !43899, !noalias !43857, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #53, !noalias !43901
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0ECsgZAIVb0XKpv_9ssservice.exit

.loopexit198:                                     ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice.exit.i, %bb.ad, %bb.aq, %bb.ae, %bb.ak
  %.sroa.015.1 = phi ptr [ %i.em, %bb.aq ], [ %i.dl, %bb.ad ], [ null, %bb.ae ], [ %i.ea, %bb.ak ], [ inttoptr (i64 98784247811 to ptr), %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8337
  store i8 0, ptr %i.nb, align 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamNtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

.loopexit:                                        ; preds = %bb.cu, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.cm, %bb.cl, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !noalias !43857
  store i8 3, ptr %i.fu, align 1, !noalias !43857
  store i8 7, ptr %i.ab, align 8
  br label %common.ret

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.dg, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !noalias !43857
  store i8 1, ptr %i.fu, align 1, !noalias !43857
  br i1 %.sroa.0145.0183, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.9146.0185, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %.sroa.13147.0187, ptr %i.u, align 8
  %i.nc = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.nd = icmp ult i64 %i.nc, 6
  call void @llvm.assume(i1 %i.nd)
  %i.ne = icmp samesign ugt i64 %i.nc, 4
  br i1 %i.ne, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamNtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.dj:                                            ; preds = %bb.dh
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.nf, ptr %i.t, align 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4151.0..sroa_idx, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.ng, ptr %i.nh, align 8
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4153.0..sroa_idx, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.u, ptr %i.ni, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4155.0..sroa_idx, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.v, ptr %i.nj, align 8
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4157.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @706, ptr %i.s, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 33, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr @706, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 33, ptr %i.nm, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr @713, ptr %i.nn, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull @712, ptr noundef nonnull %i.t, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.di

bb.dk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.no = inttoptr i64 %.sroa.9146.0185 to ptr    ; 2 uses
  store ptr %i.no, ptr %i.r, align 8
  %i.np = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.nq = icmp ult i64 %i.np, 6
  call void @llvm.assume(i1 %i.nq)
  %i.nr = icmp samesign ugt i64 %i.np, 4
  br i1 %i.nr, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.do
  %.val.i = phi ptr [ %i.no, %bb.dk ], [ %.val.i.pre, %bb.do ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43902
  %i.ns = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.nt = and i64 %i.ns, 3
  switch i64 %i.nt, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
    i64 3, label %bb.dm
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
    i64 1, label %bb.dn
  ], !prof !222

bb.dm:                                            ; preds = %bb.dl
  %i.nu = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.nv = and i64 %i.ns, 1095216660480
  %i.nw = icmp ne i64 %i.nv, 1095216660480
  call void @llvm.assume(i1 %i.nu)
  call void @llvm.assume(i1 %i.nw)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit

bb.dn:                                            ; preds = %bb.dl
  %i.nx = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nx) ]
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.nx, ptr %i.ny, align 8, !alias.scope !43903, !noalias !43902
  store i8 3, ptr %i.b, align 8, !alias.scope !43903, !noalias !43902
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ny) #53, !noalias !43902
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.dl, %bb.dl, %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamNtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.do:                                            ; preds = %bb.dk
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.nz, ptr %i.q, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4161.0..sroa_idx, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.oa, ptr %i.ob, align 8
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4163.0..sroa_idx, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.r, ptr %i.oc, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4165.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @706, ptr %i.p, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 33, ptr %i.od, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @706, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 33, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr @715, ptr %i.og, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull @714, ptr noundef nonnull %i.q, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.val.i.pre = load ptr, ptr %i.r, align 8, !alias.scope !43902
  br label %bb.dl
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef i64 @_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtB6_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [3 x i8], align 4                 ; 7 uses
  %i.h = alloca [2 x i8], align 1                 ; 14 uses
  %i.i = alloca [3 x i8], align 4                 ; 7 uses
  %i.j = alloca [2 x i8], align 1                 ; 14 uses
  %.sroa.84.i = alloca [48 x i8], align 8         ; 6 uses
  %.sroa.9.i = alloca [48 x i8], align 8          ; 6 uses
  %i.k = alloca [96 x i8], align 8                ; 16 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [64 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !233, !noundef !178
  switch i8 %i.s, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.cg
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load <2 x ptr>, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !178, !align !186, !noundef !178
  store ptr %i.y, ptr %i.w, align 8, !captures !231
  %i.z = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 6
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp samesign ugt i64 %i.z, 3
  br i1 %i.ab, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x ptr> %i.u, ptr %i.ac, align 8
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %.sroa.856.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.v, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.w, ptr %i.ae, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.447.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44004
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 4, ptr %i.af, align 8, !noalias !44004
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !44004
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !44004
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr @716, ptr %i.ag, align 8, !noalias !44004
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %i.q, ptr %i.ah, align 8, !noalias !44004
  store i64 0, ptr %i.k, align 8, !noalias !44004
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !44004
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !44004
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.ai, align 8, !noalias !44004
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !44004
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !44004
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 1, ptr %i.aj, align 8, !noalias !44004
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  store i32 97, ptr %i.ak, align 4, !noalias !44004
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k) #53, !noalias !44004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !233, !noalias !44005
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  switch i8 %.pre, label %bb.f [
    i8 0, label %.thread.i
    i8 1, label %bb.cf
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

.thread.i:                                        ; preds = %.thread, %bb.e
  %i.am = phi ptr [ %i.ad, %.thread ], [ %i.al, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !44005, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !44005, !nonnull !178, !align !304, !noundef !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !44005
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !44005
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.84.i, i64 noundef 8192) #53, !noalias !44006
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.9.i, i64 noundef 8192) #53, !noalias !44006
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.ao, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !44005
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.aq, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !44005
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !44005
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !44005
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !44005
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !44005
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !44005
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !233, !noalias !44007
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge237
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge237:                                   ; preds = %bb.g
  %.phi.trans.insert238 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre239 = load ptr, ptr %.phi.trans.insert238, align 8, !noalias !44007
  %.phi.trans.insert240 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre241 = load ptr, ptr %.phi.trans.insert240, align 8, !noalias !44007
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %._crit_edge237, %.thread.i
  %i.at = phi ptr [ %i.am, %.thread.i ], [ %i.al, %._crit_edge237 ]
  %i.au = phi ptr [ %i.aq, %.thread.i ], [ %.pre241, %._crit_edge237 ] ; 2 uses
  %i.av = phi ptr [ %i.ao, %.thread.i ], [ %.pre239, %._crit_edge237 ] ; 2 uses
  %i.aw = phi ptr [ %.sroa.10.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge237 ]
  %i.ax = phi ptr [ %i.ar, %.thread.i ], [ %i.as, %._crit_edge237 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !44007
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !44007
  store ptr %i.az, ptr %i.ax, align 8, !noalias !44007
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.av, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !44007
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.au, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !44007
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bb, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !44007
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.as, align 8, !alias.scope !44008, !noalias !44009
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre157.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !44008, !noalias !44009
  %.phi.trans.insert158.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre159.i.i = load ptr, ptr %.phi.trans.insert158.i.i, align 8, !alias.scope !44008, !noalias !44009
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = phi ptr [ %i.al, %bb.j ], [ %i.at, %bb.i ] ; 2 uses
  %i.bd = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.aw, %bb.i ] ; 2 uses
  %i.be = phi ptr [ %i.as, %bb.j ], [ %i.ax, %bb.i ]
  %i.bf = phi ptr [ %.pre159.i.i, %bb.j ], [ %i.au, %bb.i ] ; 6 uses
  %i.bg = phi ptr [ %.pre157.i.i, %bb.j ], [ %i.av, %bb.i ] ; 6 uses
  %i.bh = phi ptr [ %.pre.i.i, %bb.j ], [ %i.az, %bb.i ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44010)
  call void @llvm.experimental.noalias.scope.decl(metadata !44011)
  call void @llvm.experimental.noalias.scope.decl(metadata !44012)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 41 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 68 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 69 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtB6_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice:bb.a
bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i1.i.i = load i64, ptr %i.iz, align 8, !alias.scope !44067, !noalias !44007, !noundef !178 ; 2 uses
  %i.ja = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.ja, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.ce
  %.val.i3.i.i = load ptr, ptr %i.iv, align 8, !alias.scope !44066, !noalias !44007, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #53, !noalias !44068
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.cf:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #63, !noalias !44006
  unreachable

bb.cg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @717) #63
  unreachable

common.ret:                                       ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit, %.loopexit
  %storemerge = phi i8 [ 3, %.loopexit ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit ], [ 1, %bb.ci ]
  %common.ret.op = phi i64 [ 1, %.loopexit ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit ], [ 0, %bb.ci ]
  store i8 %storemerge, ptr %i.r, align 8
  ret i64 %common.ret.op

.loopexit:                                        ; preds = %bb.bv, %bb.bz, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i
  store i8 3, ptr %i.bd, align 8, !noalias !44007
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.84.i), !noalias !44005
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !noalias !44005
  store i8 3, ptr %i.bc, align 8, !noalias !44005
  br label %common.ret

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.ce, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i
  store i8 1, ptr %i.bd, align 8, !noalias !44007
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB24_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.be) #53, !noalias !44006
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.84.i), !noalias !44005
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !noalias !44005
  store i8 1, ptr %i.bc, align 8, !noalias !44005
  br i1 %.sroa.057.0, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.858.0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.12.0, ptr %i.o, align 8
  %i.jb = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.jc = icmp ult i64 %i.jb, 6
  call void @llvm.assume(i1 %i.jc)
  %i.jd = icmp samesign ugt i64 %i.jb, 4
  br i1 %i.jd, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %common.ret

bb.cj:                                            ; preds = %bb.ch
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.je, ptr %i.n, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.jf, ptr %i.jg, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.464.0..sroa_idx, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.jh, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.o, ptr %i.ji, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.468.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44069
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 5, ptr %i.jj, align 8, !noalias !44069
  %.sroa.422.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i27, align 8, !noalias !44069
  %.sroa.523.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i28, align 8, !noalias !44069
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @718, ptr %i.jk, align 8, !noalias !44069
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.n, ptr %i.jl, align 8, !noalias !44069
  store i64 0, ptr %i.d, align 8, !noalias !44069
  %.sroa.428.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i29, align 8, !noalias !44069
  %.sroa.529.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i30, align 8, !noalias !44069
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.jm, align 8, !noalias !44069
  %.sroa.434.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i31, align 8, !noalias !44069
  %.sroa.535.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i32, align 8, !noalias !44069
  %i.jn = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 1, ptr %i.jn, align 8, !noalias !44069
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 101, ptr %i.jo, align 4, !noalias !44069
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #53, !noalias !44069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ci

bb.ck:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.jp = inttoptr i64 %.sroa.858.0 to ptr        ; 2 uses
  store ptr %i.jp, ptr %i.m, align 8
  %i.jq = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.jr = icmp ult i64 %i.jq, 6
  call void @llvm.assume(i1 %i.jr)
  %i.js = icmp samesign ugt i64 %i.jq, 4
  br i1 %i.js, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.co
  %.val.i = phi ptr [ %i.jp, %bb.ck ], [ %.val.i.pre, %bb.co ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44070)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44070
  %i.jt = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ju = and i64 %i.jt, 3
  switch i64 %i.ju, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
    i64 3, label %bb.cm
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
    i64 1, label %bb.cn
  ], !prof !222

bb.cm:                                            ; preds = %bb.cl
  %i.jv = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.jw = and i64 %i.jt, 1095216660480
  %i.jx = icmp ne i64 %i.jw, 1095216660480
  call void @llvm.assume(i1 %i.jv)
  call void @llvm.assume(i1 %i.jx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit

bb.cn:                                            ; preds = %bb.cl
  %i.jy = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jy) ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.jy, ptr %i.jz, align 8, !alias.scope !44071, !noalias !44070
  store i8 3, ptr %i.c, align 8, !alias.scope !44071, !noalias !44070
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jz) #53, !noalias !44070
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.cl, %bb.cl, %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %common.ret

bb.co:                                            ; preds = %bb.ck
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.ka, ptr %i.l, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.477.0..sroa_idx, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.kb, ptr %i.kc, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.479.0..sroa_idx, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.m, ptr %i.kd, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44072
  %i.ke = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.ke, align 8, !noalias !44072
  %.sroa.422.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i37, align 8, !noalias !44072
  %.sroa.523.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i38, align 8, !noalias !44072
  %i.kf = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @719, ptr %i.kf, align 8, !noalias !44072
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.l, ptr %i.kg, align 8, !noalias !44072
  store i64 0, ptr %i.b, align 8, !noalias !44072
  %.sroa.428.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i39, align 8, !noalias !44072
  %.sroa.529.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i40, align 8, !noalias !44072
  %i.kh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.kh, align 8, !noalias !44072
  %.sroa.434.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i41, align 8, !noalias !44072
  %.sroa.535.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i42, align 8, !noalias !44072
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ki, align 8, !noalias !44072
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 107, ptr %i.kj, align 4, !noalias !44072
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !44072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.val.i.pre = load ptr, ptr %i.m, align 8, !alias.scope !44070
  br label %bb.cl
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef i64 @_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtB6_3tun3tcp13TcpConnectionNtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [3 x i8], align 4                 ; 7 uses
  %i.h = alloca [2 x i8], align 1                 ; 14 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [3 x i8], align 4                 ; 7 uses
  %i.l = alloca [2 x i8], align 1                 ; 15 uses
  %.sroa.84.i = alloca [48 x i8], align 8         ; 6 uses
  %.sroa.9.i = alloca [48 x i8], align 8          ; 6 uses
  %i.m = alloca [96 x i8], align 8                ; 16 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !233, !noundef !178
  switch i8 %i.u, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.cg
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <2 x ptr>, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !178, !align !186, !noundef !178
  store ptr %i.aa, ptr %i.y, align 8, !captures !231
  %i.ab = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 6
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ugt i64 %i.ab, 3
  br i1 %i.ad, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x ptr> %i.w, ptr %i.ae, align 8
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %.sroa.856.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.x, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.y, ptr %i.ag, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.447.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !44177
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 4, ptr %i.ah, align 8, !noalias !44177
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !44177
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !44177
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr @716, ptr %i.ai, align 8, !noalias !44177
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr %i.s, ptr %i.aj, align 8, !noalias !44177
  store i64 0, ptr %i.m, align 8, !noalias !44177
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !44177
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !44177
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.ak, align 8, !noalias !44177
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !44177
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !44177
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 1, ptr %i.al, align 8, !noalias !44177
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  store i32 97, ptr %i.am, align 4, !noalias !44177
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m) #53, !noalias !44177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !233, !noalias !44178
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  switch i8 %.pre, label %bb.f [
    i8 0, label %.thread.i
    i8 1, label %bb.cf
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

.thread.i:                                        ; preds = %.thread, %bb.e
  %i.ao = phi ptr [ %i.af, %.thread ], [ %i.an, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !44178, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !44178, !nonnull !178, !align !304, !noundef !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !44178
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !44178
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.84.i, i64 noundef 8192) #53, !noalias !44179
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.9.i, i64 noundef 8192) #53, !noalias !44179
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.aq, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !44178
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.as, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !44178
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !44178
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !44178
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !44178
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !44178
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !44178
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !233, !noalias !44180
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge301
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge301:                                   ; preds = %bb.g
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre303 = load ptr, ptr %.phi.trans.insert302, align 8, !noalias !44180
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre305 = load ptr, ptr %.phi.trans.insert304, align 8, !noalias !44180
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %._crit_edge301, %.thread.i
  %i.av = phi ptr [ %i.ao, %.thread.i ], [ %i.an, %._crit_edge301 ]
  %i.aw = phi ptr [ %i.as, %.thread.i ], [ %.pre305, %._crit_edge301 ] ; 2 uses
  %i.ax = phi ptr [ %i.aq, %.thread.i ], [ %.pre303, %._crit_edge301 ] ; 2 uses
  %i.ay = phi ptr [ %.sroa.10.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge301 ]
  %i.az = phi ptr [ %i.at, %.thread.i ], [ %i.au, %._crit_edge301 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !44180
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !44180
  store ptr %i.bb, ptr %i.az, align 8, !noalias !44180
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ax, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !44180
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aw, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !44180
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bd, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !44180
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.au, align 8, !alias.scope !44181, !noalias !44182
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre221.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !44181, !noalias !44182
  %.phi.trans.insert222.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre223.i.i = load ptr, ptr %.phi.trans.insert222.i.i, align 8, !alias.scope !44181, !noalias !44182
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.an, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %i.bf = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bg = phi ptr [ %i.au, %bb.j ], [ %i.az, %bb.i ]
  %i.bh = phi ptr [ %.pre223.i.i, %bb.j ], [ %i.aw, %bb.i ] ; 6 uses
  %i.bi = phi ptr [ %.pre221.i.i, %bb.j ], [ %i.ax, %bb.i ] ; 4 uses
  %i.bj = phi ptr [ %.pre.i.i, %bb.j ], [ %i.bb, %bb.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44183)
  call void @llvm.experimental.noalias.scope.decl(metadata !44184)
  call void @llvm.experimental.noalias.scope.decl(metadata !44185)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 41 ; 4 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.bk, align 1, !alias.scope !44185, !noalias !44186
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val1.i21.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !44185, !noalias !44186 ; 11 uses
  %i.bm = icmp eq i64 %.val1.i21.i.i.i.i.i, 0     ; 2 uses
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72 ; 4 uses
end_hunk_1
begin_hunk_2_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtB6_3tun3tcp13TcpConnectionNtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice:bb.a
bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i1.i.i = load i64, ptr %i.jp, align 8, !alias.scope !44242, !noalias !44180, !noundef !178 ; 2 uses
  %i.jq = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.jq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.ce
  %.val.i3.i.i = load ptr, ptr %i.jl, align 8, !alias.scope !44241, !noalias !44180, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #53, !noalias !44243
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.cf:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #63, !noalias !44179
  unreachable

bb.cg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @717) #63
  unreachable

common.ret:                                       ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit, %.loopexit
  %storemerge = phi i8 [ 3, %.loopexit ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit ], [ 1, %bb.ci ]
  %common.ret.op = phi i64 [ 1, %.loopexit ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit ], [ 0, %bb.ci ]
  store i8 %storemerge, ptr %i.t, align 8
  ret i64 %common.ret.op

.loopexit:                                        ; preds = %bb.bu, %bb.bz, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i
  store i8 3, ptr %i.bf, align 8, !noalias !44180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.84.i), !noalias !44178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !noalias !44178
  store i8 3, ptr %i.be, align 8, !noalias !44178
  br label %common.ret

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.ce, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i
  store i8 1, ptr %i.bf, align 8, !noalias !44180
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB23_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bg) #53, !noalias !44179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.84.i), !noalias !44178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !noalias !44178
  store i8 1, ptr %i.be, align 8, !noalias !44178
  br i1 %.sroa.057.0, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.sroa.858.0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.12.0, ptr %i.q, align 8
  %i.jr = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.js = icmp ult i64 %i.jr, 6
  call void @llvm.assume(i1 %i.js)
  %i.jt = icmp samesign ugt i64 %i.jr, 4
  br i1 %i.jt, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %common.ret

bb.cj:                                            ; preds = %bb.ch
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.ju, ptr %i.p, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.jv, ptr %i.jw, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.464.0..sroa_idx, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.r, ptr %i.jx, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.jy, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.468.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44244
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 5, ptr %i.jz, align 8, !noalias !44244
  %.sroa.422.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i27, align 8, !noalias !44244
  %.sroa.523.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i28, align 8, !noalias !44244
  %i.ka = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @718, ptr %i.ka, align 8, !noalias !44244
  %i.kb = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.p, ptr %i.kb, align 8, !noalias !44244
  store i64 0, ptr %i.d, align 8, !noalias !44244
  %.sroa.428.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i29, align 8, !noalias !44244
  %.sroa.529.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i30, align 8, !noalias !44244
  %i.kc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.kc, align 8, !noalias !44244
  %.sroa.434.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i31, align 8, !noalias !44244
  %.sroa.535.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i32, align 8, !noalias !44244
  %i.kd = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 1, ptr %i.kd, align 8, !noalias !44244
  %i.ke = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 101, ptr %i.ke, align 4, !noalias !44244
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #53, !noalias !44244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ci

bb.ck:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.kf = inttoptr i64 %.sroa.858.0 to ptr        ; 2 uses
  store ptr %i.kf, ptr %i.o, align 8
  %i.kg = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.kh = icmp ult i64 %i.kg, 6
  call void @llvm.assume(i1 %i.kh)
  %i.ki = icmp samesign ugt i64 %i.kg, 4
  br i1 %i.ki, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.co
  %.val.i = phi ptr [ %i.kf, %bb.ck ], [ %.val.i.pre, %bb.co ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44245
  %i.kj = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.kk = and i64 %i.kj, 3
  switch i64 %i.kk, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
    i64 3, label %bb.cm
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
    i64 1, label %bb.cn
  ], !prof !222

bb.cm:                                            ; preds = %bb.cl
  %i.kl = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.km = and i64 %i.kj, 1095216660480
  %i.kn = icmp ne i64 %i.km, 1095216660480
  call void @llvm.assume(i1 %i.kl)
  call void @llvm.assume(i1 %i.kn)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit

bb.cn:                                            ; preds = %bb.cl
  %i.ko = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ko) ]
  %i.kp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ko, ptr %i.kp, align 8, !alias.scope !44246, !noalias !44245
  store i8 3, ptr %i.c, align 8, !alias.scope !44246, !noalias !44245
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kp) #53, !noalias !44245
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.cl, %bb.cl, %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %common.ret

bb.co:                                            ; preds = %bb.ck
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.kq, ptr %i.n, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.477.0..sroa_idx, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.kr, ptr %i.ks, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.479.0..sroa_idx, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.kt, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44247
  %i.ku = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.ku, align 8, !noalias !44247
  %.sroa.422.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i37, align 8, !noalias !44247
  %.sroa.523.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i38, align 8, !noalias !44247
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @719, ptr %i.kv, align 8, !noalias !44247
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.n, ptr %i.kw, align 8, !noalias !44247
  store i64 0, ptr %i.b, align 8, !noalias !44247
  %.sroa.428.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i39, align 8, !noalias !44247
  %.sroa.529.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i40, align 8, !noalias !44247
  %i.kx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.kx, align 8, !noalias !44247
  %.sroa.434.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i41, align 8, !noalias !44247
  %.sroa.535.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i42, align 8, !noalias !44247
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ky, align 8, !noalias !44247
  %i.kz = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 107, ptr %i.kz, align 4, !noalias !44247
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !44247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val.i.pre = load ptr, ptr %i.o, align 8, !alias.scope !44245
  br label %bb.cl
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef i64 @_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamNtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [3 x i8], align 4                 ; 7 uses
  %i.h = alloca [2 x i8], align 1                 ; 14 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [3 x i8], align 4                 ; 7 uses
  %i.l = alloca [2 x i8], align 1                 ; 15 uses
  %.sroa.84.i = alloca [48 x i8], align 8         ; 6 uses
  %.sroa.9.i = alloca [48 x i8], align 8          ; 6 uses
  %i.m = alloca [96 x i8], align 8                ; 16 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !233, !noundef !178
  switch i8 %i.u, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.cg
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <2 x ptr>, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !178, !align !186, !noundef !178
  store ptr %i.aa, ptr %i.y, align 8, !captures !231
  %i.ab = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 6
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ugt i64 %i.ab, 3
  br i1 %i.ad, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x ptr> %i.w, ptr %i.ae, align 8
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %.sroa.856.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.x, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.y, ptr %i.ag, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.447.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !44352
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 4, ptr %i.ah, align 8, !noalias !44352
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !44352
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !44352
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr @716, ptr %i.ai, align 8, !noalias !44352
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr %i.s, ptr %i.aj, align 8, !noalias !44352
  store i64 0, ptr %i.m, align 8, !noalias !44352
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !44352
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !44352
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.ak, align 8, !noalias !44352
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !44352
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !44352
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 1, ptr %i.al, align 8, !noalias !44352
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  store i32 97, ptr %i.am, align 4, !noalias !44352
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m) #53, !noalias !44352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !233, !noalias !44353
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  switch i8 %.pre, label %bb.f [
    i8 0, label %.thread.i
    i8 1, label %bb.cf
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

.thread.i:                                        ; preds = %.thread, %bb.e
  %i.ao = phi ptr [ %i.af, %.thread ], [ %i.an, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !44353, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !44353, !nonnull !178, !align !304, !noundef !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !44353
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !44353
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.84.i, i64 noundef 8192) #53, !noalias !44354
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.9.i, i64 noundef 8192) #53, !noalias !44354
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.aq, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !44353
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.as, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !44353
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !44353
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !44353
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !44353
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !44353
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !44353
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !233, !noalias !44355
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge301
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge301:                                   ; preds = %bb.g
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre303 = load ptr, ptr %.phi.trans.insert302, align 8, !noalias !44355
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre305 = load ptr, ptr %.phi.trans.insert304, align 8, !noalias !44355
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %._crit_edge301, %.thread.i
  %i.av = phi ptr [ %i.ao, %.thread.i ], [ %i.an, %._crit_edge301 ]
  %i.aw = phi ptr [ %i.as, %.thread.i ], [ %.pre305, %._crit_edge301 ] ; 2 uses
  %i.ax = phi ptr [ %i.aq, %.thread.i ], [ %.pre303, %._crit_edge301 ] ; 2 uses
  %i.ay = phi ptr [ %.sroa.10.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge301 ]
  %i.az = phi ptr [ %i.at, %.thread.i ], [ %i.au, %._crit_edge301 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !44355
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !44355
  store ptr %i.bb, ptr %i.az, align 8, !noalias !44355
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ax, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !44355
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aw, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !44355
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bd, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !44355
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.au, align 8, !alias.scope !44356, !noalias !44357
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre221.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !44356, !noalias !44357
  %.phi.trans.insert222.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre223.i.i = load ptr, ptr %.phi.trans.insert222.i.i, align 8, !alias.scope !44356, !noalias !44357
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.an, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %i.bf = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bg = phi ptr [ %i.au, %bb.j ], [ %i.az, %bb.i ]
  %i.bh = phi ptr [ %.pre223.i.i, %bb.j ], [ %i.aw, %bb.i ] ; 6 uses
  %i.bi = phi ptr [ %.pre221.i.i, %bb.j ], [ %i.ax, %bb.i ] ; 4 uses
  %i.bj = phi ptr [ %.pre.i.i, %bb.j ], [ %i.bb, %bb.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44358)
  call void @llvm.experimental.noalias.scope.decl(metadata !44359)
  call void @llvm.experimental.noalias.scope.decl(metadata !44360)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 41 ; 4 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.bk, align 1, !alias.scope !44360, !noalias !44361
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val1.i21.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !44360, !noalias !44361 ; 11 uses
  %i.bm = icmp eq i64 %.val1.i21.i.i.i.i.i, 0     ; 2 uses
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72 ; 4 uses
end_hunk_2
begin_hunk_3_@_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoINtNtNtBb_3net11http_stream15ProxyHttpStreamNtNtNtNtB9_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write13poll_shutdownCsgZAIVb0XKpv_9ssservice:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !178, !noundef !178
  %i.ax = call noundef i8 %i.aw(i32 noundef %i.at) #53, !inline_history !97501
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ay = lshr i64 %i.aq, 32
  %i.az = icmp ult ptr %i.ao, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i = trunc i64 %i.ay to i8 ; 2 uses
  %i.ba = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.az)
  call void @llvm.assume(i1 %i.ba)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.r:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !range !223, !noundef !178
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %i.ao, i64 31
  %i.be = load i8, ptr %i.bd, align 8, !range !223, !noundef !178
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.ax, %bb.p ], [ %switch.idx.cast.i.i.i.i.i.i.i, %bb.q ], [ %i.bc, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97521
  br i1 %i.bf, label %bb.t, label %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i

bb.t:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97522
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
    i64 3, label %bb.u
    i64 0, label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
    i64 1, label %bb.v
  ], !prof !222

bb.u:                                             ; preds = %bb.t
  %i.bg = icmp ult ptr %i.ao, inttoptr (i64 188978561024 to ptr)
  %i.bh = and i64 %i.aq, 1095216660480
  %i.bi = icmp ne i64 %i.bh, 1095216660480
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.assume(i1 %i.bi)
  br label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bj = getelementptr i8, ptr %i.ao, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !alias.scope !97523, !noalias !97522
  store i8 3, ptr %i.b, align 8, !alias.scope !97523, !noalias !97522
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bk) #53, !noalias !97524
  br label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i

_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97522
  br label %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i

bb.w:                                             ; preds = %bb.m
  %.not19.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not19.i.i.i, label %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.bm = and i64 %i.bl, 3                        ; 2 uses
  switch i64 %i.bm, label %default.unreachable [
    i64 2, label %bb.y
    i64 3, label %bb.z
    i64 0, label %bb.aa
    i64 1, label %bb.ab
  ], !prof !222

bb.y:                                             ; preds = %bb.x
  %i.bn = lshr i64 %i.bl, 32
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !178, !noundef !178
  %i.bs = call noundef i8 %i.br(i32 noundef %i.bo) #53, !inline_history !97506
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bt = lshr i64 %i.bl, 32
  %i.bu = icmp ult ptr %i.ak, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %i.bt to i8 ; 2 uses
  %i.bv = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.assume(i1 %i.bv)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.aa:                                            ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bx = load i8, ptr %i.bw, align 8, !range !223, !noundef !178
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.ab:                                            ; preds = %bb.x
  %i.by = getelementptr i8, ptr %i.ak, i64 31
  %i.bz = load i8, ptr %i.by, align 8, !range !223, !noundef !178
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.i22.i.i.i = phi i8 [ %i.bs, %bb.y ], [ %switch.idx.cast.i.i.i.i.i.i, %bb.z ], [ %i.bx, %bb.aa ], [ %i.bz, %bb.ab ]
  %i.ca = icmp eq i8 %.sroa.0.0.i22.i.i.i, 7
  br i1 %i.ca, label %bb.ac, label %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i

bb.ac:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97525
  switch i64 %i.bm, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i
    i64 3, label %bb.ad
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i
    i64 1, label %bb.ae
  ], !prof !222

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp ult ptr %i.ak, inttoptr (i64 188978561024 to ptr)
  %i.cc = and i64 %i.bl, 1095216660480
  %i.cd = icmp ne i64 %i.cc, 1095216660480
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.assume(i1 %i.cd)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ce = getelementptr i8, ptr %i.ak, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8, !alias.scope !97526, !noalias !97525
  store i8 3, ptr %i.a, align 8, !alias.scope !97526, !noalias !97525
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #53, !noalias !97527
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97525
  br label %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i

bb.af:                                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97521
  %i.cg = icmp eq ptr %i.ao, null
  br i1 %i.cg, label %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.l

bb.ag:                                            ; preds = %bb.j
  br i1 %or.cond.i.i.i, label %.sink.split.i.i, label %.sink.split.sink.split.i.i

bb.ah:                                            ; preds = %bb.j, %bb.j
  br i1 %or.cond.i.i.i, label %.sink.split.i.i, label %.sink.split.sink.split.i.i

_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.af, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i, %bb.w, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i, %bb.m, %bb.i, %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.06.1.pn.i.i = phi i64 [ 0, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i ], [ 0, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i ], [ 1, %bb.m ], [ 1, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ 0, %bb.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ 0, %bb.w ], [ 1, %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ 0, %bb.af ]
  %.sroa.4.1.pn.i.i = phi ptr [ %i.ao, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i ], [ %i.ak, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i ], [ undef, %bb.m ], [ undef, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %i.x, %bb.i ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ null, %bb.w ], [ undef, %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ inttoptr (i64 98784247811 to ptr), %bb.af ]
  %.pn.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.06.1.pn.i.i, 0
  %.merged.i.i = insertvalue { i64, ptr } %.pn.i.i, ptr %.sroa.4.1.pn.i.i, 1
  br label %_RNvXs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB5_15ProxyHttpStreamNtNtNtNtNtB9_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit

bb.ai:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = tail call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.ch, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #53
  br label %_RNvXs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB5_15ProxyHttpStreamNtNtNtNtNtB9_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit

_RNvXs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net11http_streamINtB5_15ProxyHttpStreamNtNtNtNtNtB9_5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i, %bb.ai
  %.pn.i = phi { i64, ptr } [ %.merged.i.i, %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdownCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.ci, %bb.ai ]
  ret { i64, ptr } %.pn.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtBb_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write10poll_flushCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1160) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #53
  ret { i64, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtBb_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write10poll_writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1160) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #53
  ret { i64, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtBb_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write13poll_shutdownCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1160) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #53
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtBb_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write17is_write_vectoredCsgZAIVb0XKpv_9ssservice(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtBb_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write19poll_write_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1160) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) #53
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write10poll_flushCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readnone align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write10poll_writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #53
  ret { i64, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write13poll_shutdownCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #53
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write17is_write_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB5_7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io5Write19poll_write_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) #53
  ret { i64, ptr } %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir9redir_extNtB5_15RedirSocketOptsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2508, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2509, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2507) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseIBX_INtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !181, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97541)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !181, !alias.scope !97541, !noalias !97540, !noundef !178
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread1, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE12next_messageCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #53
  %i.g = load i64, ptr %0, align 8, !range !247, !alias.scope !97540, !noalias !97541, !noundef !178 ; 2 uses
  switch i64 %i.g, label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i [
    i64 -2, label %bb.d
    i64 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %1, align 8, !alias.scope !97542, !noalias !97543, !noundef !178 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.h, null
  br i1 %.not6.i.i, label %bb.i, label %bb.h, !prof !187

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97544)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !97545, !noalias !97543, !noundef !178 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !97546
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCslXgxf2tUV4p_15futures_channel4mpsc12BoundedInnerNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #60, !noalias !97543
  br label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread.i

_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.g, %bb.f, %bb.e
  store ptr null, ptr %1, align 8, !alias.scope !97542, !noalias !97543
  br label %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread5

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvMNtNtNtCsaUkHVQFH9AD_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.0.val) #53, !noalias !97543
  tail call fastcc void @_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE12next_messageCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #53
  %.pr.pre.i = load i64, ptr %0, align 8, !alias.scope !97540, !noalias !97541
  br label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3818) #63, !noalias !97543
  unreachable

_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.h, %bb.c
  %i.n = phi i64 [ %i.g, %bb.c ], [ %.pr.pre.i, %bb.h ]
  switch i64 %i.n, label %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit [
    i64 -2, label %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread
    i64 -1, label %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread5
  ]

_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread1: ; preds = %bb.b
  store i64 -1, ptr %0, align 8, !alias.scope !97540, !noalias !97541
  br label %bb.k

_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread5: ; preds = %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread.i, %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i
  store i8 1, ptr %i.d, align 8, !alias.scope !97541, !noalias !97540
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit

_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i
  store i64 -2, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread5, %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread1
  store i8 1, ptr %i.a, align 8
  br label %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit

_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i, %bb.j, %_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCslXgxf2tUV4p_15futures_channel4mpsc8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !181, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE12next_messageCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #53
  %i.d = load i64, ptr %0, align 8, !range !247, !noundef !178 ; 2 uses
  switch i64 %i.d, label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit [
    i64 -2, label %bb.c
    i64 -1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !alias.scope !97556, !noalias !97557, !noundef !178 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.h, label %bb.g, !prof !187

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97558)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !97559, !noalias !97557, !noundef !178 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !97560
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCslXgxf2tUV4p_15futures_channel4mpsc12BoundedInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestEE9drop_slowCslxdWNweD0x2_11shadowsocks(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #60, !noalias !97557
  br label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.d, %bb.e, %bb.f
  store ptr null, ptr %1, align 8, !alias.scope !97556, !noalias !97557
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvMNtNtNtCsaUkHVQFH9AD_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.0.val) #53, !noalias !97557
  tail call fastcc void @_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE12next_messageCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #53
  %.pr.pre = load i64, ptr %0, align 8
  br label %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3818) #63, !noalias !97557
  unreachable

_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.g, %bb.b
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pr.pre, %bb.g ]
  switch i64 %i.k, label %bb.l [
    i64 -2, label %bb.j
    i64 -1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.j:                                             ; preds = %_RNvXsu_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit
  store i64 -2, ptr %0, align 8
end_hunk_3
begin_hunk_4_@_RNvXs1V_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB6_6ConfigNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt:bb.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1Y_CskLEkjrY29GY_16rustls_pki_typesNtB6_8UnixTimeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2627, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @260) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1_NtCs2Z77Vc7pSLS_13hickory_proto5errorNtB5_10ProtoErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load i8, ptr %0, align 8, !range !188, !noundef !178
  switch i8 %i.l, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.k, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2628, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2629, i64 noundef 3, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2458, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2461, i64 noundef 3, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.j, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2631, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2630) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.i, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2634, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2635, i64 noundef 6, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2632, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2636, i64 noundef 5, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2633) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.h, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2637, i64 noundef 21, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.g, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2639, i64 noundef 7, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2638) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.f, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2640, i64 noundef 3, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @237) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.e, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2641, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2642, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2643, i64 noundef 12) #53
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ad, ptr %i.d, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2645, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2644) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.c, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2493, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2646) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.b, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2647, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2492) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2649, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2648) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.o, %bb.b ], [ %i.q, %bb.c ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.g ], [ %i.ab, %bb.h ], [ %i.ac, %bb.i ], [ %i.ae, %bb.j ], [ %i.ag, %bb.k ], [ %i.ai, %bb.l ], [ %i.ak, %bb.m ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCs2dlyTE5y14r_2h23ext8ProtocolNtB5_8AnyClone10as_any_mutCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2650, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCs2dlyTE5y14r_2h23ext8ProtocolNtB5_8AnyClone6as_anyCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2650, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCs2dlyTE5y14r_2h23ext8ProtocolNtB5_8AnyClone8into_anyCsgZAIVb0XKpv_9ssservice(ptr noalias noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2650, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCs2dlyTE5y14r_2h23ext8ProtocolNtB5_8AnyClone9clone_boxCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !noalias !98147, !nonnull !178, !align !186, !noundef !178
  %i.c = load ptr, ptr %i.b, align 8, !noalias !98147, !nonnull !178, !noundef !178
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !98147, !noundef !178
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !98147, !noundef !178
  call void %i.c(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.d, ptr noundef %i.f, i64 noundef %i.h) #53, !inline_history !98144
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !98148
  %i.i = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !98148 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !183

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #62, !noalias !98148
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @273, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCs2dlyTE5y14r_2h23ext8ProtocolNtB5_8AnyClone9type_nameCsgZAIVb0XKpv_9ssservice(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @2651, i64 17 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone10as_any_mutCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2652, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone6as_anyCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2652, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone8into_anyCsgZAIVb0XKpv_9ssservice(ptr noalias noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2652, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone9clone_boxCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !178 ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.c = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #53 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !183

bb.d:                                             ; preds = %_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #62
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  store ptr %.val, ptr %i.c, align 8
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @275, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone9type_nameCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @2653, i64 25 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs7ewmRfXve8r_4http7requestINtB5_7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2654, i64 noundef 7) #53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2656, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2655) #53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2658, i64 noundef 3, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2657) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i8, ptr %i.g, align 8, !range !234, !noundef !178
  store i8 %i.h, ptr %i.a, align 1
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2660, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2659) #53
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2662, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2661) #53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2663, i64 noundef 4, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2424) #53
  %i.m = call noundef zeroext i1 @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs7ewmRfXve8r_4http7requestINtB5_7RequestNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2654, i64 noundef 7) #53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2656, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2655) #53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2658, i64 noundef 3, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2657) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i8, ptr %i.g, align 8, !range !234, !noundef !178
  store i8 %i.h, ptr %i.a, align 1
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2660, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2659) #53
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2662, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2661) #53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2663, i64 noundef 4, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2664) #53
  %i.m = call noundef zeroext i1 @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs7ewmRfXve8r_4http8responseINtB5_8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2665, i64 noundef 8) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i16, ptr %i.d, align 8, !range !337, !noundef !178
  store i16 %i.e, ptr %i.b, align 2
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2667, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2666) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.h = load i8, ptr %i.g, align 2, !range !234, !noundef !178
  store i8 %i.h, ptr %i.a, align 1
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2660, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2659) #53
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2662, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2661) #53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2663, i64 noundef 4, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2664) #53
  %i.m = call noundef zeroext i1 @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !178 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !178, !align !186, !noundef !178
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXs1_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read4readCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !178 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !178 ; 3 uses
  %i.e = icmp ne i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %.not = icmp ult i64 %2, %i.g
  %or.cond = select i1 %i.e, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98173)
  %i.h = icmp eq i64 %i.b, %i.d
  br i1 %i.h, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !98173, !noalias !98174, !nonnull !178, !noundef !178 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98176)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !98177, !noalias !98178, !noundef !178 ; 2 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.g, i64 %i.l) ; 6 uses
  %i.n = load ptr, ptr %0, align 8, !alias.scope !98177, !noalias !98178, !nonnull !178, !noundef !178 ; 3 uses
  %i.o = icmp eq i64 %i.m, 1
  br i1 %i.o, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.n, align 1, !noalias !98179, !noundef !178
  store i8 %i.p, ptr %i.j, align 1, !alias.scope !98176, !noalias !98180
  br label %_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.m, i1 false), !alias.scope !98181, !noalias !98182
  br label %_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.d
  %i.q = sub nuw nsw i64 %i.l, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.r, ptr %0, align 8, !alias.scope !98177, !noalias !98178, !captures !231
  store i64 %i.q, ptr %i.k, align 8, !alias.scope !98177, !noalias !98178
  store i64 %i.m, ptr %i.c, align 8, !alias.scope !98173, !noalias !98174
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i
  %i.s = phi i64 [ %i.m, %_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.t = phi i64 [ 0, %_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ], [ %i.b, %bb.b ] ; 5 uses
  %i.u = icmp ult i64 %i.s, %i.t
  %.not.i = icmp ugt i64 %i.s, %i.g
  %or.cond.i = or i1 %.not.i, %i.u
  br i1 %or.cond.i, label %bb.e, label %bb.h, !prof !207

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.t, i64 noundef %i.s, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2757) #63, !noalias !98183
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98185)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !98184, !noalias !98185, !noundef !178 ; 2 uses
  %i.x = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %2, i64 %i.w) ; 5 uses
  %i.y = load ptr, ptr %0, align 8, !alias.scope !98184, !noalias !98185, !nonnull !178, !noundef !178 ; 3 uses
  %i.z = icmp eq i64 %i.x, 1
  br i1 %i.z, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.y, align 1, !noalias !98186, !noundef !178
  store i8 %i.aa, ptr %1, align 1, !alias.scope !98185, !noalias !98184
  br label %_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.y, i64 range(i64 0, -9223372036854775808) %i.x, i1 false), !alias.scope !98187, !noalias !98188
  br label %_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit

_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read.exit: ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ab = sub nuw nsw i64 %i.w, %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store ptr %i.ac, ptr %0, align 8, !alias.scope !98184, !noalias !98185, !captures !231
  store i64 %i.ab, ptr %i.v, align 8, !alias.scope !98184, !noalias !98185
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !98173, !noalias !98174, !nonnull !178, !noundef !178
  %i.af = sub nuw i64 %i.s, %i.t
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.t ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98189)
  %i.ah = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %2, i64 %i.af) ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i8

bb.i:                                             ; preds = %bb.h
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !98190, !noundef !178
end_hunk_4
begin_hunk_5_@_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB23_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtBb_3fmt5Write10write_charCsgZAIVb0XKpv_9ssservice:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !107411
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !107411
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107412)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !107412, !noalias !107413, !nonnull !178, !align !186, !noundef !178
  %i.ad = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB11_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #53, !noalias !107412 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB26_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtB8_3fmt5Write9write_strCsgZAIVb0XKpv_9ssservice.exit

bb.h:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !107412, !noalias !107413, !noundef !178 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107414
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i
    i64 1, label %bb.k
  ], !prof !222

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !107415, !noalias !107414
  store i8 3, ptr %i.a, align 8, !alias.scope !107415, !noalias !107414
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #53, !noalias !107416
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107414
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !107412, !noalias !107413
  br label %_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB26_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtB8_3fmt5Write9write_strCsgZAIVb0XKpv_9ssservice.exit

_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB26_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtB8_3fmt5Write9write_strCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB23_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtBb_3fmt5Write9write_fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2z_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtB4_12SpecWriteFmt14spec_write_fmtCsgZAIVb0XKpv_9ssservice.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @479, ptr noundef nonnull %1, ptr noundef nonnull %2) #53, !inline_history !107417
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtBb_3fmt5Write10write_charCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !107427
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !107427
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !107427
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !107427
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !107427
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !107427
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !107427
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !107427
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !107427
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !107427
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107428)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !107428, !noalias !107429, !nonnull !178, !align !186, !noundef !178
  %i.ad = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #53, !noalias !107428 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtB8_3fmt5Write9write_strCsgZAIVb0XKpv_9ssservice.exit

bb.h:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !107428, !noalias !107429, !noundef !178 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107430
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i
    i64 1, label %bb.k
  ], !prof !222

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !107431, !noalias !107430
  store i8 3, ptr %i.a, align 8, !alias.scope !107431, !noalias !107430
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #53, !noalias !107432
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107430
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !107428, !noalias !107429
  br label %_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtB8_3fmt5Write9write_strCsgZAIVb0XKpv_9ssservice.exit

_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtB8_3fmt5Write9write_strCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtBb_3fmt5Write9write_fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtB4_12SpecWriteFmt14spec_write_fmtCsgZAIVb0XKpv_9ssservice.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @480, ptr noundef nonnull %1, ptr noundef nonnull %2) #53, !inline_history !107433
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, ptr } @_RNvYNCNvNvNtNtCsaI3lGUjttVO_5hyper6common4task10noop_waker11NOOP_VTABLE0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTPuEE9call_onceCsgZAIVb0XKpv_9ssservice(ptr nofree readnone captures(none) %0) unnamed_addr #27 {
bb.a:
  ret { ptr, ptr } { ptr @467, ptr null }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCNvNvNtNtCsaI3lGUjttVO_5hyper6common4task10noop_waker11NOOP_VTABLEs0_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTPuEE9call_onceCsgZAIVb0XKpv_9ssservice(ptr nofree readnone captures(none) %0) unnamed_addr #27 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCNvNvNtNtCsaI3lGUjttVO_5hyper6common4task10noop_waker11NOOP_VTABLEs1_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTPuEE9call_onceCsgZAIVb0XKpv_9ssservice(ptr nofree readnone captures(none) %0) unnamed_addr #27 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCNvNvNtNtCsaI3lGUjttVO_5hyper6common4task10noop_waker11NOOP_VTABLEs_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTPuEE9call_onceCsgZAIVb0XKpv_9ssservice(ptr nofree readnone captures(none) %0) unnamed_addr #27 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs2dlyTE5y14r_2h25error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsgZAIVb0XKpv_9ssservice(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @3961, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2dlyTE5y14r_2h25error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsgZAIVb0XKpv_9ssservice(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2dlyTE5y14r_2h25error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsgZAIVb0XKpv_9ssservice(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2dlyTE5y14r_2h25error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsgZAIVb0XKpv_9ssservice(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2dlyTE5y14r_2h25error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3962, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8UFHSMUhzWe_19shadowsocks_service6config5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8UFHSMUhzWe_19shadowsocks_service6config5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8UFHSMUhzWe_19shadowsocks_service6config5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8UFHSMUhzWe_19shadowsocks_service6config5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3963, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsaI3lGUjttVO_5hyper5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @3961, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsaI3lGUjttVO_5hyper5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #37 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107436)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !107436, !nonnull !178, !noundef !178 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noalias !107436, !noundef !178 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvXs1_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noalias !107436, !nonnull !178, !align !186, !noundef !178
  br label %_RNvXs1_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

_RNvXs1_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsaI3lGUjttVO_5hyper5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaI3lGUjttVO_5hyper5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3964, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQNtNtCsgCecv3eZDcN_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsgZAIVb0XKpv_9ssservice.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3176, ptr noundef nonnull %1, ptr noundef nonnull %2) #53, !inline_history !107437
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @3961, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error7provideCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3966, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, i32 } @_RNvYNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client10TokioTimerNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Timer3nowCsgZAIVb0XKpv_9ssservice(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now() #53
  ret { i64, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @3961, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error5causeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error7provideCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3969, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgrade10H2UpgradedNtNtBa_7upgrade2Io15___hyper_type_idCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3970, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgrade10H2UpgradedNtNtNtBa_2rt2io5Write17is_write_vectoredCsgZAIVb0XKpv_9ssservice(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgrade10H2UpgradedNtNtNtBa_2rt2io5Write19poll_write_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %3, 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtB5_2io8io_slice7IoSliceE6map_orRShNCNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgrade10H2UpgradedNtNtNtB1A_2rt2io5Write19poll_write_vectoreds_0ECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtB5_2io8io_slice7IoSliceE6map_orRShNCNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgrade10H2UpgradedNtNtNtB1A_2rt2io5Write19poll_write_vectoreds_0ECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !107442, !noundef !178 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !107443, !noundef !178
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtB5_2io8io_slice7IoSliceE6map_orRShNCNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgrade10H2UpgradedNtNtNtB1A_2rt2io5Write19poll_write_vectoreds_0ECsgZAIVb0XKpv_9ssservice.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtB5_2io8io_slice7IoSliceE6map_orRShNCNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgrade10H2UpgradedNtNtNtB1A_2rt2io5Write19poll_write_vectoreds_0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i = phi ptr [ %.val.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ]
  %i.h = tail call { i64, ptr } @_RNvXs3_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef %.sroa.3.0.i) #53
  ret { i64, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @3961, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3971, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #38

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs1jR6m42rQJO_4rand4rngs6thread3rng() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #38

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtCs5cGWJDriNjd_6notify7inotifyNtB4_14INotifyWatcher18from_event_handler(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #39

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #40

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #42

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #43

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #40

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #38

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #40

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #44

; Function Attrs: noinline nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #8

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #40

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connectionNtB5_16ClientConnection13new_with_alpn(ptr dead_on_unwind noalias nofree noundef writable sret([1056 x i8]) align 8 captures(none) dereferenceable(1056), ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCsb28OZjLZAOu_6rustls5error5ErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef range(i8 0, 44), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #8

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #45

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message9add_query(ptr noalias nofree noundef align 8 dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCs7ewmRfXve8r_4http8responseNtB5_5Parts3new(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs8_NtCsb1q9vQXIC0o_7tracing4spanNtB5_5Inner12follows_from(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCsb28OZjLZAOu_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias nofree noundef align 8 dereferenceable(840), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCsb28OZjLZAOu_6rustls4msgs7messageNtB5_7Message17is_handshake_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), i8 noundef range(i8 0, 21), i8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCsb28OZjLZAOu_6rustls12common_stateNtB2_11CommonState18send_warning_alert(ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsa_Cse61XOjpEG4u_4mimeNtB5_4MimeNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i8 -1, 41) i8 @_RNvXs1_NtCsbYq7bIcWEdL_18shadowsocks_crypto4kindNtB5_10CipherKindNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #38

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortTyjENvYBT_NtNtB8_3cmp10PartialOrd2ltECs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #46

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsknai52m1gBp_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsknai52m1gBp_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message10add_answer(ptr noalias nofree noundef align 8 dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message14add_additional(ptr noalias nofree noundef align 8 dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message13add_authority(ptr noalias nofree noundef align 8 dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #0

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #47

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsl_NtCs1kwRxRulhfk_12tracing_core5fieldNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCs2dlyTE5y14r_2h25frame6reasonNtB5_6ReasonNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #42

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMCsckWnq44jmzE_12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsczhfDQ1qNkX_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cse61XOjpEG4u_4mimeNtB4_12FromStrErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs2dlyTE5y14r_2h25errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsI_NtCs5Xr050g3D4S_3std7processNtB5_10ExitStatusNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs5cGWJDriNjd_6notify5errorNtB4_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_5
