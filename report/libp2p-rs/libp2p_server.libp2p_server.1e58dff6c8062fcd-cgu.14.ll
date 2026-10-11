Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.14?download=true
inline.NumInlined: 3209
inline.NumDeleted: 1562
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls6AcceptNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtBb_3fns8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB3W_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtB2A_9TransportNtB2w_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE11map_upgrade00EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server:bb.a
bb.h:                                             ; preds = %bb.l, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.g ], [ false, %bb.l ]
  %.sroa.07.0.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.sroa.07.184.i.lcssa.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !noalias !4980, !noundef !17
  %.not73.not.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not73.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.sroa.0.174.i.i.i.i.i = phi i64 [ %i.ay, %bb.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.au = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs2Bxje7pdMIr_13libp2p_server(ptr nonnull %i.t, ptr nonnull %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !4978 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 2 uses
  switch i64 %i.av, label %.noexc72.i.i.i.i [
    i64 2, label %._crit_edge.i.i.i.i.i
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = add i64 %.sroa.0.174.i.i.i.i.i, %i.ax   ; 2 uses
  %i.az = load i64, ptr %i.an, align 8, !noalias !4980, !noundef !17
  %.not.not.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %.noexc.i.i.i.i, %bb.h
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.h ], [ %.sroa.0.174.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.ay, %bb.i ] ; 2 uses
  %.not.lcssa.i.i.i.i.i = phi i1 [ false, %bb.h ], [ true, %.noexc.i.i.i.i ], [ false, %bb.i ]
  br i1 %i.as, label %.thread.i.i.i.i.i, label %.lr.ph86.i.preheader.i.i.i.i

.lr.ph86.i.preheader.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i
  %i.ba = load i64, ptr %i.ao, align 8, !noalias !4980, !noundef !17
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = load i8, ptr %i.ap, align 1, !range !18, !noalias !4973
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond161194.i.i.i.i = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %or.cond161194.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph86.i.i.i.i.i:                               ; preds = %bb.k
  %i.be = ptrtoint ptr %i.cd to i64
  %i.bf = add i64 %.sroa.07.184.i195.i.i.i.i, %i.be ; 2 uses
  %i.bg = load i64, ptr %i.ao, align 8, !noalias !4980, !noundef !17
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = load i8, ptr %i.ap, align 1, !range !18, !noalias !4973
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond161.i.i.i.i = select i1 %i.bh, i1 true, i1 %i.bj
  br i1 %or.cond161.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph86.i.i.i.i.i, %.lr.ph86.i.preheader.i.i.i.i
  %.sroa.07.184.i.lcssa.i.i.i.i = phi i64 [ %.sroa.07.0.i.i.i.i.i, %.lr.ph86.i.preheader.i.i.i.i ], [ %.sroa.07.184.i195.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bf, %.lr.ph86.i.i.i.i.i ] ; 2 uses
  %i.bk = load i8, ptr %i.ah, align 2, !range !18, !noalias !4980, !noundef !17 ; 2 uses
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load i8, ptr %i.ai, align 1, !range !18, !noalias !4973 ; 2 uses
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond165.i.i.i.i = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %or.cond165.i.i.i.i, label %.loopexit172.i.i.i.i, label %bb.l

._crit_edge.thread.i.i.i.i:                       ; preds = %.noexc71.i.i.i.i
  %i.bo = load i8, ptr %i.ah, align 2, !range !18, !noalias !4980, !noundef !17 ; 2 uses
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.ai, align 1, !range !18, !noalias !4973 ; 2 uses
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond165224.i.i.i.i = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond165224.i.i.i.i, label %.loopexit172.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i.i, %.thread118.i.i.i.i.i
  %i.bs = phi i8 [ 1, %.thread118.i.i.i.i.i ], [ %i.aq, %._crit_edge.i.i.i.i.i ]
  %i.bt = load i8, ptr %i.ah, align 2, !range !18, !noalias !4980, !noundef !17
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load i8, ptr %i.ai, align 1, !range !18, !noalias !4973
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond159.i.i.i.i = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond159.i.i.i.i, label %.loopexit172.i.i.i.i, label %.thread50.i.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph86.i.preheader.i.i.i.i, %.lr.ph86.i.i.i.i.i
  %.sroa.07.184.i195.i.i.i.i = phi i64 [ %i.bf, %.lr.ph86.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i, %.lr.ph86.i.preheader.i.i.i.i ] ; 3 uses
  %i.bx = load i8, ptr %i.ah, align 2, !range !18, !noalias !4980, !noundef !17
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load i64, ptr %i.an, align 8, !noalias !4973
  %i.ca = icmp eq i64 %i.bz, 0
  %or.cond163.i.i.i.i = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond163.i.i.i.i, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE7read_ioCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc71.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !4978 ; 2 uses

.noexc71.i.i.i.i:                                 ; preds = %bb.j
  %i.cc = extractvalue { i64, ptr } %i.cb, 0
  %i.cd = extractvalue { i64, ptr } %i.cb, 1      ; 3 uses
  switch i64 %i.cc, label %.noexc72.i.i.i.i [
    i64 2, label %._crit_edge.thread.i.i.i.i
    i64 0, label %bb.k
  ]

bb.k:                                             ; preds = %.noexc71.i.i.i.i
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.thread118.i.i.i.i.i, label %.lr.ph86.i.i.i.i.i

.thread118.i.i.i.i.i:                             ; preds = %bb.k
  store i8 1, ptr %.sroa.539.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4979, !noalias !4981
  br label %.thread.i.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  br i1 %.not.lcssa.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.h

.thread50.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i
  %i.cf = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 17) #41
          to label %.noexc72.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !4978

.thread.i.i.i.i:                                  ; preds = %bb.l, %._crit_edge.thread.i.i.i.i
  %.sroa.07.184.i.lcssa225229.i.i.i.i = phi i64 [ %.sroa.07.184.i195.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.sroa.07.184.i.lcssa.i.i.i.i, %bb.l ]
  %i.cg = phi i8 [ %i.bo, %._crit_edge.thread.i.i.i.i ], [ %i.bk, %bb.l ]
  %i.ch = phi i8 [ %i.bq, %._crit_edge.thread.i.i.i.i ], [ %i.bm, %bb.l ]
  %i.ci = icmp eq i64 %.sroa.07.184.i.lcssa225229.i.i.i.i, 0
  %i.cj = icmp eq i64 %.sroa.0.1.lcssa.i.i.i.i.i, 0
  %or.cond3.i.i.i.i.i = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond3.i.i.i.i.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, label %.loopexit172.i.i.i.i

._crit_edge204.i.i.i.i:                           ; preds = %.loopexit172.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4982
  store ptr %i.ae, ptr %i.d, align 8, !noalias !4982
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @172, ptr %i.ck, align 8, !noalias !4982
  %i.cl = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc75.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !4978 ; 2 uses

.noexc75.i.i.i.i:                                 ; preds = %._crit_edge204.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4982
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc75.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  br label %bb.n

bb.n:                                             ; preds = %.noexc76.i.i.i.i, %bb.m
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !4983, !noundef !17
  %.not16.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not16.i.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs2Bxje7pdMIr_13libp2p_server(ptr nonnull %i.t, ptr nonnull %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc76.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !4978 ; 2 uses

.noexc76.i.i.i.i:                                 ; preds = %bb.o
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  switch i64 %i.cp, label %bb.p [
    i64 2, label %bb.q
    i64 0, label %bb.n
  ]

bb.p:                                             ; preds = %.noexc76.i.i.i.i
  %i.cq = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br label %bb.r

bb.q:                                             ; preds = %.noexc76.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.e, ptr noundef nonnull align 8 dereferenceable(1208) %i.t, i64 1208, i1 false), !noalias !4973
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %1)
          to label %bb.w unwind label %bb.v, !noalias !4984

