Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.03?download=true
inline.NumInlined: 1062
inline.NumDeleted: 450
begin_hunk_0_@_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1v_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client:bb.a
          to label %.thread.i.i.i.i unwind label %bb.aq, !noalias !1046

bb.aq:                                            ; preds = %bb.ap
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i unwind label %bb.ar, !noalias !1046

.thread.i.i.i.i:                                  ; preds = %bb.ap
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1648
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1616
  store ptr %i.hh, ptr %i.hg, align 8, !noalias !1043
  %i.hi = load ptr, ptr %i.gx, align 8, !noalias !1043, !nonnull !7, !align !11, !noundef !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.gy, ptr noundef nonnull align 8 dereferenceable(17) %i.hj, i64 17, i1 false), !noalias !1046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1044
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1552
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !1043, !nonnull !7, !align !11, !noundef !7
  %.val103.i.i.i.i = load ptr, ptr %i.hl, align 8, !noalias !1046, !nonnull !7, !noundef !7
  %i.hm = getelementptr inbounds nuw i8, ptr %.val103.i.i.i.i, i64 16 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1656 ; 2 uses
  store ptr %i.hm, ptr %i.hn, align 8, !noalias !1043
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1680 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !1043
  br label %bb.at

bb.ar:                                            ; preds = %bb.iu, %.body258.i.i.i.i, %bb.ij, %bb.ih, %bb.ig, %bb.ie, %bb.hs, %bb.gr, %bb.gp, %bb.dr, %bb.do, %bb.db, %bb.cv, %bb.ce, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit138.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i, %bb.aq, %bb.al
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1046
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit132.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit138.i.i.i.i, %bb.bu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i
  %i.hp = phi ptr [ %i.ic, %bb.bu ], [ %i.in, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i ], [ %i.ic, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit138.i.i.i.i ]
  %i.hq = phi ptr [ %i.id, %bb.bu ], [ %i.io, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i ], [ %i.id, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit138.i.i.i.i ]
  %.pn84.i.i.i.i = phi { ptr, i32 } [ %i.mg, %bb.bu ], [ %.pn24389.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i ], [ %.pn82.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit138.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1044
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %bb.ih, %bb.ha, %bb.gr, %bb.gp, %bb.go, %bb.gk, %bb.gf, %.body212.i.i.i.i, %.body212.thread.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit204.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit185.i.i.i.i, %bb.cd, %bb.bz, %bb.bx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit132.i.i.i.i, %bb.aq, %bb.ao, %bb.al
  %i.hr = phi ptr [ %i.hp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit132.i.i.i.i ], [ %i.na, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit185.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.go ], [ %i.ic, %bb.bx ], [ %i.or, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit204.i.i.i.i ], [ %i.ic, %bb.cd ], [ %i.gw, %bb.ao ], [ %i.gw, %bb.al ], [ %i.gw, %bb.aq ], [ %i.ic, %bb.bz ], [ %i.yy, %bb.ih ], [ %.phi.trans.insert.i.i.i, %bb.gp ], [ %i.qq, %.body212.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %.body212.i.i.i.i ], [ %i.vs, %bb.ha ], [ %i.uv, %bb.gf ], [ %i.uv, %bb.gk ], [ %i.vs, %bb.gr ]
  %i.hs = phi ptr [ %i.hq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit132.i.i.i.i ], [ %i.nb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit185.i.i.i.i ], [ %i.gk, %bb.go ], [ %i.id, %bb.bx ], [ %i.os, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit204.i.i.i.i ], [ %i.id, %bb.cd ], [ %i.gx, %bb.ao ], [ %i.gx, %bb.al ], [ %i.gx, %bb.aq ], [ %i.id, %bb.bz ], [ %i.yz, %bb.ih ], [ %i.gk, %bb.gp ], [ %i.qr, %.body212.thread.i.i.i.i ], [ %i.gk, %.body212.i.i.i.i ], [ %i.vt, %bb.ha ], [ %i.uw, %bb.gf ], [ %i.uw, %bb.gk ], [ %i.vt, %bb.gr ]
  %.pn84.pn.i.i.i.i = phi { ptr, i32 } [ %.pn84.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit132.i.i.i.i ], [ %.pn77.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit185.i.i.i.i ], [ %i.uq, %bb.go ], [ %i.ml, %bb.bx ], [ %.pn48.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit204.i.i.i.i ], [ %i.mt, %bb.cd ], [ %i.hd, %bb.ao ], [ %i.ha, %bb.al ], [ %i.hf, %bb.aq ], [ %i.mn, %bb.bz ], [ %.pn68.pn.pn.pn.i.i.i.i, %bb.ih ], [ %i.uq, %bb.gp ], [ %.pn25.pn.pn.i.i.i.i.i, %.body212.thread.i.i.i.i ], [ %i.uq, %.body212.i.i.i.i ], [ %i.wg, %bb.ha ], [ %i.uu, %bb.gf ], [ %i.vj, %bb.gk ], [ %i.vv, %bb.gr ]
  store i8 2, ptr %i.hr, align 1, !noalias !1043
  br label %.body.i.i.i

bb.as:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1044
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1680 ; 4 uses
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !19, !noalias !1047
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1656 ; 3 uses
  switch i8 %.pre.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i
    i8 1, label %bb.au
    i8 2, label %bb.av
    i8 3, label %bb.aw
  ]

