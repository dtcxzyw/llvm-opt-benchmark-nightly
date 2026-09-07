Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.04?download=true
inline.NumInlined: 1017
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client:bb.a
  br i1 %i.cw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.dh, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cu, i64 %.sroa.05.08.1.i ; 3 uses
  %.idx273 = mul nuw nsw i64 %.sroa.05.08.1.i, 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx273 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !alias.scope !1023
  %i.cz = getelementptr i8, ptr %i.cy, i64 32
  %.val9.i46.1.i = load i8, ptr %i.cz, align 8, !range !24, !alias.scope !1022, !noalias !1021, !noundef !8
  %i.da = getelementptr i8, ptr %i.cy, i64 -8
  %.val10.i.1.i = load i8, ptr %i.da, align 8, !range !24, !alias.scope !1022, !noalias !1021, !noundef !8
  %.not.i.i47.1.i = icmp eq i8 %.val9.i46.1.i, 0
  %i.db = icmp ne i8 %.val10.i.1.i, 0
  %i.dc = and i1 %.not.i.i47.1.i, %i.db
  br i1 %i.dc, label %.split.preheader.i.1.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.1.i

.split.preheader.i.1.i:                           ; preds = %.lr.ph.1.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 33
  %.sroa.0.0.i48.1.i265 = getelementptr inbounds i8, ptr %i.cy, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.1.i265, i64 40, i1 false), !alias.scope !1022, !noalias !1021
  %i.de = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.de, label %.split6.i.1.i, label %.lr.ph268

.split.i.1.i:                                     ; preds = %.lr.ph268
  %.sroa.0.0.i48.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i48.1.i267, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.1.i267, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.1.i, i64 40, i1 false), !alias.scope !1022, !noalias !1021
  %i.df = icmp eq ptr %.sroa.0.0.i48.1.i, %i.cv
  br i1 %i.df, label %.split6.i.1.i, label %.lr.ph268

.lr.ph268:                                        ; preds = %.split.preheader.i.1.i, %.split.i.1.i
  %.sroa.0.0.i48.1.i267 = phi ptr [ %.sroa.0.0.i48.1.i, %.split.i.1.i ], [ %.sroa.0.0.i48.1.i265, %.split.preheader.i.1.i ] ; 5 uses
  %.sroa.5.0.i.1.i266 = phi ptr [ %.sroa.0.0.i48.1.i267, %.split.i.1.i ], [ %i.cy, %.split.preheader.i.1.i ] ; 2 uses
  %i.dg = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -48
  %.val8.i49.1.i = load i8, ptr %i.dg, align 8, !range !24, !alias.scope !1022, !noalias !1021, !noundef !8
  %.not.i50.1.i = icmp eq i8 %.val8.i49.1.i, 0
  br i1 %.not.i50.1.i, label %.split6.i.1.i, label %.split.i.1.i