bb.r:                                             ; preds = %bb.p, %.noexc75.i.i.i.i
  %.sroa.5.0.i.ph.ph.i.i.i.i = phi ptr [ %i.cl, %.noexc75.i.i.i.i ], [ %i.cq, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4973
  store ptr %.sroa.5.0.i.ph.ph.i.i.i.i, ptr %i.h, align 8, !noalias !4973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.f, ptr noundef nonnull align 8 dereferenceable(1208) %i.t, i64 1208, i1 false), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !4973
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.cr)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i unwind label %bb.t, !noalias !4978

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4973
  %.sroa.0.0.copyload2.i.i.i = load i64, ptr %i.t, align 8, !noalias !4985
  %.sroa.12.0.copyload4.i.i.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i.i.i, align 8, !noalias !4985
  %.sroa.17.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.0..sroa_idx5.i.i.i, i64 32, i1 false), !noalias !4985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i.i.i, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.614.0..sroa_idx.i.i.i.i, i64 1160, i1 false), !noalias !4985
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #37
          to label %common.resume unwind label %bb.u, !noalias !4978

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !4985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4973
  br label %bb.x

bb.u:                                             ; preds = %bb.aw, %bb.av, %.thread114.i.i.i.i, %bb.ar, %3, %.loopexit.split-lp.i.i.i.i, %bb.y, %bb.t
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !4984
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.sink.split.i.i.i.i

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.e, i64 1208, i1 false), !noalias !4975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4973
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i, %bb.w, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %.sroa.12.2.i.i.i = phi ptr [ %.sroa.5.0.i.ph.ph.i.i.i.i, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ], [ undef, %bb.w ], [ %.sroa.1093.0.ph.i.i.i.i, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i ], [ undef, %bb.aa ]
  %.sroa.0.2.i.i.i = phi i64 [ 2, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ], [ -1, %bb.w ], [ 2, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4973
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.i, ptr noundef nonnull align 8 dereferenceable(1208) %i.t, i64 1208, i1 false), !noalias !4973
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %1)
          to label %bb.aa unwind label %bb.z, !noalias !4984

.noexc72.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i, %.noexc71.i.i.i.i, %.thread50.i.i.i.i.i
  %.sroa.1093.0.ph.i.i.i.i = phi ptr [ %i.cf, %.thread50.i.i.i.i.i ], [ %i.cd, %.noexc71.i.i.i.i ], [ %i.aw, %.noexc.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4973
  store ptr %.sroa.1093.0.ph.i.i.i.i, ptr %i.l, align 8, !noalias !4973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.j, ptr noundef nonnull align 8 dereferenceable(1208) %i.t, i64 1208, i1 false), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !4973
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.cv)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i unwind label %bb.y, !noalias !4978

.loopexit172.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i, %.thread.i.i.i.i, %.thread.i.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.cw = phi i8 [ 1, %.thread.i.i.i.i.i ], [ %i.ch, %.thread.i.i.i.i ], [ 1, %._crit_edge.thread.i.i.i.i ], [ 1, %._crit_edge.i.i.i.i ]
  %i.cx = phi i8 [ 1, %.thread.i.i.i.i.i ], [ %i.cg, %.thread.i.i.i.i ], [ 1, %._crit_edge.thread.i.i.i.i ], [ 1, %._crit_edge.i.i.i.i ]
  %.ph.i.i.i.i = phi i8 [ %i.bs, %.thread.i.i.i.i.i ], [ %i.aq, %.thread.i.i.i.i ], [ %i.aq, %._crit_edge.thread.i.i.i.i ], [ %i.aq, %._crit_edge.i.i.i.i ]
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = trunc nuw i8 %i.cw to i1
  %or.cond157.i.i.i.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond157.i.i.i.i, label %._crit_edge204.i.i.i.i, label %bb.g

bb.y:                                             ; preds = %.noexc72.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #37
          to label %common.resume unwind label %bb.u, !noalias !4978

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i: ; preds = %.noexc72.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !4985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4973
  br label %bb.x

bb.z:                                             ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.sink.split.i.i.i.i

bb.aa:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.i, i64 1208, i1 false), !noalias !4975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4973
  br label %bb.x

.thread131.sink.split.i.i.i.i:                    ; preds = %bb.z, %bb.v
  %.sink.i.i.i.i = phi ptr [ %i.e, %bb.v ], [ %i.i, %bb.z ]
  %.pn68.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.v ], [ %i.db, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %.sink.i.i.i.i, i64 1208, i1 false), !noalias !4975
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.bo, %bb.t, %bb.y, %.thread131.sink.split.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %bb.ap, %bb.ar, %.thread149.i.i.i.i, %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.en, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i ], [ %.pn68.pn.ph.i.i.i.i, %.thread131.sink.split.i.i.i.i ], [ %lpad.phi.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.ef, %bb.ap ], [ %.pn.pn122147.i.i.i.i, %bb.aw ], [ %.pn.pn122147.i.i.i.i, %.thread149.i.i.i.i ], [ %i.eh, %bb.ar ], [ %i.cs, %bb.t ], [ %i.da, %bb.y ], [ %i.fd, %bb.bo ], [ %i.ey, %.body ]
  resume { ptr, i32 } %common.resume.op

.loopexit.i.i.i.i:                                ; preds = %bb.o
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %bb.j
  %lpad.loopexit166.i.i.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit169.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i: ; preds = %._crit_edge204.i.i.i.i, %.thread50.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit166.i.i.i.i.a, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit169.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.t) #37
          to label %common.resume unwind label %bb.u, !noalias !4978