._crit_edge.i.i.i:                                ; preds = %bb.as
  %.pre347.i.i.i = load ptr, ptr %i.ht, align 8, !noalias !1047
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.i.i, %.thread.i.i.i.i
  %i.hu = phi ptr [ %i.gw, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge.i.i.i ]
  %i.hv = phi ptr [ %i.gx, %.thread.i.i.i.i ], [ %i.gk, %._crit_edge.i.i.i ]
  %i.hw = phi ptr [ %i.hm, %.thread.i.i.i.i ], [ %.pre347.i.i.i, %._crit_edge.i.i.i ]
  %i.hx = phi ptr [ %.sroa.9.0..sroa_idx.i.i.i.i, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge.i.i.i ]
  %i.hy = phi ptr [ %i.hn, %.thread.i.i.i.i ], [ %i.ht, %._crit_edge.i.i.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 880
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1664
  store ptr %i.hz, ptr %i.ia, align 8, !noalias !1047
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1672
  store i64 -1, ptr %i.ib, align 8, !noalias !1047
  br label %bb.aw

.body126.thread.i.i.i.i:                          ; preds = %bb.ba, %bb.ax
  %.pn6.i.i.i.i.i = phi { ptr, i32 } [ %i.ik, %bb.ba ], [ %i.ii, %bb.ax ]
  store i8 2, ptr %i.ie, align 8, !noalias !1047
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc128.i.i.i.i unwind label %.body126.i.i.i.i, !noalias !1046

.noexc128.i.i.i.i:                                ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc129.i.i.i.i unwind label %.body126.i.i.i.i, !noalias !1046

.noexc129.i.i.i.i:                                ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.ic = phi ptr [ %i.hu, %bb.at ], [ %.phi.trans.insert.i.i.i, %bb.as ] ; 9 uses
  %i.id = phi ptr [ %i.hv, %bb.at ], [ %i.gk, %bb.as ] ; 10 uses
  %i.ie = phi ptr [ %i.hx, %bb.at ], [ %.phi.trans.insert.i.i.i.i, %bb.as ] ; 4 uses
  %i.if = phi ptr [ %i.hy, %bb.at ], [ %i.ht, %bb.as ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1664 ; 3 uses
  %i.ih = invoke noundef align 8 ptr @_RNvXse_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.ay unwind label %bb.ax, !noalias !1046 ; 3 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ig)
          to label %.body126.thread.i.i.i.i unwind label %bb.bb, !noalias !1046

bb.ay:                                            ; preds = %bb.aw
  %i.ij = icmp eq ptr %i.ih, null
  br i1 %i.ij, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ig)
          to label %bb.bd unwind label %bb.ba, !noalias !1046

bb.ba:                                            ; preds = %bb.az
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body126.thread.i.i.i.i

bb.bb:                                            ; preds = %bb.ax
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1046
  unreachable

.body126.i.i.i.i:                                 ; preds = %bb.av, %bb.au
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !1043
  %cond.i160.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 3
  br i1 %cond.i160.i.i.i.i, label %bb.ce, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i

bb.bc:                                            ; preds = %bb.ay
  store i8 3, ptr %i.ie, align 8, !noalias !1047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1044
  br label %bb.iw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i: ; preds = %bb.ce, %.body126.i.i.i.i, %.body126.thread.i.i.i.i
  %i.in = phi ptr [ %i.ic, %.body126.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %.body126.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.ce ]
  %i.io = phi ptr [ %i.id, %.body126.thread.i.i.i.i ], [ %i.gk, %.body126.i.i.i.i ], [ %i.gk, %bb.ce ]
  %.pn24389.i.i.i.i = phi { ptr, i32 } [ %.pn6.i.i.i.i.i, %.body126.thread.i.i.i.i ], [ %i.im, %.body126.i.i.i.i ], [ %i.im, %bb.ce ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1560
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ip)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit132.i.i.i.i unwind label %bb.ar, !noalias !1046

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.bq, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.i.i.i.i
  %.pn79.pn.i.i.i.i = phi { ptr, i32 } [ %i.lz, %bb.bq ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit450.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit454.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i ]
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit138.i.i.i.i unwind label %bb.ar, !noalias !1046