.split6.i.1.i:                                    ; preds = %.split.i.1.i, %.lr.ph268, %.split.preheader.i.1.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cy, %.split.preheader.i.1.i ], [ %.sroa.0.0.i48.1.i267, %.split.i.1.i ], [ %.sroa.5.0.i.1.i266, %.lr.ph268 ] ; 2 uses
  %.sroa.0.0.i48.lcssa.1.i = phi ptr [ %i.cv, %.split.preheader.i.1.i ], [ %i.cv, %.split.i.1.i ], [ %.sroa.0.0.i48.1.i267, %.lr.ph268 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i48.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false), !alias.scope !1023
  %.sroa.4.0..us-phi.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i8 0, ptr %.sroa.4.0..us-phi.sroa_idx.i.1.i, align 8, !alias.scope !1022, !noalias !1024
  %.sroa.5.0..us-phi.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..us-phi.sroa_idx.i.1.i, ptr noundef nonnull align 1 dereferenceable(7) %i.dd, i64 7, i1 false), !alias.scope !1023
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.1.i: ; preds = %.split6.i.1.i, %.lr.ph.1.i
  %i.dh = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.dh, %i.cs
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.1.i, %.loopexit.i
  %i.di = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.di
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.cv, i64 -40
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dm = getelementptr i8, ptr %i.eh, i64 40     ; 2 uses
  %i.dn = getelementptr i8, ptr %i.eg, i64 40
  %i.do = and i64 %.sroa.16.0.lcssa, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.j, label %bb.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa98, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dq, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.cv, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.dl, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.dk, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.dj, %.loopexit.1.i ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.011.07.i.i, i64 32
  %.sroa.011.0.val.i.i = load i8, ptr %i.dr, align 8, !range !24, !alias.scope !1025, !noalias !1021, !noundef !8
  %i.ds = getelementptr i8, ptr %.sroa.06.08.i.i, i64 32
  %.sroa.06.0.val.i.i = load i8, ptr %i.ds, align 8, !range !24, !alias.scope !1025, !noalias !1021, !noundef !8
  %.not.i.i45.i = icmp eq i8 %.sroa.011.0.val.i.i, 0
  %i.dt = icmp ne i8 %.sroa.06.0.val.i.i, 0
  %i.du = and i1 %.not.i.i45.i, %i.dt             ; 3 uses
  %..i21.i.i = select i1 %i.du, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dv = xor i1 %i.du, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i21.i.i, i64 40, i1 false), !alias.scope !1023, !noalias !1026
  %i.dw = zext i1 %i.du to i64
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %.sroa.011.07.i.i, i64 %i.dw ; 4 uses
  %i.dy = zext i1 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %.sroa.06.08.i.i, i64 %i.dy ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 40 ; 2 uses
  %i.eb = getelementptr i8, ptr %.sroa.017.05.i.i, i64 32
  %.sroa.017.0.val.i.i = load i8, ptr %i.eb, align 8, !range !24, !alias.scope !1025, !noalias !1021, !noundef !8
  %i.ec = getelementptr i8, ptr %.sroa.015.06.i.i, i64 32
  %.sroa.015.0.val.i.i = load i8, ptr %i.ec, align 8, !range !24, !alias.scope !1025, !noalias !1021, !noundef !8
  %.not.i22.i.i = icmp eq i8 %.sroa.017.0.val.i.i, 0
  %i.ed = icmp ne i8 %.sroa.015.0.val.i.i, 0
  %i.ee = and i1 %.not.i22.i.i, %i.ed             ; 3 uses
  %..i.i.i = select i1 %i.ee, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.ef = xor i1 %i.ee, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i.i.i, i64 40, i1 false), !alias.scope !1023, !noalias !1027
  %.neg.i.i.i = sext i1 %i.ef to i64
  %i.eg = getelementptr [40 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.ee to i64
  %i.eh = getelementptr [40 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -40
  %exitcond.not.i.i = icmp eq i64 %i.dq, %i.k
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ej = icmp ult ptr %i.dz, %i.dm               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.ej, ptr %i.dz, ptr %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.0..sroa.011.0.i.i, i64 40, i1 false), !alias.scope !1023
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [40 x i8], ptr %i.dz, i64 %i.ek
  %i.em = xor i1 %i.ej, true
  %i.en = zext i1 %i.em to i64
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %i.en
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dx, %._crit_edge.i.i ], [ %i.eo, %bb.i ]
  %.sroa.06.1.i.i = phi ptr [ %i.dz, %._crit_edge.i.i ], [ %i.el, %bb.i ]
  %i.ep = icmp ne ptr %.sroa.06.1.i.i, %i.dm
  %i.eq = icmp ne ptr %.sroa.011.1.i.i, %i.dn
  %or.cond.i.i = select i1 %i.ep, i1 true, i1 %i.eq, !prof !25
  br i1 %or.cond.i.i, label %bb.k, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keybNCINvMB1v_INtB1v_10NameServerB2x_E3newATNtNtB2D_4xfer8ProtocolINtNtB5l_12dns_exchange11DnsExchangeB2x_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit, !prof !25

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #29
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = mul nuw nsw i64 %.sroa.16.0.lcssa, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa98, ptr nonnull align 8 %2, i64 %i.es, i1 false), !alias.scope !1023, !noalias !1028
  resume { ptr, i32 } %i.er

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i
  %.sroa.05.08.i = phi i64 [ %i.fd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %.sroa.05.08.i ; 3 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 40
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %i.et, i64 40, i1 false), !alias.scope !1023
  %i.ev = getelementptr i8, ptr %i.eu, i64 32
  %.val9.i46.i = load i8, ptr %i.ev, align 8, !range !24, !alias.scope !1022, !noalias !1021, !noundef !8
  %i.ew = getelementptr i8, ptr %i.eu, i64 -8
  %.val10.i.i = load i8, ptr %i.ew, align 8, !range !24, !alias.scope !1022, !noalias !1021, !noundef !8
  %.not.i.i47.i = icmp eq i8 %.val9.i46.i, 0
  %i.ex = icmp ne i8 %.val10.i.i, 0
  %i.ey = and i1 %.not.i.i47.i, %i.ex
  br i1 %i.ey, label %.split.preheader.i.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i