bb.ab:                                            ; preds = %bb.aj, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4973
  store ptr %i.s, ptr %i.o, align 8, !noalias !4973
  store ptr %2, ptr %i.ab, align 8, !noalias !4973
  %i.dc = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @109)
          to label %bb.ac unwind label %.thread124.thread141.i.i.i.i, !noalias !4978 ; 2 uses

.thread124.thread141.i.i.i.i:                     ; preds = %bb.ab
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.thread114.i.i.i.i

.thread143.i.i.i.i:                               ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ac:                                            ; preds = %bb.ab
  %i.df = extractvalue { i64, ptr } %i.dc, 0      ; 2 uses
  %i.dg = extractvalue { i64, ptr } %i.dc, 1      ; 12 uses
  store i64 %i.df, ptr %i.p, align 8, !noalias !4973
  store ptr %i.dg, ptr %i.ac, align 8, !noalias !4973
  %i.dh = trunc nuw i64 %i.df to i1
  br i1 %i.dh, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.di = ptrtoint ptr %i.dg to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  %i.dj = and i64 %i.di, 3                        ; 3 uses
  switch i64 %i.dj, label %default.unreachable [
    i64 2, label %bb.ae
    i64 3, label %bb.af
    i64 0, label %bb.ag
    i64 1, label %bb.ah
  ], !prof !28

bb.ae:                                            ; preds = %bb.ad
  %i.dk = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc81.i.i.i.i unwind label %3, !noalias !4978

.noexc81.i.i.i.i:                                 ; preds = %bb.ae
  %i.dl = lshr i64 %i.di, 32
  %i.dm = trunc nuw i64 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !4978, !nonnull !17, !noundef !17
  %i.dp = invoke noundef i8 %i.do(i32 noundef %i.dm)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i unwind label %3, !noalias !4978, !inline_history !8

bb.af:                                            ; preds = %bb.ad
  %i.dq = lshr i64 %i.di, 32
  %i.dr = icmp ult ptr %i.dg, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i = trunc i64 %i.dq to i8 ; 2 uses
  %i.ds = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.assume(i1 %i.ds)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.du = load i8, ptr %i.dt, align 8, !range !65, !noalias !4978, !noundef !17
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ad
  %i.dv = getelementptr i8, ptr %i.dg, i64 31
  %i.dw = load i8, ptr %i.dv, align 8, !range !65, !noalias !4978, !noundef !17
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ac
  %i.dx = icmp eq ptr %i.dg, null
  br i1 %i.dx, label %.loopexit173.i.i.i.i, label %bb.aj

.loopexit173.i.i.i.i:                             ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !4985
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4973
  br label %bb.ab

3:                                                ; preds = %.noexc81.i.i.i.i, %bb.ae
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #37
          to label %.thread114.i.i.i.i unwind label %bb.u, !noalias !4978

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %.noexc81.i.i.i.i
  %.sroa.0.0.i80.i.i.i.i = phi i8 [ %i.dw, %bb.ah ], [ %switch.idx.cast.i.i.i.i.i.i.i, %bb.af ], [ %i.du, %bb.ag ], [ %i.dp, %.noexc81.i.i.i.i ]
  %i.dy = icmp eq i8 %.sroa.0.0.i80.i.i.i.i, 13
  br i1 %i.dy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4973
  store ptr %i.dg, ptr %i.n, align 8, !noalias !4973
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false), !noalias !4973
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %1)
          to label %bb.as unwind label %bb.ar, !noalias !4984

bb.al:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !4985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4986
  switch i64 %i.dj, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
    i64 3, label %bb.am
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
    i64 1, label %bb.an
  ], !prof !28

bb.am:                                            ; preds = %bb.al
  %i.dz = icmp ult ptr %i.dg, inttoptr (i64 188978561024 to ptr)
  %i.ea = and i64 %i.di, 1095216660480
  %i.eb = icmp ne i64 %i.ea, 1095216660480
  call void @llvm.assume(i1 %i.dz)
  call void @llvm.assume(i1 %i.eb)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.ec = getelementptr i8, ptr %i.dg, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !4987, !noalias !4986
  store i8 3, ptr %i.c, align 8, !alias.scope !4987, !noalias !4986
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i unwind label %.thread143.i.i.i.i, !noalias !4978

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4986
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, %.loopexit173.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4973
  %i.ee = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i unwind label %bb.ap, !noalias !4978

bb.ap:                                            ; preds = %bb.ao
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %common.resume unwind label %bb.aq, !noalias !4978

bb.aq:                                            ; preds = %bb.ap
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !4978
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i: ; preds = %bb.ao
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ee), !noalias !4978
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.eh = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8, !alias.scope !4974, !noalias !4975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.i.i.i.i, i64 32, i1 false), !noalias !4975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620.i.i.i.i, i64 56, i1 false), !noalias !4975
  store ptr %.sroa.107.0.copyload.i.i.i.i, ptr %.sroa.107.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4974, !noalias !4975
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #37
          to label %common.resume unwind label %bb.u, !noalias !4984

bb.as:                                            ; preds = %bb.ak
  store i64 3, ptr %1, align 8, !alias.scope !4974, !noalias !4975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.i.i.i.i, i64 32, i1 false), !noalias !4975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620.i.i.i.i, i64 56, i1 false), !noalias !4975
  store ptr %.sroa.107.0.copyload.i.i.i.i, ptr %.sroa.107.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4974, !noalias !4975
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4988
  switch i64 %i.dj, label %default.unreachable [
    i64 2, label %.critedge.i.i.i.i
    i64 3, label %bb.at
    i64 0, label %.critedge.i.i.i.i
    i64 1, label %bb.au
  ], !prof !28