.loopexit.i.i.i.i:                                ; preds = %.noexc142.i.i.i.i, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.us.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %.noexc144.i.i.i.i, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit450.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i: ; preds = %.noexc140.i.i.i.i, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.us.i.i.i.i.i
  %lpad.loopexit454.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i: ; preds = %bb.bp
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

bb.bd:                                            ; preds = %bb.az
  store i8 1, ptr %i.ie, align 8, !noalias !1047
  store ptr %i.ih, ptr %i.al, align 8, !noalias !1044
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1552 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !1043, !nonnull !7, !align !11, !noundef !7
  %.val102.i.i.i.i = load ptr, ptr %i.is, align 8, !noalias !1046, !nonnull !7, !noundef !7
  %i.it = getelementptr inbounds nuw i8, ptr %.val102.i.i.i.i, i64 816 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1560 ; 4 uses
  %.val106.i.i.i.i = load ptr, ptr %i.iu, align 8, !noalias !1043, !nonnull !7, !align !11, !noundef !7 ; 2 uses
  %i.iv = getelementptr i8, ptr %.val106.i.i.i.i, i64 64
  %.val107.i.i.i.i = load ptr, ptr %i.iv, align 8, !noalias !1046, !nonnull !7, !noundef !7 ; 4 uses
  %i.iw = getelementptr i8, ptr %.val106.i.i.i.i, i64 72
  %.val108.i.i.i.i = load i64, ptr %i.iw, align 8, !noalias !1046, !noundef !7 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1648 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !1043, !nonnull !7, !noundef !7
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1624 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.val108.i.i.i.i, 40
  %i.ja = getelementptr inbounds nuw i8, ptr %.val107.i.i.i.i, i64 %.idx.i.i.i.i.i ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.it, align 8, !alias.scope !1049, !noalias !1051
  %.fr.i.i.i.i.i.i.i = freeze i64 %.val.i.i.i.i.i ; 2 uses
  %i.jb = load i8, ptr %i.iy, align 1, !range !14, !alias.scope !1048, !noalias !1052
  %.fr19.i.i.i.i.i = freeze i8 %i.jb
  %i.jc = trunc i8 %.fr19.i.i.i.i.i to i1         ; 3 uses
  %i.jd = icmp eq i64 %.val108.i.i.i.i, 0         ; 2 uses
  br i1 %i.jc, label %.split.us.i.i.i.i.i.preheader, label %.split.i.i.i.i.i