.split.preheader.i.i:                             ; preds = %.lr.ph.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 33
  %.sroa.0.0.i48.i257 = getelementptr inbounds i8, ptr %i.eu, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.i257, i64 40, i1 false), !alias.scope !1022, !noalias !1021
  %i.fa = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.fa, label %.split6.i.i, label %.lr.ph260

.split.i.i:                                       ; preds = %.lr.ph260
  %.sroa.0.0.i48.i = getelementptr inbounds i8, ptr %.sroa.0.0.i48.i259, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.i259, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.i, i64 40, i1 false), !alias.scope !1022, !noalias !1021
  %i.fb = icmp eq ptr %.sroa.0.0.i48.i, %2
  br i1 %i.fb, label %.split6.i.i, label %.lr.ph260

.lr.ph260:                                        ; preds = %.split.preheader.i.i, %.split.i.i
  %.sroa.0.0.i48.i259 = phi ptr [ %.sroa.0.0.i48.i, %.split.i.i ], [ %.sroa.0.0.i48.i257, %.split.preheader.i.i ] ; 5 uses
  %.sroa.5.0.i.i258 = phi ptr [ %.sroa.0.0.i48.i259, %.split.i.i ], [ %i.eu, %.split.preheader.i.i ] ; 2 uses
  %i.fc = getelementptr i8, ptr %.sroa.5.0.i.i258, i64 -48
  %.val8.i49.i = load i8, ptr %i.fc, align 8, !range !24, !alias.scope !1022, !noalias !1021, !noundef !8
  %.not.i50.i = icmp eq i8 %.val8.i49.i, 0
  br i1 %.not.i50.i, label %.split6.i.i, label %.split.i.i

.split6.i.i:                                      ; preds = %.split.i.i, %.lr.ph260, %.split.preheader.i.i
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.eu, %.split.preheader.i.i ], [ %.sroa.0.0.i48.i259, %.split.i.i ], [ %.sroa.5.0.i.i258, %.lr.ph260 ] ; 2 uses
  %.sroa.0.0.i48.lcssa.i = phi ptr [ %2, %.split.preheader.i.i ], [ %2, %.split.i.i ], [ %.sroa.0.0.i48.i259, %.lr.ph260 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i48.lcssa.i, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 32, i1 false), !alias.scope !1023
  %.sroa.4.0..us-phi.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i8 0, ptr %.sroa.4.0..us-phi.sroa_idx.i.i, align 8, !alias.scope !1022, !noalias !1024
  %.sroa.5.0..us-phi.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..us-phi.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.ez, i64 7, i1 false), !alias.scope !1023
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %.split6.i.i, %.lr.ph.i
  %i.fd = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fd, %i.k
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0100.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ]
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keybNCINvMBZ_INtBZ_10NameServerB21_E3newATNtNtB27_4xfer8ProtocolINtNtB4M_12dns_exchange11DnsExchangeB21_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph107, i64 noundef %.sroa.16.0100.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keybNCINvMB1v_INtB1v_10NameServerB2x_E3newATNtNtB2D_4xfer8ProtocolINtNtB5l_12dns_exchange11DnsExchangeB2x_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit

.lr.ph253:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.099252 = phi i32 [ %i.fe, %bb.b ], [ %.sroa.025.0.ph105, %.lr.ph ]
  %.sroa.16.0100251 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ] ; 21 uses
  %i.fe = add nsw i32 %.sroa.025.099252, -1       ; 4 uses
  %i.ff = lshr i64 %.sroa.16.0100251, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ff, 160
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ff, 280
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx2.i ; 3 uses
  %i.fi = icmp samesign ult i64 %.sroa.16.0100251, 64
  br i1 %i.fi, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph253
  %i.fj = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph107, ptr noundef readonly %i.fg, ptr noundef readonly %i.fh, i64 noundef %i.ff)
  br label %bb.n

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %.lr.ph253
  %.val6.i = load i8, ptr %i.c, align 8, !range !24, !alias.scope !1029, !noundef !8
  %i.fk = getelementptr i8, ptr %i.fg, i64 32
  %.val7.i = load i8, ptr %i.fk, align 8, !range !24, !alias.scope !1029, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i8 %.val6.i, 0              ; 2 uses
  %i.fl = icmp ne i8 %.val7.i, 0                  ; 2 uses
  %i.fm = and i1 %.not.i.i, %i.fl
  %i.fn = getelementptr i8, ptr %i.fh, i64 32
  %.val5.i = load i8, ptr %i.fn, align 8, !range !24, !alias.scope !1029, !noundef !8
  %i.fo = icmp ne i8 %.val5.i, 0                  ; 2 uses
  %i.fp = xor i1 %i.fl, %i.fo
  %i.fq = and i1 %.not.i.i, %i.fp
  %.not.i9.i = icmp eq i8 %.val7.i, 0
  %i.fr = and i1 %.not.i9.i, %i.fo
  %i.fs = xor i1 %i.fm, %i.fr
  %..i.i = select i1 %i.fs, ptr %i.fh, ptr %i.fg
  %.sroa.0.0.i.i = select i1 %i.fq, ptr %.sroa.0.0.ph107, ptr %..i.i
  br label %bb.n

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keybNCINvMB1v_INtB1v_10NameServerB2x_E3newATNtNtB2D_4xfer8ProtocolINtNtB5l_12dns_exchange11DnsExchangeB2x_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit: ; preds = %.outer._crit_edge.thread, %bb.j, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.n:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i, %bb.m
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit.i ], [ %i.fj, %bb.m ]
  %i.ft = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fu = sub nuw i64 %i.ft, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = udiv exact i64 %i.fu, 40       ; 3 uses
  %i.fv = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0100251
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %i.fu ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.fw, i64 40, i1 false)
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.028.0.val = load i8, ptr %i.e, align 8, !range !24, !noundef !8
  %i.fx = getelementptr i8, ptr %i.fw, i64 32
  %.val = load i8, ptr %i.fx, align 8, !range !24, !noundef !8
  %.not.i = icmp eq i8 %.sroa.028.0.val, 0
  %i.fy = icmp ne i8 %.val, 0
  %i.fz = and i1 %.not.i, %i.fy
  br i1 %i.fz, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %.not69 = icmp samesign ult i64 %3, %.sroa.16.0100251
  br i1 %.not69, label %bb.r, label %bb.q, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.ga = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.0100251 ; 4 uses
  %i.gb = getelementptr i8, ptr %i.fw, i64 32
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.t, %bb.q
  %.sroa.19.0.i = phi ptr [ %i.ga, %bb.q ], [ %i.go, %bb.t ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.q ], [ %.sroa.11.1.lcssa.i, %bb.t ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph107, %bb.q ], [ %i.gq, %bb.t ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i37, %bb.q ], [ %.sroa.16.0100251, %bb.t ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i39 ; 2 uses
  %i.gd = icmp ult ptr %.sroa.5.0.i, %i.gc
  br i1 %i.gd, label %.lr.ph.i41, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i41, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.gi, %.lr.ph.i41 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.gl, %.lr.ph.i41 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.gm, %.lr.ph.i41 ] ; 2 uses
  %i.ge = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0100251
  br i1 %i.ge, label %bb.u, label %bb.t

.lr.ph.i41:                                       ; preds = %bb.s, %.lr.ph.i41
  %.sroa.5.111.i = phi ptr [ %i.gm, %.lr.ph.i41 ], [ %.sroa.5.0.i, %bb.s ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %i.gl, %.lr.ph.i41 ], [ %.sroa.11.0.i, %bb.s ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.gi, %.lr.ph.i41 ], [ %.sroa.19.0.i, %bb.s ]
  %i.gf = getelementptr i8, ptr %.sroa.5.111.i, i64 32
  %.val.i = load i8, ptr %i.gf, align 8, !range !24, !alias.scope !1031, !noalias !1030, !noundef !8
  %.val12.i = load i8, ptr %i.gb, align 8, !range !24, !alias.scope !1031, !noalias !1030, !noundef !8
  %.not.i.i42 = icmp eq i8 %.val.i, 0
  %i.gg = icmp ne i8 %.val12.i, 0
  %i.gh = and i1 %.not.i.i42, %i.gg               ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -40 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.gh, ptr %2, ptr %i.gi
  %i.gj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gj, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i, i64 40, i1 false), !alias.scope !1032, !noalias !1033
  %i.gk = zext i1 %i.gh to i64
  %i.gl = add i64 %.sroa.11.110.i, %i.gk          ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 40 ; 3 uses
  %i.gn = icmp ult ptr %i.gm, %i.gc
  br i1 %i.gn, label %.lr.ph.i41, label %._crit_edge.i