bb.at:                                            ; preds = %bb.as
  %i.ei = icmp ult ptr %i.dg, inttoptr (i64 188978561024 to ptr)
  %i.ej = and i64 %i.di, 1095216660480
  %i.ek = icmp ne i64 %i.ej, 1095216660480
  call void @llvm.assume(i1 %i.ei)
  call void @llvm.assume(i1 %i.ek)
  br label %.critedge.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.el = getelementptr i8, ptr %i.dg, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !alias.scope !4989, !noalias !4988
  store i8 3, ptr %i.b, align 8, !alias.scope !4989, !noalias !4988
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.em), !noalias !4984
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.au, %bb.at, %bb.as, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4973
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i
  %.sroa.12.1.i.i.i = phi ptr [ undef, %.critedge.i.i.i.i ], [ %.sroa.107.0.copyload.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ -1, %.critedge.i.i.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4973
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

.thread149.i.i.i.i:                               ; preds = %bb.av
  br i1 %.sroa.060.0120148.i.i.i.i, label %bb.aw, label %common.resume

.thread114.i.i.i.i:                               ; preds = %3, %.thread124.thread141.i.i.i.i
  %.pn.pn123.i.i.i.i = phi { ptr, i32 } [ %i.dd, %.thread124.thread141.i.i.i.i ], [ %4, %3 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #37
          to label %bb.av unwind label %bb.u, !noalias !4978

bb.av:                                            ; preds = %.thread114.i.i.i.i, %.thread143.i.i.i.i
  %.sroa.060.0120148.i.i.i.i = phi i1 [ false, %.thread143.i.i.i.i ], [ true, %.thread114.i.i.i.i ]
  %.pn.pn122147.i.i.i.i = phi { ptr, i32 } [ %i.de, %.thread143.i.i.i.i ], [ %.pn.pn123.i.i.i.i, %.thread114.i.i.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r) #37
          to label %.thread149.i.i.i.i unwind label %bb.u, !noalias !4978

bb.aw:                                            ; preds = %.thread149.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #37
          to label %common.resume unwind label %bb.u, !noalias !4978

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, %bb.x, %bb.s
  %.sroa.12.3.i.i.i = phi ptr [ %.sroa.12.0.copyload4.i.i.i, %bb.s ], [ %.sroa.12.2.i.i.i, %bb.x ], [ %.sroa.12.1.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.3.i.i.i = phi i64 [ %.sroa.0.0.copyload2.i.i.i, %bb.s ], [ %.sroa.0.2.i.i.i, %bb.x ], [ %.sroa.0.1.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4973
  switch i64 %.sroa.0.3.i.i.i, label %bb.bd [
    i64 -1, label %bb.be
    i64 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i.i
  %.sroa.12.317.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i.i ], [ %.sroa.12.3.i.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ] ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, i64 32, i1 false), !noalias !4990
  store ptr %.sroa.12.317.i.i.i, ptr %i.u, align 8, !noalias !4990
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i)
          to label %bb.ba unwind label %bb.ay, !noalias !4991

bb.ay:                                            ; preds = %bb.ax
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val2.i.i.i.i.i.i = load i32, ptr %i.eo, align 8, !alias.scope !4992, !noalias !4990, !noundef !17 ; 2 uses
  %i.ep = icmp eq i32 %.val2.i.i.i.i.i.i, -1
  br i1 %i.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eq = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i.i) #33, !noalias !4991 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val.i.i.i.i.i.i = load i32, ptr %i.er, align 8, !alias.scope !4992, !noalias !4990, !noundef !17 ; 2 uses
  %i.es = icmp eq i32 %.val.i.i.i.i.i.i, -1
  br i1 %i.es, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.et = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #33, !noalias !4991 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i) #37
          to label %common.resume unwind label %bb.bc, !noalias !4991

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !4991
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i), !noalias !4991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4990
  br label %bb.bf

bb.bd:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i.i.i, i64 1160, i1 false)
  br label %bb.bf

bb.be:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i.i.i)
  store i64 -1, ptr %0, align 8
  br label %bb.bm

bb.bf:                                            ; preds = %bb.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  %.sroa.8.0.ph = phi ptr [ %.sroa.12.317.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %.sroa.12.3.i.i.i, %bb.bd ]
  %.sroa.0.0.ph = phi i64 [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %.sroa.0.3.i.i.i, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i.i.i)
  store i64 %.sroa.0.0.ph, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.8.0.ph, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.11, i64 1160, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4993)
  call void @llvm.experimental.noalias.scope.decl(metadata !4994)
  %i.ev = load i64, ptr %1, align 8, !range !68, !alias.scope !4993, !noalias !4995, !noundef !17
  %i.ew = icmp eq i64 %i.ev, -1
  br i1 %i.ew, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %.sroa.011.0.copyload.i = load ptr, ptr %i.ex, align 8, !alias.scope !4993, !noalias !4995 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4993, !noalias !4995 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !4993, !noalias !4995 ; 2 uses
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %.sroa.613.0.copyload.i = load ptr, ptr %.sroa.613.0..sroa_idx.i, align 8, !alias.scope !4993, !noalias !4995 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4996
  store ptr %1, ptr %i.a, align 8, !noalias !4996
  invoke void @_RNvXs1_NtCs4gVDmLbrSvm_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls6AcceptNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bk unwind label %bb.bh, !noalias !4995

bb.bh:                                            ; preds = %bb.bg
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %.not.i.i = icmp eq ptr %.sroa.011.0.copyload.i, null
  br i1 %.not.i.i, label %.body, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !4997, !nonnull !17, !noundef !17
  invoke void %i.fa(ptr noundef %.sroa.613.0.copyload.i, ptr noundef %.sroa.4.0.copyload.i, i64 noundef %.sroa.512.0.copyload.i)
          to label %.body unwind label %bb.bj, !noalias !4995, !inline_history !4967

bb.bj:                                            ; preds = %bb.bi
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !4995
  unreachable

.body:                                            ; preds = %bb.bi, %bb.bh
  store i64 -1, ptr %1, align 8, !alias.scope !4998, !noalias !4999
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.x) #37
          to label %common.resume unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4996
  store i64 -1, ptr %1, align 8, !alias.scope !4998, !noalias !4999
  %i.fc = icmp eq ptr %.sroa.011.0.copyload.i, null
  br i1 %i.fc, label %.thread, label %bb.bl, !prof !66

.thread:                                          ; preds = %bb.bf, %bb.bk
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #40
          to label %bb.bn unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %.sroa.011.0.copyload.i, ptr %i.w, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %.sroa.613.0.copyload.i, ptr %.sroa.87.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.v, ptr noundef nonnull align 8 dereferenceable(1208) %i.x, i64 1208, i1 false)
  call void @_RNvXsd_NtCsl9hx9jpF0W9_12futures_util3fnsINtB5_8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB12_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2B_8provider5tokio3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE11map_upgrade00EINtB5_7FnOnce1INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamNtB3d_9TcpStreamENtNtNtB6q_2io5error5ErrorEE9call_onceCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1208) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.bn:                                            ; preds = %.thread
  unreachable