.split.us.i.i.i.i.i.preheader:                    ; preds = %bb.bd
  br i1 %i.jd, label %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCsi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCsi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i
  %i.je = icmp eq ptr %i.jg, %i.ja
  br i1 %i.je, label %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCsi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCsi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.preheader, %.split.us.i.i.i.i.i
  %i.jf = phi ptr [ %i.jg, %.split.us.i.i.i.i.i ], [ %.val107.i.i.i.i, %.split.us.i.i.i.i.i.preheader ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.ji = load i8, ptr %i.jh, align 8, !range !19, !alias.scope !1050, !noalias !1053, !noundef !7
  %.not.i.i.i.us.i.i.i.i.i = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i.us.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.bd
  br i1 %i.jd, label %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.split.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.split.i.i.i.i.i: ; preds = %.split.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.val107.i.i.i.i, i64 40
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCsi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.split.i.i.i.i.i
  %.us-phi.i.i.i.i.i = phi ptr [ %i.jj, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.split.i.i.i.i.i ], [ %i.jg, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCsi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i ] ; 5 uses
  %.us-phi17.i.i.i.i.i = phi ptr [ %.val107.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.split.i.i.i.i.i ], [ %i.jf, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCsi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i ] ; 4 uses
  %i.jk = icmp eq ptr %.us-phi.i.i.i.i.i, %i.ja
  br i1 %i.jk, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsi17nFaBu4HY_10ech_client.exit.thread8.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.i.i.i.i.i
  %i.jl = ptrtoint ptr %i.ja to i64
  %i.jm = ptrtoint ptr %.us-phi.i.i.i.i.i to i64
  %i.jn = sub nuw i64 %i.jl, %i.jm
  %i.jo = udiv exact i64 %i.jn, 40                ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fr.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i, label %.split.i.i.preheader.i.i.i.i.i

.split.i.i.preheader.i.i.i.i.i:                   ; preds = %bb.be
  br i1 %i.jc, label %.split.i.i.i.i.i.i.i, label %.split.i.i.us.i.i.i.i.i

.split.i.i.us.i.i.i.i.i:                          ; preds = %.split.i.i.preheader.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i
  %.sroa.04.0.i.i.i.us.i.i.i.i.i = phi i64 [ %i.kh, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i ], [ 0, %.split.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.us.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.us.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i ], [ %.us-phi17.i.i.i.i.i, %.split.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [40 x i8], ptr %.us-phi.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.us.i.i.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jr = load i8, ptr %i.jq, align 8, !alias.scope !1056, !noalias !1057 ; 3 uses
  %.not.i.i.i.i.us.i.i.i.i.i = icmp eq i8 %i.jr, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %.val.i.i.i.i.i.i.i.i.us.i.i.i.i.i = load ptr, ptr %.sroa.02.0.i.i.i.us.i.i.i.i.i, align 8, !alias.scope !1062, !noalias !1063 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.us.i.i.i.i.i, i64 32
  %.val1.i.i.i.i.i.i.i.i.us.i.i.i.i.i = load i8, ptr %i.js, align 8, !alias.scope !1062, !noalias !1063 ; 3 uses
  %.val2.i.i.i.i.i.i.i.i.us.i.i.i.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !1064, !noalias !1065 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i = icmp ugt i8 %.val1.i.i.i.i.i.i.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %switch16.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i = icmp ult i8 %i.jr, 2
  br i1 %switch16.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.split.i.i.us.i.i.i.i.i
  br i1 %switch.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i, label %bb.bh, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i

bb.bg:                                            ; preds = %.split.i.i.us.i.i.i.i.i
  br i1 %switch.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.us.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.jt = icmp eq i8 %.val1.i.i.i.i.i.i.i.i.us.i.i.i.i.i, %i.jr
  br i1 %i.jt, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.us.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ju = icmp eq i8 %.val1.i.i.i.i.i.i.i.i.us.i.i.i.i.i, 0
  br i1 %i.ju, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.us.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %.not.i.i.i.i.us.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.us.i.i.i.i.i

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.us.i.i.i.i.i: ; preds = %bb.bj, %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.us.i.i.i.i.i) ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.us.i.i.i.i.i, i64 16
  %i.jw = invoke noundef double @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt7current(ptr noundef nonnull align 8 %i.jv)
          to label %.noexc140.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !1046

.noexc140.i.i.i.i:                                ; preds = %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.us.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i.i.us.i.i.i.i.i) ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.us.i.i.i.i.i, i64 16
  %i.jy = invoke noundef double @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt7current(ptr noundef nonnull align 8 %i.jx)
          to label %.noexc141.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !1046

.noexc141.i.i.i.i:                                ; preds = %.noexc140.i.i.i.i
  %i.jz = bitcast double %i.jw to i64             ; 2 uses
  %i.ka = bitcast double %i.jy to i64             ; 2 uses
  %i.kb = ashr i64 %i.jz, 63
  %i.kc = lshr i64 %i.kb, 1
  %i.kd = xor i64 %i.kc, %i.jz
  %i.ke = ashr i64 %i.ka, 63
  %i.kf = lshr i64 %i.ke, 1
  %i.kg = xor i64 %i.kf, %i.ka
  %.not.i.i.i.i.i.i.us.i.i.i.i.i = icmp sgt i64 %i.kd, %i.kg
  br i1 %.not.i.i.i.i.i.i.us.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.us.i.i.i.i.i

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.us.i.i.i.i.i: ; preds = %.noexc141.i.i.i.i, %bb.bi, %bb.bg
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i: ; preds = %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.us.i.i.i.i.i, %.noexc141.i.i.i.i, %bb.bj, %bb.bf
  %.sroa.0.0.i.i.i.i.us.i.i.i.i.i = phi ptr [ %i.jp, %bb.bf ], [ %.sroa.02.0.i.i.i.us.i.i.i.i.i, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.us.i.i.i.i.i ], [ %i.jp, %.noexc141.i.i.i.i ], [ %i.jp, %bb.bj ] ; 2 uses
  %i.kh = add nuw i64 %.sroa.04.0.i.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, %i.jo
  br i1 %i.ki, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsi17nFaBu4HY_10ech_client.exit.thread8.i.i.i.i.i, label %.split.i.i.us.i.i.i.i.i