bb.t:                                             ; preds = %._crit_edge.i
  %i.go = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -40 ; 2 uses
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %i.go, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i, i64 40, i1 false), !alias.scope !1032, !noalias !1034
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 40
  br label %bb.s

bb.u:                                             ; preds = %._crit_edge.i
  %i.gr = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.gr, i1 false), !alias.scope !1032
  %i.gs = sub i64 %.sroa.16.0100251, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0100251, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.u
  %i.gt = getelementptr [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.gs, 1
  %i.gu = icmp eq i64 %.sroa.16.0100251, %.neg
  br i1 %i.gu, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.gs, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.gy, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.v ]
  %i.gv = xor i64 %.sroa.06.014.i, -1
  %i.gw = getelementptr [40 x i8], ptr %i.ga, i64 %i.gv
  %i.gx = getelementptr [40 x i8], ptr %i.gt, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, ptr noundef nonnull align 8 dereferenceable(40) %i.gw, i64 40, i1 false), !alias.scope !1032
  %i.gy = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.gz = xor i64 %.sroa.06.014.i, -2
  %i.ha = getelementptr [40 x i8], ptr %i.ga, i64 %i.gz
  %i.hb = getelementptr [40 x i8], ptr %i.gt, i64 %.sroa.06.014.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hc, ptr noundef nonnull align 8 dereferenceable(40) %i.ha, i64 40, i1 false), !alias.scope !1032
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.v

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.gy, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod333 = trunc i64 %i.gs to i1
  call void @llvm.assume(i1 %lcmp.mod333)
  %i.hd = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.he = getelementptr [40 x i8], ptr %i.ga, i64 %i.hd
  %i.hf = getelementptr [40 x i8], ptr %i.gt, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull align 8 dereferenceable(40) %i.he, i64 40, i1 false), !alias.scope !1032
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.u
  %i.hg = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.hg, label %.thread, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %.not.i43 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0100251
  br i1 %.not.i43, label %bb.x, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsi17nFaBu4HY_10ech_client.exit, !prof !14

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29, !noalias !1035
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.w
  %i.hh = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph107) ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %i.hh, i64 noundef %i.gs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %i.a, ptr noalias nofree noundef align 8 dereferenceable(8) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hi = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.hi, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.o, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %.not70 = icmp samesign ult i64 %3, %.sroa.16.0100251
  br i1 %.not70, label %bb.z, label %bb.y, !prof !25

bb.y:                                             ; preds = %.thread
  %i.hj = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.0100251 ; 4 uses
  %i.hk = getelementptr i8, ptr %i.fw, i64 32
  br label %bb.aa