bb.bo:                                            ; preds = %.thread
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.x) #37
          to label %common.resume unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.body
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls7ConnectNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtBb_3fns8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB3X_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtB2B_9TransportNtB2x_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE9dial_once0s_0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1096 x i8]) align 8 captures(none) dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(1104) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1096 x i8], align 8              ; 5 uses
  %i.f = alloca [1096 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1096 x i8], align 8              ; 5 uses
  %i.j = alloca [1096 x i8], align 8              ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.518.i.i.i.i = alloca [32 x i8], align 8  ; 5 uses
  %.sroa.620.i.i.i.i = alloca [56 x i8], align 8  ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [56 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [1096 x i8], align 8              ; 29 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls7ConnectNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtBb_3fns8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB3X_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtB2B_9TransportNtB2x_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE9dial_once0s_0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server:bb.a
bb.h:                                             ; preds = %bb.l, %bb.g
  %i.ar = phi i1 [ %i.aq, %bb.g ], [ false, %bb.l ]
  %.sroa.07.0.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.sroa.07.184.i.lcssa.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.as = load i64, ptr %i.am, align 8, !noalias !5052, !noundef !17
  %.not73.not.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not73.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.sroa.0.174.i.i.i.i.i = phi i64 [ %i.ax, %bb.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.at = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs2Bxje7pdMIr_13libp2p_server(ptr nonnull %i.t, ptr nonnull %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !5050 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1      ; 2 uses
  switch i64 %i.au, label %.noexc72.i.i.i.i [
    i64 2, label %._crit_edge.i.i.i.i.i
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %.sroa.0.174.i.i.i.i.i, %i.aw   ; 2 uses
  %i.ay = load i64, ptr %i.am, align 8, !noalias !5052, !noundef !17
  %.not.not.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %.noexc.i.i.i.i, %bb.h
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.h ], [ %.sroa.0.174.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.ax, %bb.i ] ; 2 uses
  %.not.lcssa.i.i.i.i.i = phi i1 [ false, %bb.h ], [ true, %.noexc.i.i.i.i ], [ false, %bb.i ]
  br i1 %i.ar, label %.thread.i.i.i.i.i, label %.lr.ph86.i.preheader.i.i.i.i

.lr.ph86.i.preheader.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i
  %i.az = load i64, ptr %i.an, align 8, !noalias !5052, !noundef !17
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = load i8, ptr %i.ao, align 1, !range !18, !noalias !5045
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond161194.i.i.i.i = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %or.cond161194.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph86.i.i.i.i.i:                               ; preds = %bb.k
  %i.bd = ptrtoint ptr %i.cc to i64
  %i.be = add i64 %.sroa.07.184.i195.i.i.i.i, %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.an, align 8, !noalias !5052, !noundef !17
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = load i8, ptr %i.ao, align 1, !range !18, !noalias !5045
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond161.i.i.i.i = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond161.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph86.i.i.i.i.i, %.lr.ph86.i.preheader.i.i.i.i
  %.sroa.07.184.i.lcssa.i.i.i.i = phi i64 [ %.sroa.07.0.i.i.i.i.i, %.lr.ph86.i.preheader.i.i.i.i ], [ %.sroa.07.184.i195.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.be, %.lr.ph86.i.i.i.i.i ] ; 2 uses
  %i.bj = load i8, ptr %i.ag, align 2, !range !18, !noalias !5052, !noundef !17 ; 2 uses
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = load i8, ptr %i.ah, align 1, !range !18, !noalias !5045 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  %or.cond165.i.i.i.i = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond165.i.i.i.i, label %.loopexit172.i.i.i.i, label %bb.l

._crit_edge.thread.i.i.i.i:                       ; preds = %.noexc71.i.i.i.i
  %i.bn = load i8, ptr %i.ag, align 2, !range !18, !noalias !5052, !noundef !17 ; 2 uses
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = load i8, ptr %i.ah, align 1, !range !18, !noalias !5045 ; 2 uses
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond165224.i.i.i.i = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond165224.i.i.i.i, label %.loopexit172.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i.i, %.thread118.i.i.i.i.i
  %i.br = phi i8 [ 1, %.thread118.i.i.i.i.i ], [ %i.ap, %._crit_edge.i.i.i.i.i ]
  %i.bs = load i8, ptr %i.ag, align 2, !range !18, !noalias !5052, !noundef !17
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load i8, ptr %i.ah, align 1, !range !18, !noalias !5045
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond159.i.i.i.i = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond159.i.i.i.i, label %.loopexit172.i.i.i.i, label %.thread50.i.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph86.i.preheader.i.i.i.i, %.lr.ph86.i.i.i.i.i
  %.sroa.07.184.i195.i.i.i.i = phi i64 [ %i.be, %.lr.ph86.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i, %.lr.ph86.i.preheader.i.i.i.i ] ; 3 uses
  %i.bw = load i8, ptr %i.ag, align 2, !range !18, !noalias !5052, !noundef !17
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = load i64, ptr %i.am, align 8, !noalias !5045
  %i.bz = icmp eq i64 %i.by, 0
  %or.cond163.i.i.i.i = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond163.i.i.i.i, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ca = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE7read_ioCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc71.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !5050 ; 2 uses

.noexc71.i.i.i.i:                                 ; preds = %bb.j
  %i.cb = extractvalue { i64, ptr } %i.ca, 0
  %i.cc = extractvalue { i64, ptr } %i.ca, 1      ; 3 uses
  switch i64 %i.cb, label %.noexc72.i.i.i.i [
    i64 2, label %._crit_edge.thread.i.i.i.i
    i64 0, label %bb.k
  ]

bb.k:                                             ; preds = %.noexc71.i.i.i.i
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.thread118.i.i.i.i.i, label %.lr.ph86.i.i.i.i.i

.thread118.i.i.i.i.i:                             ; preds = %bb.k
  store i8 1, ptr %.sroa.539.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5051, !noalias !5053
  br label %.thread.i.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  br i1 %.not.lcssa.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.h

.thread50.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i
  %i.ce = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 17) #41
          to label %.noexc72.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !5050

.thread.i.i.i.i:                                  ; preds = %bb.l, %._crit_edge.thread.i.i.i.i
  %.sroa.07.184.i.lcssa225229.i.i.i.i = phi i64 [ %.sroa.07.184.i195.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.sroa.07.184.i.lcssa.i.i.i.i, %bb.l ]
  %i.cf = phi i8 [ %i.bn, %._crit_edge.thread.i.i.i.i ], [ %i.bj, %bb.l ]
  %i.cg = phi i8 [ %i.bp, %._crit_edge.thread.i.i.i.i ], [ %i.bl, %bb.l ]
  %i.ch = icmp eq i64 %.sroa.07.184.i.lcssa225229.i.i.i.i, 0
  %i.ci = icmp eq i64 %.sroa.0.1.lcssa.i.i.i.i.i, 0
  %or.cond3.i.i.i.i.i = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond3.i.i.i.i.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, label %.loopexit172.i.i.i.i

._crit_edge204.i.i.i.i:                           ; preds = %.loopexit172.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5054
  store ptr %i.ad, ptr %i.d, align 8, !noalias !5054
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @169, ptr %i.cj, align 8, !noalias !5054
  %i.ck = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc75.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !5050 ; 2 uses

.noexc75.i.i.i.i:                                 ; preds = %._crit_edge204.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5054
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc75.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  br label %bb.n

bb.n:                                             ; preds = %.noexc76.i.i.i.i, %bb.m
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !5055, !noundef !17
  %.not16.i.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not16.i.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs2Bxje7pdMIr_13libp2p_server(ptr nonnull %i.t, ptr nonnull %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc76.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !5050 ; 2 uses

.noexc76.i.i.i.i:                                 ; preds = %bb.o
  %i.co = extractvalue { i64, ptr } %i.cn, 0
  switch i64 %i.co, label %bb.p [
    i64 2, label %bb.q
    i64 0, label %bb.n
  ]

bb.p:                                             ; preds = %.noexc76.i.i.i.i
  %i.cp = extractvalue { i64, ptr } %i.cn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  br label %bb.r

bb.q:                                             ; preds = %.noexc76.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.e, ptr noundef nonnull align 8 dereferenceable(1096) %i.t, i64 1096, i1 false), !noalias !5045
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1096) %1)
          to label %bb.w unwind label %bb.v, !noalias !5056