.split.us.i.i.i.i.i.i.i:                          ; preds = %bb.be, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i
  %.sroa.04.0.i.us.i.i.i.i.i.i.i = phi i64 [ %i.lb, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i ], [ 0, %bb.be ] ; 2 uses
  %.sroa.02.0.i.us.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.us.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i ], [ %.us-phi17.i.i.i.i.i, %bb.be ] ; 4 uses
  %i.kj = getelementptr inbounds nuw [40 x i8], ptr %.us-phi.i.i.i.i.i, i64 %.sroa.04.0.i.us.i.i.i.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = load i8, ptr %i.kk, align 8, !alias.scope !1056, !noalias !1057 ; 2 uses
  %.not.i.i.us.i.i.i.i.i.i.i = icmp eq i8 %i.kl, 0 ; 2 uses
  %or.cond.i.i.us.i.i.i.i.i.i.i = select i1 %i.jc, i1 %.not.i.i.us.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.us.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB8_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0Csi17nFaBu4HY_10ech_client.exit.thread.i.i.us.i.i.i.i.i.i.i

_RNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB8_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0Csi17nFaBu4HY_10ech_client.exit.thread.i.i.us.i.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %.val.i.i.i.i.i.i.us.i.i.i.i.i.i.i = load ptr, ptr %.sroa.02.0.i.us.i.i.i.i.i.i.i, align 8, !alias.scope !1062, !noalias !1063 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.us.i.i.i.i.i.i.i, i64 32
  %.val1.i.i.i.i.i.i.us.i.i.i.i.i.i.i = load i8, ptr %i.km, align 8, !alias.scope !1062, !noalias !1063 ; 2 uses
  %.val2.i.i.i.i.i.i.us.i.i.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !alias.scope !1064, !noalias !1065 ; 2 uses
  %i.kn = icmp eq i8 %.val1.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.kl
  br i1 %i.kn, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.us.i.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %_RNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB8_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0Csi17nFaBu4HY_10ech_client.exit.thread.i.i.us.i.i.i.i.i.i.i
  %i.ko = icmp eq i8 %.val1.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 0
  br i1 %i.ko, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.us.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not.i.i.us.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.us.i.i.i.i.i.i.i

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.us.i.i.i.i.i.i.i: ; preds = %bb.bl, %_RNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB8_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0Csi17nFaBu4HY_10ech_client.exit.thread.i.i.us.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.us.i.i.i.i.i.i.i) ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.us.i.i.i.i.i.i.i, i64 16
  %i.kq = invoke noundef double @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt7current(ptr noundef nonnull align 8 %i.kp)
          to label %.noexc142.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1046

.noexc142.i.i.i.i:                                ; preds = %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.us.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.us.i.i.i.i.i.i.i) ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.us.i.i.i.i.i.i.i, i64 16
  %i.ks = invoke noundef double @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt7current(ptr noundef nonnull align 8 %i.kr)
          to label %.noexc143.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1046