bb.z:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.19.0.i46 = phi ptr [ %i.hj, %bb.y ], [ %i.hw, %bb.ab ] ; 2 uses
  %.sroa.11.0.i47 = phi i64 [ 0, %bb.y ], [ %i.hy, %bb.ab ] ; 2 uses
  %.sroa.5.0.i48 = phi ptr [ %.sroa.0.0.ph107, %bb.y ], [ %i.hz, %bb.ab ] ; 3 uses
  %.sroa.0.0.i49 = phi i64 [ %.sroa.0.0.i37, %bb.y ], [ %.sroa.16.0100251, %bb.ab ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i49 ; 2 uses
  %i.hm = icmp ult ptr %.sroa.5.0.i48, %i.hl
  br i1 %i.hm, label %.lr.ph.i58, label %._crit_edge.i50

._crit_edge.i50:                                  ; preds = %.lr.ph.i58, %bb.aa
  %.sroa.19.1.lcssa.i51 = phi ptr [ %.sroa.19.0.i46, %bb.aa ], [ %i.hq, %.lr.ph.i58 ]
  %.sroa.11.1.lcssa.i52 = phi i64 [ %.sroa.11.0.i47, %bb.aa ], [ %i.ht, %.lr.ph.i58 ] ; 10 uses
  %.sroa.5.1.lcssa.i53 = phi ptr [ %.sroa.5.0.i48, %bb.aa ], [ %i.hu, %.lr.ph.i58 ] ; 2 uses
  %i.hn = icmp eq i64 %.sroa.0.0.i49, %.sroa.16.0100251
  br i1 %i.hn, label %bb.ac, label %bb.ab

.lr.ph.i58:                                       ; preds = %bb.aa, %.lr.ph.i58
  %.sroa.5.111.i59 = phi ptr [ %i.hu, %.lr.ph.i58 ], [ %.sroa.5.0.i48, %bb.aa ] ; 3 uses
  %.sroa.11.110.i60 = phi i64 [ %i.ht, %.lr.ph.i58 ], [ %.sroa.11.0.i47, %bb.aa ] ; 2 uses
  %.sroa.19.19.i61 = phi ptr [ %i.hq, %.lr.ph.i58 ], [ %.sroa.19.0.i46, %bb.aa ]
  %i.ho = getelementptr i8, ptr %.sroa.5.111.i59, i64 32
  %.val.i62 = load i8, ptr %i.ho, align 8, !range !24, !alias.scope !1037, !noalias !1036, !noundef !8
  %.val12.i63 = load i8, ptr %i.hk, align 8, !range !24, !alias.scope !1037, !noalias !1036, !noundef !8
  %.not.i.i.i64 = icmp ne i8 %.val12.i63, 0
  %i.hp = icmp eq i8 %.val.i62, 0
  %.not3.i.i = or i1 %i.hp, %.not.i.i.i64         ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %.sroa.19.19.i61, i64 -40 ; 3 uses
  %.sroa.01.0.i.i65 = select i1 %.not3.i.i, ptr %2, ptr %i.hq
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i65, i64 %.sroa.11.110.i60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hr, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i59, i64 40, i1 false), !alias.scope !1038, !noalias !1039
  %i.hs = zext i1 %.not3.i.i to i64
  %i.ht = add i64 %.sroa.11.110.i60, %i.hs        ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i59, i64 40 ; 3 uses
  %i.hv = icmp ult ptr %i.hu, %i.hl
  br i1 %i.hv, label %.lr.ph.i58, label %._crit_edge.i50

bb.ab:                                            ; preds = %._crit_edge.i50
  %i.hw = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i51, i64 -40
  %i.hx = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i53, i64 40, i1 false), !alias.scope !1038, !noalias !1040
  %i.hy = add i64 %.sroa.11.1.lcssa.i52, 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i53, i64 40
  br label %bb.aa

bb.ac:                                            ; preds = %._crit_edge.i50
  %i.ia = mul nuw nsw i64 %.sroa.11.1.lcssa.i52, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.ia, i1 false), !alias.scope !1038
  %i.ib = sub i64 %.sroa.16.0100251, %.sroa.11.1.lcssa.i52 ; 6 uses
  %.not18.i54 = icmp eq i64 %.sroa.16.0100251, %.sroa.11.1.lcssa.i52
  br i1 %.not18.i54, label %.outer._crit_edge.thread, label %.lr.ph16.i55

.lr.ph16.i55:                                     ; preds = %bb.ac
  %i.ic = getelementptr [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i52 ; 3 uses
  %.neg346 = add i64 %.sroa.11.1.lcssa.i52, 1
  %xtraiter341 = and i64 %i.ib, 1
  %i.id = icmp eq i64 %.sroa.16.0100251, %.neg346
  br i1 %i.id, label %.epil.preheader334, label %.lr.ph16.i55.new

.lr.ph16.i55.new:                                 ; preds = %.lr.ph16.i55
  %unroll_iter344 = and i64 %i.ib, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph16.i55.new
  %.sroa.06.014.i56 = phi i64 [ 0, %.lr.ph16.i55.new ], [ %i.ih, %bb.ad ] ; 5 uses
  %niter345 = phi i64 [ 0, %.lr.ph16.i55.new ], [ %niter345.next.1, %bb.ad ]
  %i.ie = xor i64 %.sroa.06.014.i56, -1
  %i.if = getelementptr [40 x i8], ptr %i.hj, i64 %i.ie
  %i.ig = getelementptr [40 x i8], ptr %i.ic, i64 %.sroa.06.014.i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ig, ptr noundef nonnull align 8 dereferenceable(40) %i.if, i64 40, i1 false), !alias.scope !1038
  %i.ih = add nuw i64 %.sroa.06.014.i56, 2        ; 2 uses
  %i.ii = xor i64 %.sroa.06.014.i56, -2
  %i.ij = getelementptr [40 x i8], ptr %i.hj, i64 %i.ii
  %i.ik = getelementptr [40 x i8], ptr %i.ic, i64 %.sroa.06.014.i56
  %i.il = getelementptr i8, ptr %i.ik, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.il, ptr noundef nonnull align 8 dereferenceable(40) %i.ij, i64 40, i1 false), !alias.scope !1038
  %niter345.next.1 = add i64 %niter345, 2         ; 2 uses
  %niter345.ncmp.1 = icmp eq i64 %niter345.next.1, %unroll_iter344
  br i1 %niter345.ncmp.1, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit.unr-lcssa, label %bb.ad

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit, label %.epil.preheader334