bb.r:                                             ; preds = %bb.p, %.noexc75.i.i.i.i
  %.sroa.5.0.i.ph.ph.i.i.i.i = phi ptr [ %i.ck, %.noexc75.i.i.i.i ], [ %i.cp, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5045
  store ptr %.sroa.5.0.i.ph.ph.i.i.i.i, ptr %i.h, align 8, !noalias !5045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.f, ptr noundef nonnull align 8 dereferenceable(1096) %i.t, i64 1096, i1 false), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !5045
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.cq)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i unwind label %bb.t, !noalias !5050

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5045
  %.sroa.0.0.copyload2.i.i.i = load i64, ptr %i.t, align 8, !noalias !5057
  %.sroa.12.0.copyload4.i.i.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i.i.i, align 8, !noalias !5057
  %.sroa.17.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.0..sroa_idx5.i.i.i, i64 32, i1 false), !noalias !5057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.21.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.614.0..sroa_idx.i.i.i.i, i64 1048, i1 false), !noalias !5057
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #37
          to label %common.resume unwind label %bb.u, !noalias !5050

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !5057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5045
  br label %bb.x

bb.u:                                             ; preds = %bb.aw, %bb.av, %.thread114.i.i.i.i, %bb.ar, %3, %.loopexit.split-lp.i.i.i.i, %bb.y, %bb.t
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !5056
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.sink.split.i.i.i.i

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.e, i64 1096, i1 false), !noalias !5047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5045
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i, %bb.w, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %.sroa.12.2.i.i.i = phi ptr [ %.sroa.5.0.i.ph.ph.i.i.i.i, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ], [ undef, %bb.w ], [ %.sroa.1093.0.ph.i.i.i.i, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i ], [ undef, %bb.aa ]
  %.sroa.0.2.i.i.i = phi i64 [ 2, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ], [ -1, %bb.w ], [ 2, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5045
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.i, ptr noundef nonnull align 8 dereferenceable(1096) %i.t, i64 1096, i1 false), !noalias !5045
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1096) %1)
          to label %bb.aa unwind label %bb.z, !noalias !5056

.noexc72.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i, %.noexc71.i.i.i.i, %.thread50.i.i.i.i.i
  %.sroa.1093.0.ph.i.i.i.i = phi ptr [ %i.ce, %.thread50.i.i.i.i.i ], [ %i.cc, %.noexc71.i.i.i.i ], [ %i.av, %.noexc.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5045
  store ptr %.sroa.1093.0.ph.i.i.i.i, ptr %i.l, align 8, !noalias !5045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.j, ptr noundef nonnull align 8 dereferenceable(1096) %i.t, i64 1096, i1 false), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !5045
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.cu)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i unwind label %bb.y, !noalias !5050

.loopexit172.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i, %.thread.i.i.i.i, %.thread.i.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.cv = phi i8 [ 1, %.thread.i.i.i.i.i ], [ %i.cg, %.thread.i.i.i.i ], [ 1, %._crit_edge.thread.i.i.i.i ], [ 1, %._crit_edge.i.i.i.i ]
  %i.cw = phi i8 [ 1, %.thread.i.i.i.i.i ], [ %i.cf, %.thread.i.i.i.i ], [ 1, %._crit_edge.thread.i.i.i.i ], [ 1, %._crit_edge.i.i.i.i ]
  %.ph.i.i.i.i = phi i8 [ %i.br, %.thread.i.i.i.i.i ], [ %i.ap, %.thread.i.i.i.i ], [ %i.ap, %._crit_edge.thread.i.i.i.i ], [ %i.ap, %._crit_edge.i.i.i.i ]
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = trunc nuw i8 %i.cv to i1
  %or.cond157.i.i.i.i = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond157.i.i.i.i, label %._crit_edge204.i.i.i.i, label %bb.g

bb.y:                                             ; preds = %.noexc72.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #37
          to label %common.resume unwind label %bb.u, !noalias !5050

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs2Bxje7pdMIr_13libp2p_server.exit79.i.i.i.i: ; preds = %.noexc72.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !5057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5045
  br label %bb.x

bb.z:                                             ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.sink.split.i.i.i.i

bb.aa:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.i, i64 1096, i1 false), !noalias !5047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5045
  br label %bb.x

.thread131.sink.split.i.i.i.i:                    ; preds = %bb.z, %bb.v
  %.sink.i.i.i.i = phi ptr [ %i.e, %bb.v ], [ %i.i, %bb.z ]
  %.pn68.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.ct, %bb.v ], [ %i.da, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %.sink.i.i.i.i, i64 1096, i1 false), !noalias !5047
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.bl, %bb.t, %bb.y, %.thread131.sink.split.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %bb.ap, %bb.ar, %.thread149.i.i.i.i, %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.em, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i ], [ %.pn68.pn.ph.i.i.i.i, %.thread131.sink.split.i.i.i.i ], [ %lpad.phi.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.ee, %bb.ap ], [ %.pn.pn122147.i.i.i.i, %bb.aw ], [ %.pn.pn122147.i.i.i.i, %.thread149.i.i.i.i ], [ %i.eg, %bb.ar ], [ %i.cr, %bb.t ], [ %i.cz, %bb.y ], [ %i.ez, %bb.bl ], [ %i.ey, %.body ]
  resume { ptr, i32 } %common.resume.op