.noexc143.i.i.i.i:                                ; preds = %.noexc142.i.i.i.i
  %i.kt = bitcast double %i.kq to i64             ; 2 uses
  %i.ku = bitcast double %i.ks to i64             ; 2 uses
  %i.kv = ashr i64 %i.kt, 63
  %i.kw = lshr i64 %i.kv, 1
  %i.kx = xor i64 %i.kw, %i.kt
  %i.ky = ashr i64 %i.ku, 63
  %i.kz = lshr i64 %i.ky, 1
  %i.la = xor i64 %i.kz, %i.ku
  %.not.i.i.i.i.us.i.i.i.i.i.i.i = icmp sgt i64 %i.kx, %i.la
  br i1 %.not.i.i.i.i.us.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.us.i.i.i.i.i.i.i

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.us.i.i.i.i.i.i.i: ; preds = %.noexc143.i.i.i.i, %bb.bk
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i: ; preds = %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.us.i.i.i.i.i.i.i, %.noexc143.i.i.i.i, %bb.bl, %.split.us.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.us.i.i.i.i.i.i.i = phi ptr [ %.sroa.02.0.i.us.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.us.i.i.i.i.i.i.i, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.kj, %.noexc143.i.i.i.i ], [ %i.kj, %bb.bl ] ; 2 uses
  %i.lb = add nuw i64 %.sroa.04.0.i.us.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, %i.jo
  br i1 %i.lc, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsi17nFaBu4HY_10ech_client.exit.thread8.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %.split.i.i.preheader.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %i.lt, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ], [ %.us-phi17.i.i.i.i.i, %.split.i.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.ld = getelementptr inbounds nuw [40 x i8], ptr %.us-phi.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = load i8, ptr %i.le, align 8, !alias.scope !1056, !noalias !1057 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB8_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0Csi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i

_RNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB8_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0Csi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.02.0.i.i.i.i.i.i.i.i, align 8, !alias.scope !1062, !noalias !1063 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i.i.i, i64 32
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.lg, align 8, !alias.scope !1062, !noalias !1063 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ld, align 8, !alias.scope !1064, !noalias !1065 ; 2 uses
  %switch16.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lf, 1
  br i1 %switch16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_RNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB8_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0Csi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i
  %or.cond.not.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.not.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %_RNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB8_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0Csi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i8 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bn, %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.li = invoke noundef double @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt7current(ptr noundef nonnull align 8 %i.lh)
          to label %.noexc144.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !1046

.noexc144.i.i.i.i:                                ; preds = %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.lk = invoke noundef double @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt7current(ptr noundef nonnull align 8 %i.lj)
          to label %.noexc145.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !1046

.noexc145.i.i.i.i:                                ; preds = %.noexc144.i.i.i.i
  %i.ll = bitcast double %i.li to i64             ; 2 uses
  %i.lm = bitcast double %i.lk to i64             ; 2 uses
  %i.ln = ashr i64 %i.ll, 63
  %i.lo = lshr i64 %i.ln, 1
  %i.lp = xor i64 %i.lo, %i.ll
  %i.lq = ashr i64 %i.lm, 63
  %i.lr = lshr i64 %i.lq, 1
  %i.ls = xor i64 %i.lr, %i.lm
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.lp, %i.ls
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc145.i.i.i.i, %bb.bm
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.noexc145.i.i.i.i, %bb.bn, %.split.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEs_0INtB7_6FnOnceTRRINtBX_15ConnectionStateB2o_EB3W_EE9call_onceCsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ld, %.noexc145.i.i.i.i ], [ %i.ld, %bb.bn ] ; 2 uses
  %i.lt = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.lu = icmp eq i64 %i.lt, %i.jo
  br i1 %i.lu, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsi17nFaBu4HY_10ech_client.exit.thread8.i.i.i.i.i, label %.split.i.i.i.i.i.i.i

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsi17nFaBu4HY_10ech_client.exit.thread8.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.i.i.i.i.i
  %.sroa.0.0.i11.i.i.i.i.i = phi ptr [ %.us-phi17.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client.exit.thread3.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.us.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.us.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.us.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.us.i.i.i.i.i ] ; 4 uses
  %.not5.i.i.i.i.i = icmp eq i64 %.fr.i.i.i.i.i.i.i, -2
  br i1 %.not5.i.i.i.i.i, label %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread378.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsi17nFaBu4HY_10ech_client.exit.thread8.i.i.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i11.i.i.i.i.i, i64 32
  %i.lw = load i8, ptr %i.lv, align 8, !range !19, !alias.scope !1050, !noalias !1066, !noundef !7
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.lw, 2
  br i1 %switch.i.i.i.i.i, label %bb.bp, label %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread378.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.lx = invoke noundef zeroext i1 @_RNvMs2_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_24NameServerTransportState18any_recent_success(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iq, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(17) %i.iz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.it)
          to label %.noexc146.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !1046

.noexc146.i.i.i.i:                                ; preds = %bb.bp
  br i1 %i.lx, label %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i, label %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread378.i.i.i.i

_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread378.i.i.i.i: ; preds = %.noexc146.i.i.i.i, %bb.bo, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsi17nFaBu4HY_10ech_client.exit.thread8.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1044
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i11.i.i.i.i.i, i64 8
  invoke void @_RNvXs_NtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchangeINtB4_11DnsExchangeNtNtNtB8_7runtime13tokio_runtime20TokioRuntimeProviderENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ly)
          to label %bb.br unwind label %bb.bq, !noalias !1046

_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i: ; preds = %.split.us.i.i.i.i.i, %.split.us.i.i.i.i.i.preheader, %.noexc146.i.i.i.i, %.split.i.i.i.i.i
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit148.i.i.i.i unwind label %bb.bt, !noalias !1046