.epil.preheader334:                               ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit.unr-lcssa, %.lr.ph16.i55
  %.sroa.06.014.i56.epil.init = phi i64 [ 0, %.lr.ph16.i55 ], [ %i.ih, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod343 = trunc i64 %i.ib to i1
  call void @llvm.assume(i1 %lcmp.mod343)
  %i.im = xor i64 %.sroa.06.014.i56.epil.init, -1
  %i.in = getelementptr [40 x i8], ptr %i.hj, i64 %i.im
  %i.io = getelementptr [40 x i8], ptr %i.ic, i64 %.sroa.06.014.i56.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.io, ptr noundef nonnull align 8 dereferenceable(40) %i.in, i64 40, i1 false), !alias.scope !1038
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit.unr-lcssa, %.epil.preheader334
  %i.ip = icmp ugt i64 %.sroa.11.1.lcssa.i52, %.sroa.16.0100251
  br i1 %i.ip, label %bb.ae, label %.outer, !prof !14

.outer._crit_edge.thread:                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keybNCINvMB1v_INtB1v_10NameServerB2x_E3newATNtNtB2D_4xfer8ProtocolINtNtB5l_12dns_exchange11DnsExchangeB2x_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit
  %i.iq = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i52 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ir = icmp ult i64 %i.ib, 33
  br i1 %i.ir, label %.outer._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECsi17nFaBu4HY_10ech_client.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i52, i64 noundef %.sroa.16.0100251, i64 noundef %.sroa.16.0100251, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !10, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !10, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !10, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -80
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !10, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRtECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !10, !noundef !8
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -56
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !10, !noundef !8
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRtECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e)
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %2, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRtECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.d = lshr i64 %i.c, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1056, !noalias !1057, !noundef !8 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !1056, !noalias !1057, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.d ]
  %.pn.i = phi i64 [ %i.c, %bb.a ], [ %i.ab, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.g          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.k, align 1, !noalias !1058 ; 2 uses
  %i.l = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.j
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.z, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = add i64 %.sroa.01.0.i.i, %i.o
  %i.q = and i64 %i.p, %i.g
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -56
  %.val2.i.i = load i16, ptr %i.t, align 2, !noalias !1059, !noundef !8
  %i.u = icmp eq i16 %.val2.i.i, %2
  br i1 %i.u, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMaptBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0ECsi17nFaBu4HY_10ech_client.exit, label %bb.c, !prof !13

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e, !prof !14

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add i16 %.sroa.06.0.i31.i, -1
  %i.z = and i16 %i.y, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.aa = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ab = add i64 %.sroa.01.0.i.i, %i.aa
  br label %bb.b

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMaptBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0ECsi17nFaBu4HY_10ech_client.exit: ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1060, !noalias !1061, !noundef !8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE7reserveNCINvNtB8_3map11make_hashertBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsi17nFaBu4HY_10ech_client.exit, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.ah = call fastcc i64 @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE14reserve_rehashNCINvNtB8_3map11make_hashertBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #31 ; 0 uses
  br label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE7reserveNCINvNtB8_3map11make_hashertBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsi17nFaBu4HY_10ech_client.exit

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE7reserveNCINvNtB8_3map11make_hashertBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.e, %bb.f
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE7reserveNCINvNtB8_3map11make_hashertBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsi17nFaBu4HY_10ech_client.exit, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMaptBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0ECsi17nFaBu4HY_10ech_client.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2_15UdpClientStreamNtNtNtB6_7runtime13tokio_runtime20TokioRuntimeProviderE7builderCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = invoke noundef nonnull ptr @_RNvXsY_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtCsj6eKBz9Db1c_4core7default7Default7defaultCsi17nFaBu4HY_10ech_client()
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !1070
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit

bb.c:                                             ; preds = %bb.b
end_hunk_0