.loopexit.i.i.i.i:                                ; preds = %bb.o
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %bb.j
  %lpad.loopexit166.i.i.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit169.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i: ; preds = %._crit_edge204.i.i.i.i, %.thread50.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit166.i.i.i.i.a, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit169.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1096) %i.t) #37
          to label %common.resume unwind label %bb.u, !noalias !5050

bb.ab:                                            ; preds = %bb.aj, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5045
  store ptr %i.s, ptr %i.o, align 8, !noalias !5045
  store ptr %2, ptr %i.aa, align 8, !noalias !5045
  %i.db = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @109)
          to label %bb.ac unwind label %.thread124.thread141.i.i.i.i, !noalias !5050 ; 2 uses

.thread124.thread141.i.i.i.i:                     ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.thread114.i.i.i.i

.thread143.i.i.i.i:                               ; preds = %bb.an
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ac:                                            ; preds = %bb.ab
  %i.de = extractvalue { i64, ptr } %i.db, 0      ; 2 uses
  %i.df = extractvalue { i64, ptr } %i.db, 1      ; 12 uses
  store i64 %i.de, ptr %i.p, align 8, !noalias !5045
  store ptr %i.df, ptr %i.ab, align 8, !noalias !5045
  %i.dg = trunc nuw i64 %i.de to i1
  br i1 %i.dg, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.dh = ptrtoint ptr %i.df to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.di = and i64 %i.dh, 3                        ; 3 uses
  switch i64 %i.di, label %default.unreachable [
    i64 2, label %bb.ae
    i64 3, label %bb.af
    i64 0, label %bb.ag
    i64 1, label %bb.ah
  ], !prof !28

bb.ae:                                            ; preds = %bb.ad
  %i.dj = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc81.i.i.i.i unwind label %3, !noalias !5050

.noexc81.i.i.i.i:                                 ; preds = %bb.ae
  %i.dk = lshr i64 %i.dh, 32
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !5050, !nonnull !17, !noundef !17
  %i.do = invoke noundef i8 %i.dn(i32 noundef %i.dl)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i unwind label %3, !noalias !5050, !inline_history !8

bb.af:                                            ; preds = %bb.ad
  %i.dp = lshr i64 %i.dh, 32
  %i.dq = icmp ult ptr %i.df, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i = trunc i64 %i.dp to i8 ; 2 uses
  %i.dr = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.assume(i1 %i.dr)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dt = load i8, ptr %i.ds, align 8, !range !65, !noalias !5050, !noundef !17
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ad
  %i.du = getelementptr i8, ptr %i.df, i64 31
  %i.dv = load i8, ptr %i.du, align 8, !range !65, !noalias !5050, !noundef !17
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ac
  %i.dw = icmp eq ptr %i.df, null
  br i1 %i.dw, label %.loopexit173.i.i.i.i, label %bb.aj

.loopexit173.i.i.i.i:                             ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !5057
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5045
  br label %bb.ab

3:                                                ; preds = %.noexc81.i.i.i.i, %bb.ae
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #37
          to label %.thread114.i.i.i.i unwind label %bb.u, !noalias !5050

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %.noexc81.i.i.i.i
  %.sroa.0.0.i80.i.i.i.i = phi i8 [ %i.dv, %bb.ah ], [ %switch.idx.cast.i.i.i.i.i.i.i, %bb.af ], [ %i.dt, %bb.ag ], [ %i.do, %.noexc81.i.i.i.i ]
  %i.dx = icmp eq i8 %.sroa.0.0.i80.i.i.i.i, 13
  br i1 %i.dx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5045
  store ptr %i.df, ptr %i.n, align 8, !noalias !5045
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !5045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false), !noalias !5045
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(1096) %1)
          to label %bb.as unwind label %bb.ar, !noalias !5056

bb.al:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !5057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5058
  switch i64 %i.di, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
    i64 3, label %bb.am
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
    i64 1, label %bb.an
  ], !prof !28

bb.am:                                            ; preds = %bb.al
  %i.dy = icmp ult ptr %i.df, inttoptr (i64 188978561024 to ptr)
  %i.dz = and i64 %i.dh, 1095216660480
  %i.ea = icmp ne i64 %i.dz, 1095216660480
  call void @llvm.assume(i1 %i.dy)
  call void @llvm.assume(i1 %i.ea)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.eb = getelementptr i8, ptr %i.df, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !alias.scope !5059, !noalias !5058
  store i8 3, ptr %i.c, align 8, !alias.scope !5059, !noalias !5058
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ec)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i unwind label %.thread143.i.i.i.i, !noalias !5050

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5058
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, %.loopexit173.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5045
  %i.ed = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i unwind label %bb.ap, !noalias !5050

bb.ap:                                            ; preds = %bb.ao
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %common.resume unwind label %bb.aq, !noalias !5050

bb.aq:                                            ; preds = %bb.ap
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !5050
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i: ; preds = %bb.ao
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ed), !noalias !5050
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.eg = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8, !alias.scope !5046, !noalias !5047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.i.i.i.i, i64 32, i1 false), !noalias !5047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620.i.i.i.i, i64 56, i1 false), !noalias !5047
  store ptr %.sroa.107.0.copyload.i.i.i.i, ptr %.sroa.107.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5046, !noalias !5047
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #37
          to label %common.resume unwind label %bb.u, !noalias !5056

bb.as:                                            ; preds = %bb.ak
  store i64 3, ptr %1, align 8, !alias.scope !5046, !noalias !5047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.i.i.i.i, i64 32, i1 false), !noalias !5047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620.i.i.i.i, i64 56, i1 false), !noalias !5047
  store ptr %.sroa.107.0.copyload.i.i.i.i, ptr %.sroa.107.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5046, !noalias !5047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5060
  switch i64 %i.di, label %default.unreachable [
    i64 2, label %.critedge.i.i.i.i
    i64 3, label %bb.at
    i64 0, label %.critedge.i.i.i.i
    i64 1, label %bb.au
  ], !prof !28