bb.bq:                                            ; preds = %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread378.i.i.i.i
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1044
  br label %.loopexit.split-lp.i.i.i.i

bb.br:                                            ; preds = %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread378.i.i.i.i
  %.val110.i.i.i.i = load ptr, ptr %.sroa.0.0.i11.i.i.i.i.i, align 8, !noalias !1046, !nonnull !7, !noundef !7 ; 2 uses
  %i.ma = atomicrmw add ptr %.val110.i.i.i.i, i64 1 monotonic, align 8, !noalias !1046
  %i.mb = icmp slt i64 %i.ma, 0
  br i1 %i.mb, label %bb.bs, label %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %bb.br
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i11.i.i.i.i.i, i64 32
  %i.md = load i8, ptr %i.mc, align 8, !range !19, !noalias !1046, !noundef !7
  %i.me = load <2 x ptr>, ptr %i.ak, align 16, !noalias !1044
  %.sroa.06.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.06.sroa.6.0..sroa_idx.i.i.i.i, align 16, !noalias !1044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1044
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit151.i.i.i.i unwind label %bb.bt, !noalias !1046

bb.bt:                                            ; preds = %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client.exit.i.i.i.i, %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit138.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit151.i.i.i.i: ; preds = %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client.exit.i.i.i.i
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i unwind label %bb.bu, !noalias !1046

bb.bu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit148.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit151.i.i.i.i
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit132.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit151.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1044
  br label %bb.ix

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit148.i.i.i.i: ; preds = %_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.thread.i.i.i.i
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc.i.i.i.i unwind label %bb.bu, !noalias !1046

.noexc.i.i.i.i:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit148.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1044
  %i.mh = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1044
  %.off.i.i.i.i = add i64 %i.mh, -2
  %switch.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 4
  br i1 %switch.i.i.i.i, label %.thread500.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.noexc.i.i.i.i
  %i.mi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_10NameServerpE20connected_mut_client010___CALLSITE, i64 16) monotonic, align 8, !noalias !1044 ; 2 uses
  %i.mj = icmp ult i8 %i.mi, 3
  br i1 %i.mj, label %bb.by, label %bb.bw, !prof !34

bb.bw:                                            ; preds = %bb.bv
  %i.mk = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_10NameServerpE20connected_mut_client010___CALLSITE) #22
          to label %bb.by unwind label %bb.bx, !noalias !1046

bb.bx:                                            ; preds = %bb.bw
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.0.0.i155.i.i.i.i = phi i8 [ %i.mi, %bb.bv ], [ %i.mk, %bb.bw ] ; 2 uses
  %i.mm = icmp eq i8 %.sroa.0.0.i155.i.i.i.i, 0
  br i1 %i.mm, label %.thread500.i.i.i.i, label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.mo = load ptr, ptr @_RNvNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_10NameServerpE20connected_mut_client010___CALLSITE, align 8, !noalias !1044, !nonnull !7, !align !11, !noundef !7
  %i.mp = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mo, i8 noundef %.sroa.0.0.i155.i.i.i.i)
          to label %bb.cb unwind label %bb.bz, !noalias !1046

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.mp, label %bb.cc, label %.thread500.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1044
  %i.mq = load ptr, ptr @_RNvNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_10NameServerpE20connected_mut_client010___CALLSITE, align 8, !noalias !1044, !nonnull !7, !align !11, !noundef !7 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1044
  store <2 x ptr> <ptr @18, ptr inttoptr (i64 21 to ptr)>, ptr %i.ah, align 16, !noalias !1044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1044
  %i.ms = load ptr, ptr %i.id, align 8, !noalias !1043, !nonnull !7, !align !11, !noundef !7
  store ptr %i.ms, ptr %i.ag, align 8, !noalias !1044
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !1044
  store ptr @10, ptr %i.cc, align 8, !noalias !1044
  store ptr %i.ag, ptr %i.cd, align 8, !noalias !1044
  store ptr @19, ptr %i.ce, align 8, !noalias !1044
  store i64 1, ptr %i.aj, align 8, !noalias !1044
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !1044
  store i64 2, ptr %.sroa.8273.0..sroa_idx.i.i.i.i, align 8, !noalias !1044
  store ptr %i.mr, ptr %.sroa.9274.0..sroa_idx.i.i.i.i, align 8, !noalias !1044
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %_RNCNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE20connected_mut_client0s_0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i unwind label %bb.cd, !noalias !1046

bb.cd:                                            ; preds = %bb.cc
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1044
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

_RNCNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE20connected_mut_client0s_0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1044
  br label %.thread500.i.i.i.i

.thread500.i.i.i.i:                               ; preds = %_RNCNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE20connected_mut_client0s_0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i, %bb.cb, %bb.by, %.noexc.i.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1616
  store ptr %i.mu, ptr %i.ix, align 8, !noalias !1043
  %i.mv = load ptr, ptr %i.id, align 8, !noalias !1043, !nonnull !7, !align !11, !noundef !7
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.iz, ptr noundef nonnull align 8 dereferenceable(17) %i.mw, i64 17, i1 false), !noalias !1046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1044
  %i.mx = load ptr, ptr %i.ir, align 8, !noalias !1043, !nonnull !7, !align !11, !noundef !7
  %.val101.i.i.i.i = load ptr, ptr %i.mx, align 8, !noalias !1046, !nonnull !7, !noundef !7
  %i.my = getelementptr inbounds nuw i8, ptr %.val101.i.i.i.i, i64 16
  store ptr %i.my, ptr %i.if, align 8, !noalias !1043
  store i8 0, ptr %i.ie, align 8, !noalias !1043
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1680
  br label %bb.cg

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit185.i.i.i.i: ; preds = %bb.db, %bb.cx, %bb.cv, %.body167.i.i.i.i, %.body167.thread.i.i.i.i
  %i.na = phi ptr [ %i.nl, %bb.cx ], [ %i.nl, %bb.cv ], [ %i.nl, %.body167.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %.body167.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.db ]
  %i.nb = phi ptr [ %i.nm, %bb.cx ], [ %i.nm, %bb.cv ], [ %i.nm, %.body167.thread.i.i.i.i ], [ %i.gk, %.body167.i.i.i.i ], [ %i.gk, %bb.db ]
  %.pn77.i.i.i.i = phi { ptr, i32 } [ %i.oj, %bb.cx ], [ %.pn37.i.i.i.i, %bb.cv ], [ %.pn6.i164.i.i.i.i, %.body167.thread.i.i.i.i ], [ %i.nu, %.body167.i.i.i.i ], [ %i.nu, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1044
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit138.i.i.i.i: ; preds = %bb.bt, %.loopexit.split-lp.i.i.i.i
  %.pn82.i.i.i.i = phi { ptr, i32 } [ %i.mf, %bb.bt ], [ %.pn79.pn.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit132.i.i.i.i unwind label %bb.ar, !noalias !1046

bb.ce:                                            ; preds = %.body126.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1664
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.nc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit162.i.i.i.i unwind label %bb.ar, !noalias !1046

bb.cf:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1044
  %.phi.trans.insert463.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1680 ; 4 uses
  %.pre464.i.i.i.i = load i8, ptr %.phi.trans.insert463.i.i.i.i, align 8, !range !19, !noalias !1067
  switch i8 %.pre464.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.cg
    i8 1, label %bb.ch
    i8 2, label %bb.ci
    i8 3, label %bb.cj
  ]

bb.cg:                                            ; preds = %bb.cf, %.thread500.i.i.i.i
  %i.nd = phi ptr [ %i.ic, %.thread500.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.cf ]
  %i.ne = phi ptr [ %i.id, %.thread500.i.i.i.i ], [ %i.gk, %bb.cf ]
  %i.nf = phi ptr [ %i.mz, %.thread500.i.i.i.i ], [ %.phi.trans.insert463.i.i.i.i, %bb.cf ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1656
  %i.nh = load ptr, ptr %i.ng, align 8, !noalias !1067, !nonnull !7, !align !11, !noundef !7
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 880
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1664
  store ptr %i.ni, ptr %i.nj, align 8, !noalias !1067
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1672
  store i64 -1, ptr %i.nk, align 8, !noalias !1067
  br label %bb.cj

.body167.thread.i.i.i.i:                          ; preds = %bb.cn, %bb.ck
  %.pn6.i164.i.i.i.i = phi { ptr, i32 } [ %i.ns, %bb.cn ], [ %i.nq, %bb.ck ]
  store i8 2, ptr %i.nn, align 8, !noalias !1067
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit185.i.i.i.i

bb.ch:                                            ; preds = %bb.cf
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc169.i.i.i.i unwind label %.body167.i.i.i.i, !noalias !1046

.noexc169.i.i.i.i:                                ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.cf
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc170.i.i.i.i unwind label %.body167.i.i.i.i, !noalias !1046

.noexc170.i.i.i.i:                                ; preds = %bb.ci
  unreachable
end_hunk_0