bb.at:                                            ; preds = %bb.as
  %i.eh = icmp ult ptr %i.df, inttoptr (i64 188978561024 to ptr)
  %i.ei = and i64 %i.dh, 1095216660480
  %i.ej = icmp ne i64 %i.ei, 1095216660480
  call void @llvm.assume(i1 %i.eh)
  call void @llvm.assume(i1 %i.ej)
  br label %.critedge.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.ek = getelementptr i8, ptr %i.df, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !alias.scope !5061, !noalias !5060
  store i8 3, ptr %i.b, align 8, !alias.scope !5061, !noalias !5060
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.el), !noalias !5056
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.au, %bb.at, %bb.as, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5045
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i
  %.sroa.12.1.i.i.i = phi ptr [ undef, %.critedge.i.i.i.i ], [ %.sroa.107.0.copyload.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ -1, %.critedge.i.i.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5045
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

.thread149.i.i.i.i:                               ; preds = %bb.av
  br i1 %.sroa.060.0120148.i.i.i.i, label %bb.aw, label %common.resume

.thread114.i.i.i.i:                               ; preds = %3, %.thread124.thread141.i.i.i.i
  %.pn.pn123.i.i.i.i = phi { ptr, i32 } [ %i.dc, %.thread124.thread141.i.i.i.i ], [ %4, %3 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #37
          to label %bb.av unwind label %bb.u, !noalias !5050

bb.av:                                            ; preds = %.thread114.i.i.i.i, %.thread143.i.i.i.i
  %.sroa.060.0120148.i.i.i.i = phi i1 [ false, %.thread143.i.i.i.i ], [ true, %.thread114.i.i.i.i ]
  %.pn.pn122147.i.i.i.i = phi { ptr, i32 } [ %i.dd, %.thread143.i.i.i.i ], [ %.pn.pn123.i.i.i.i, %.thread114.i.i.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r) #37
          to label %.thread149.i.i.i.i unwind label %bb.u, !noalias !5050

bb.aw:                                            ; preds = %.thread149.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #37
          to label %common.resume unwind label %bb.u, !noalias !5050

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, %bb.x, %bb.s
  %.sroa.12.3.i.i.i = phi ptr [ %.sroa.12.0.copyload4.i.i.i, %bb.s ], [ %.sroa.12.2.i.i.i, %bb.x ], [ %.sroa.12.1.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.3.i.i.i = phi i64 [ %.sroa.0.0.copyload2.i.i.i, %bb.s ], [ %.sroa.0.2.i.i.i, %bb.x ], [ %.sroa.0.1.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5045
  switch i64 %.sroa.0.3.i.i.i, label %bb.bd [
    i64 -1, label %bb.be
    i64 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i.i
  %.sroa.12.317.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i.i ], [ %.sroa.12.3.i.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ] ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, i64 32, i1 false), !noalias !5062
  store ptr %.sroa.12.317.i.i.i, ptr %i.u, align 8, !noalias !5062
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i)
          to label %bb.ba unwind label %bb.ay, !noalias !5063

bb.ay:                                            ; preds = %bb.ax
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val2.i.i.i.i.i.i = load i32, ptr %i.en, align 8, !alias.scope !5064, !noalias !5062, !noundef !17 ; 2 uses
  %i.eo = icmp eq i32 %.val2.i.i.i.i.i.i, -1
  br i1 %i.eo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ep = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i.i) #33, !noalias !5063 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  %i.eq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val.i.i.i.i.i.i = load i32, ptr %i.eq, align 8, !alias.scope !5064, !noalias !5062, !noundef !17 ; 2 uses
  %i.er = icmp eq i32 %.val.i.i.i.i.i.i, -1
  br i1 %i.er, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.es = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #33, !noalias !5063 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i) #37
          to label %common.resume unwind label %bb.bc, !noalias !5063

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !5063
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i), !noalias !5063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5062
  br label %bb.bf

bb.bd:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.21.i.i.i, i64 1048, i1 false)
  br label %bb.bf

bb.be:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i.i.i)
  store i64 -1, ptr %0, align 8
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  %.sroa.8.0.ph = phi ptr [ %.sroa.12.317.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %.sroa.12.3.i.i.i, %bb.bd ]
  %.sroa.0.0.ph = phi i64 [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %.sroa.0.3.i.i.i, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i.i.i)
  store i64 %.sroa.0.0.ph, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.8.0.ph, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.11, i64 1048, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5065)
  call void @llvm.experimental.noalias.scope.decl(metadata !5066)
  %i.eu = load i64, ptr %1, align 8, !range !68, !alias.scope !5065, !noalias !5066, !noundef !17
  %i.ev = icmp eq i64 %i.eu, -1
  br i1 %i.ev, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !5065, !noalias !5066, !nonnull !17, !align !21, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5067
  store ptr %1, ptr %i.a, align 8, !noalias !5067
  invoke void @_RNvXs1_NtCs4gVDmLbrSvm_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls7ConnectNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bi unwind label %.body, !noalias !5066

.body:                                            ; preds = %bb.bg
  %i.ey = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %1, align 8, !alias.scope !5067
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1096) %i.w) #37
          to label %common.resume unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #40
          to label %bb.bk unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5067
  store i64 -1, ptr %1, align 8, !alias.scope !5067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.v, ptr noundef nonnull align 8 dereferenceable(1096) %i.w, i64 1096, i1 false)
  call void @_RNvXsd_NtCsl9hx9jpF0W9_12futures_util3fnsINtB5_8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB12_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2B_8provider5tokio3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE9dial_once0s_0EINtB5_7FnOnce1INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtB3d_9TcpStreamENtNtNtB6p_2io5error5ErrorEE9call_onceCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([1096 x i8]) align 8 captures(none) dereferenceable(1096) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ex, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1096) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.bk:                                            ; preds = %bb.bh
  unreachable

bb.bl:                                            ; preds = %bb.bh
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1096) %i.w) #37
          to label %common.resume unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.body
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtB9_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2f_2io5error5ErrorEEEINtNtBb_3fns8MapErrFnFB3H_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB3H_EEENtNtNtB2f_6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %1, align 8, !range !32, !noundef !17 ; 3 uses
  %i.d = icmp eq i64 %i.c, -2
  br i1 %i.d, label %bb.b, label %bb.c, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5082)
  store i64 -1, ptr %1, align 8, !alias.scope !5083, !noalias !5084
  %.not.i.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i.i, label %bb.d, label %bb.e, !prof !58

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #39, !noalias !5085
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i, i64 24, i1 false)
  store i64 %i.c, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5087)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5086, !noalias !5087, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5088
  store ptr %1, ptr %i.a, align 8, !noalias !5088
  invoke void @_RNvXs1_NtCs4gVDmLbrSvm_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future11into_future10IntoFutureINtNtB1p_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB31_2io5error5ErrorEEEENtNtNtB31_3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %.body, !noalias !5087

.body:                                            ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 -2, ptr %1, align 8, !alias.scope !5088
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #37
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5088
  store i64 -2, ptr %1, align 8, !alias.scope !5088
  call void @_RNvXsd_NtCsl9hx9jpF0W9_12futures_util3fnsINtB5_8MapErrFnFNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEINtCs9jG2ha9joJM_10libp2p_dns5ErrorBT_EEINtB5_7FnOnce1INtNtBZ_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamBT_EE9call_onceCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.g

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
end_hunk_1
