inline.NumInlined: 1132
inline.NumDeleted: 532
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNCNvXs_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB8_14NameServerPoolNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENtNtNtB1q_4xfer10dns_handle9DnsHandle4send00Csi17nFaBu4HY_10ech_client:bb.a
bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTyjEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.u unwind label %bb.s, !noalias !2014

bb.s:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !2021, !noalias !2016 ; 2 uses
  %i.bx = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.bx, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !2026, !noalias !2016, !nonnull !8, !noundef !8
  %i.by = shl nuw i64 %.val2.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2027
  br label %.body.i

bb.u:                                             ; preds = %bb.r
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !2021, !noalias !2016 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTyjEEECsi17nFaBu4HY_10ech_client.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !2026, !noalias !2016, !nonnull !8, !noundef !8
  %i.ca = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2030
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTyjEEECsi17nFaBu4HY_10ech_client.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTyjEEECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2016
  br label %_RINvNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool32sort_servers_by_query_statisticsNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.i

.split31.i.i.i:                                   ; preds = %.split31.i.i.i.preheader, %bb.q
  %.sroa.01.0.i.i.i144 = phi i64 [ %i.cb, %bb.q ], [ 0, %.split31.i.i.i.preheader ] ; 7 uses
  %i.cb = add nuw nsw i64 %.sroa.01.0.i.i.i144, 1 ; 2 uses
  %i.cc = load i64, ptr %i.bs, align 8, !noalias !2016, !noundef !8 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.01.0.i.i.i144, %i.cc
  br i1 %i.cd, label %.split.i.i.i, label %.invoke.i.i.i

.split.i.i.i:                                     ; preds = %.split31.i.i.i
  %i.ce = load ptr, ptr %i.bq, align 8, !noalias !2016, !nonnull !8, !noundef !8 ; 2 uses
  br label %bb.w

.invoke.i.i.i:                                    ; preds = %bb.x, %.split31.i.i.i
  %i.cf = phi i64 [ %.sroa.01.0.i.i.i144, %.split31.i.i.i ], [ %.sroa.06.0.i.i.i, %bb.x ]
  %i.cg = phi i64 [ %i.cc, %.split31.i.i.i ], [ %.val132.i, %bb.x ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #32
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2014

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.w, %.split.i.i.i
  %i.ch = phi i64 [ %.sroa.01.0.i.i.i144, %.split.i.i.i ], [ %.sroa.06.0.i.i.i, %bb.w ]
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.ch
  %.sroa.06.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.06.0.i.i.i = load i64, ptr %.sroa.06.0.in.i.i.i, align 8, !noalias !2014, !noundef !8 ; 6 uses
  %i.cj = icmp ult i64 %.sroa.06.0.i.i.i, %.sroa.01.0.i.i.i144
  br i1 %i.cj, label %bb.w, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.sroa.01.0.i.i.i144
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.sroa.06.0.i.i.i, ptr %i.cl, align 8, !noalias !2014
  %i.cm = icmp ult i64 %.sroa.06.0.i.i.i, %.val132.i
  br i1 %i.cm, label %bb.y, label %.invoke.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14swap_uncheckedCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %.val131.i, i64 noundef range(i64 0, 1152921504606846976) %.val132.i, i64 noundef %.sroa.01.0.i.i.i144, i64 noundef %.sroa.06.0.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.q unwind label %.loopexit.i.i.i, !noalias !2014

bb.z:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2014
  unreachable

bb.aa:                                            ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %.val128.i, i64 544
  %i.cp = load i64, ptr %i.co, align 8, !noalias !2014, !noundef !8
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1) ; 2 uses
  %i.cq = getelementptr i8, ptr %1, i64 856       ; 2 uses
  %.val134.i = load i64, ptr %i.cq, align 8, !noalias !2010, !noundef !8 ; 2 uses
  %i.cr = icmp ult i64 %.val134.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp ult i64 %spec.select.i, %.val134.i
  br i1 %i.cs, label %bb.ab, label %_RINvNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool32sort_servers_by_query_statisticsNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.cu = atomicrmw add ptr %i.ct, i64 %spec.select.i seq_cst, align 8, !noalias !2014
  %.val133.i = load i64, ptr %i.cq, align 8, !noalias !2010, !noundef !8 ; 4 uses
  %i.cv = icmp ult i64 %.val133.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp eq i64 %.val133.i, 0
  br i1 %i.cw, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #32
          to label %bb.ae unwind label %bb.ad, !noalias !2014

bb.ad:                                            ; preds = %bb.ac
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ab
  %i.cy = getelementptr i8, ptr %1, i64 848
  %.val129.i = load ptr, ptr %i.cy, align 8, !noalias !2010, !nonnull !8, !noundef !8
  %i.cz = urem i64 %i.cu, %.val133.i
  invoke void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE11rotate_leftCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %.val129.i, i64 noundef %.val133.i, i64 noundef %i.cz)
          to label %_RINvNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool32sort_servers_by_query_statisticsNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.ag, !noalias !2014

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ah:                                            ; preds = %_RINvNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool32sort_servers_by_query_statisticsNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ai:                                            ; preds = %_RINvNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool32sort_servers_by_query_statisticsNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit.i
  %i.dc = load ptr, ptr %i.ba, align 8, !noalias !2010, !nonnull !8, !align !864, !noundef !8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.val125.i = load ptr, ptr %i.dd, align 8, !noalias !2014, !nonnull !8, !noundef !8 ; 2 uses
  %i.de = extractvalue { i64, i32 } %i.bk, 1
  %i.df = extractvalue { i64, i32 } %i.bk, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %.val125.i, i64 432
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !2014, !noundef !8
  %i.di = getelementptr inbounds nuw i8, ptr %.val125.i, i64 440
  %i.dj = load i32, ptr %i.di, align 8, !range !2033, !noalias !2014, !noundef !8
  %i.dk = invoke { i64, i32 } @_RNvXs_NtCsaKJjC64KgbL_3std4timeNtB4_7InstantINtNtNtCsj6eKBz9Db1c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.de, i64 noundef %i.dh, i32 noundef %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
          to label %bb.am unwind label %bb.aj, !noalias !2014 ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit256.i: ; preds = %bb.ho, %bb.ak
  %i.dm = phi ptr [ %i.vn, %bb.ak ], [ %i.vu, %bb.ho ]
  %i.dn = phi ptr [ %i.vo, %bb.ak ], [ %i.vv, %bb.ho ]
  %.pn98.i = phi { ptr, i32 } [ %i.dp, %bb.ak ], [ %.pn96.i, %bb.ho ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 880
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.do) #30
          to label %.body.i unwind label %bb.ch, !noalias !2014

bb.ak:                                            ; preds = %bb.hm
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit256.i

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit263.i, %bb.es
  %i.dq = phi ptr [ %i.no, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit263.i ], [ %i.ej, %bb.es ] ; 2 uses
  %i.dr = phi ptr [ %i.np, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit263.i ], [ %i.ek, %bb.es ] ; 2 uses
  %.pn93.pn.i = phi { ptr, i32 } [ %.pn93.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit263.i ], [ %i.nf, %bb.es ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 1067
  %i.dt = load i8, ptr %i.ds, align 1, !range !741, !noalias !2010, !noundef !8
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ib, label %bb.ho

bb.am:                                            ; preds = %bb.ai
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.dw = extractvalue { i64, i32 } %i.dk, 0
  %i.dx = extractvalue { i64, i32 } %i.dk, 1
  store i64 %i.dw, ptr %i.dv, align 8, !noalias !2010
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 872
  store i32 %i.dx, ptr %i.dy, align 8, !noalias !2010
  store i8 0, ptr %i.ax, align 4, !noalias !2010
  %.sroa.0.0.copyload.i = load i64, ptr %i.be, align 8, !noalias !2010
  %.sroa.5264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 848
  %.sroa.5264.0.copyload.i = load ptr, ptr %.sroa.5264.0..sroa_idx.i, align 8, !noalias !2010, !nonnull !8, !noundef !8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2010 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.ea = icmp ult i64 %.sroa.6.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i64 0, ptr %i.eb, align 8, !alias.scope !2034, !noalias !2037
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 904
  store i64 %.sroa.6.0.copyload.i, ptr %i.ec, align 8, !alias.scope !2034, !noalias !2037
  store i64 %.sroa.0.0.copyload.i, ptr %i.dz, align 8, !alias.scope !2034, !noalias !2037
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 888
  store ptr %.sroa.5264.0.copyload.i, ptr %i.ed, align 8, !alias.scope !2034, !noalias !2037
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 912
  store i64 0, ptr %i.ee, align 8, !noalias !2010
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 920
  store i32 20000000, ptr %i.ef, align 8, !noalias !2010
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 952
  store i64 0, ptr %i.eh, align 8, !alias.scope !2039, !noalias !2010
  store i64 0, ptr %i.eg, align 8, !alias.scope !2039, !noalias !2010
  store i8 1, ptr %i.ay, align 1, !noalias !2010
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 960
  store i8 7, ptr %i.ei, align 8, !noalias !2010
  br label %bb.an

bb.an:                                            ; preds = %bb.hj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit211.i, %bb.am
  %i.ej = phi ptr [ %i.ev, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit211.i ], [ %i.av, %bb.am ], [ %i.tt, %bb.hj ] ; 13 uses
  %i.ek = phi ptr [ %i.ew, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit211.i ], [ %i.aw, %bb.am ], [ %i.tu, %bb.hj ] ; 14 uses
  %.sink450.i = phi i64 [ 786, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit211.i ], [ 785, %bb.am ], [ 786, %bb.hj ]
  %3 = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sink450.i
  store i8 0, ptr %3, align 1, !noalias !2010
  %i.el = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %bb.et unwind label %bb.es, !noalias !2014 ; 2 uses

.body.i:                                          ; preds = %bb.hr, %bb.hq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit256.i, %bb.aj, %bb.ah, %bb.ag, %bb.ad, %bb.t, %bb.s, %bb.p, %bb.j
  %i.em = phi ptr [ %i.av, %bb.p ], [ %i.dm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit256.i ], [ %i.av, %bb.t ], [ %i.av, %bb.aj ], [ %i.av, %bb.s ], [ %i.av, %bb.ah ], [ %i.vn, %bb.hq ], [ %i.av, %bb.ad ], [ %i.av, %bb.ag ], [ %i.vn, %bb.hr ], [ %i.av, %bb.j ] ; 2 uses
  %i.en = phi ptr [ %i.aw, %bb.p ], [ %i.dn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit256.i ], [ %i.aw, %bb.t ], [ %i.aw, %bb.aj ], [ %i.aw, %bb.s ], [ %i.aw, %bb.ah ], [ %i.vo, %bb.hq ], [ %i.aw, %bb.ad ], [ %i.aw, %bb.ag ], [ %i.vo, %bb.hr ], [ %i.aw, %bb.j ] ; 2 uses
  %.pn100.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.p ], [ %.pn98.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit256.i ], [ %i.bw, %bb.t ], [ %i.dl, %bb.aj ], [ %i.bw, %bb.s ], [ %i.db, %bb.ah ], [ %i.wa, %bb.hq ], [ %i.cx, %bb.ad ], [ %i.da, %bb.ag ], [ %i.wa, %bb.hr ], [ %i.bl, %bb.j ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 1068
  %i.ep = load i8, ptr %i.eo, align 4, !range !741, !noalias !2010, !noundef !8
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ic, label %bb.ao

bb.ao:                                            ; preds = %bb.ic, %.body.i, %bb.h
  %i.er = phi ptr [ %i.em, %bb.ic ], [ %i.em, %.body.i ], [ %i.av, %bb.h ]
  %i.es = phi ptr [ %i.en, %bb.ic ], [ %i.en, %.body.i ], [ %i.aw, %bb.h ]
  %.pn100.pn.i = phi { ptr, i32 } [ %.pn100.i, %bb.ic ], [ %.pn100.i, %.body.i ], [ %i.bf, %bb.h ]
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1068
  store i8 0, ptr %i.et, align 4, !noalias !2010
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op11dns_request10DnsRequestECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(272) %i.eu) #30
          to label %.body260.i unwind label %bb.ch, !noalias !2014

bb.ap:                                            ; preds = %bb.f
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #33
          to label %.noexc22 unwind label %bb.id

.noexc22:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.f
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #33
          to label %.noexc23 unwind label %bb.id

.noexc23:                                         ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.gk, %bb.f
  %i.ev = phi ptr [ %i.sk, %bb.gk ], [ %i.au, %bb.f ] ; 13 uses
  %i.ew = phi ptr [ %i.sl, %bb.gk ], [ %i.at, %bb.f ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2010
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 1096
  invoke void @_RNvXs1_NtNtNtCsgO2xhGITpH9_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.at unwind label %bb.as, !noalias !2014

bb.as:                                            ; preds = %bb.ar
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2010
  br label %bb.em

bb.at:                                            ; preds = %bb.ar
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !range !83, !noalias !2010, !noundef !8 ; 3 uses
  %i.fb = icmp eq i64 %i.fa, -3
  br i1 %i.fb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2010
  br label %.thread

bb.av:                                            ; preds = %bb.at
  %.sroa.08.0.copyload.i = load ptr, ptr %i.ad, align 8, !noalias !2010 ; 3 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.49.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.49.0..sroa_idx.i, i64 168, i1 false), !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2010
  %.not49.i = icmp eq i64 %i.fa, -2
  br i1 %.not49.i, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !2048, !noalias !2010, !noundef !8 ; 2 uses
  %i.fe = icmp ugt i64 %i.fd, 2
  br i1 %i.fe, label %bb.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !2048, !noalias !2010, !nonnull !8, !noundef !8
  %i.fi = load i64, ptr %i.ff, align 8, !alias.scope !2048, !noalias !2010, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2049
  store i64 %i.fd, ptr %i.g, align 8, !noalias !2049
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.fh, ptr %i.fj, align 8, !noalias !2049
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.fi, ptr %i.fk, align 8, !noalias !2049
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrENtNtNtBL_3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ba unwind label %bb.ay, !noalias !2050

bb.ay:                                            ; preds = %bb.ax
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i156.i = load i64, ptr %i.g, align 8, !alias.scope !2051, !noalias !2049 ; 2 uses
  %i.fm = icmp eq i64 %.val2.i.i.i156.i, 0
  br i1 %i.fm, label %.body160.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val3.i.i.i157.i = load ptr, ptr %i.fj, align 8, !alias.scope !2051, !noalias !2049, !nonnull !8, !noundef !8
  br label %.body160.sink.split.i

bb.ba:                                            ; preds = %bb.ax
  %.val.i.i.i158.i = load i64, ptr %i.g, align 8, !alias.scope !2051, !noalias !2049 ; 2 uses
  %i.fn = icmp eq i64 %.val.i.i.i158.i, 0
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsi17nFaBu4HY_10ech_client.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val1.i.i.i159.i = load ptr, ptr %i.fj, align 8, !alias.scope !2051, !noalias !2049, !nonnull !8, !noundef !8
  %i.fo = mul nuw i64 %.val.i.i.i158.i, 17
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i159.i, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2050
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsi17nFaBu4HY_10ech_client.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2049
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit.i

.thread327.i:                                     ; preds = %bb.bf
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.fq = load i64, ptr %i.ab, align 8, !range !64, !noalias !2010, !noundef !8
  %.not77332.i = icmp eq i64 %i.fq, -1
  br i1 %.not77332.i, label %.thread347.i, label %.thread341.i

bb.bc:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2010
  store ptr %.sroa.08.0.copyload.i, ptr %i.ac, align 8, !noalias !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2010
  store i64 %i.fa, ptr %i.ab, align 8, !noalias !2010
  %.sroa.49.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.49.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.49.i, i64 168, i1 false), !noalias !2010
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 1120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i) ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.fs, i64 17, i1 false), !noalias !2014
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 1160 ; 4 uses
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !2054, !noalias !2059, !noundef !8 ; 3 uses
  %i.fv = icmp ugt i64 %i.fu, 2
  br i1 %i.fv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !2054, !noalias !2059, !nonnull !8, !noundef !8
  %.pre377.i = load i64, ptr %i.fw, align 8, !alias.scope !2062, !noalias !2063
  br label %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 1121
  br label %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i.i

_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.be, %bb.bd
  %i.ga = phi i64 [ %.pre377.i, %bb.bd ], [ %i.fu, %bb.be ] ; 2 uses
  %.sink12.i.i.i = phi ptr [ %i.fy, %bb.bd ], [ %i.fz, %bb.be ]
  %.sink11.i.i.i = phi ptr [ %i.fw, %bb.bd ], [ %i.ft, %bb.be ]
  %.sink.i.i.i = phi i64 [ %i.fu, %bb.bd ], [ 2, %bb.be ]
  %i.gb = icmp eq i64 %i.ga, %.sink.i.i.i
  br i1 %i.gb, label %bb.bf, label %bb.bg, !prof !1781

bb.bf:                                            ; preds = %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i.i
  invoke fastcc void @_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E21reserve_one_uncheckedCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fr)
          to label %.noexc163.i unwind label %.thread327.i, !noalias !2014

.noexc163.i:                                      ; preds = %bb.bf
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !2062, !noalias !2063, !nonnull !8, !noundef !8
  %.pre.i.i = load i64, ptr %i.gc, align 8, !alias.scope !2062, !noalias !2063
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc163.i, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i.i
  %i.gf = phi i64 [ %.pre.i.i, %.noexc163.i ], [ %i.ga, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i.i ]
  %.sroa.04.0.i.i = phi ptr [ %i.ge, %.noexc163.i ], [ %.sink12.i.i.i, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i.i ]
  %.sroa.0.0.i162.i = phi ptr [ %i.gc, %.noexc163.i ], [ %.sink11.i.i.i, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecANtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i.i ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [17 x i8], ptr %.sroa.04.0.i.i, i64 %i.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.gg, ptr noundef nonnull readonly align 1 dereferenceable(17) %i.aa, i64 17, i1 false), !noalias !2014
  %i.gh = load i64, ptr %.sroa.0.0.i162.i, align 8, !alias.scope !2062, !noalias !2063, !noundef !8
  %i.gi = add i64 %i.gh, 1
  store i64 %i.gi, ptr %.sroa.0.0.i162.i, align 8, !alias.scope !2062, !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2010
  %i.gj = load i64, ptr %i.ab, align 8, !range !64, !noalias !2010, !noundef !8
  %.not360.i = icmp eq i64 %i.gj, -1              ; 3 uses
  br i1 %.not360.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.49.8..sroa_idx.i, i64 72, i1 false), !noalias !2010
  %i.gk = load i8, ptr %i.z, align 8, !range !929, !noalias !2010, !noundef !8 ; 2 uses
  switch i8 %i.gk, label %bb.da [
    i8 0, label %bb.db
    i8 2, label %bb.di
    i8 7, label %bb.dj
    i8 9, label %bb.dj
    i8 10, label %bb.dj
    i8 12, label %bb.dk
  ]

bb.bi:                                            ; preds = %bb.bg
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ab, i64 138
end_hunk_0
begin_hunk_1_@_RNCNCNvXs_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB8_14NameServerPoolNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENtNtNtB1q_4xfer10dns_handle9DnsHandle4send00Csi17nFaBu4HY_10ech_client:bb.a
  br label %.body160.sink.split.i

bb.dy:                                            ; preds = %bb.dv
  %.val.i.i.i193.i = load i64, ptr %i.e, align 8, !alias.scope !2119, !noalias !2117 ; 2 uses
  %i.lm = icmp eq i64 %.val.i.i.i193.i, 0
  br i1 %i.lm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsi17nFaBu4HY_10ech_client.exit.i.i195.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.val1.i.i.i194.i = load ptr, ptr %i.li, align 8, !alias.scope !2119, !noalias !2117, !nonnull !8, !noundef !8
  %i.ln = mul nuw i64 %.val.i.i.i193.i, 17
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i194.i, i64 noundef %i.ln, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2118
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsi17nFaBu4HY_10ech_client.exit.i.i195.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsi17nFaBu4HY_10ech_client.exit.i.i195.i: ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2117
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit198.i

.body160.sink.split.i:                            ; preds = %bb.dx, %bb.az
  %.val2.i.i.i156.sink.i = phi i64 [ %.val2.i.i.i156.i, %bb.az ], [ %.val2.i.i.i190.i, %bb.dx ]
  %.val3.i.i.i157.sink.i = phi ptr [ %.val3.i.i.i157.i, %bb.az ], [ %.val3.i.i.i191.i, %bb.dx ]
  %.pn81.ph.i = phi { ptr, i32 } [ %i.fl, %bb.az ], [ %i.lk, %bb.dx ]
  %i.lo = mul nuw i64 %.val2.i.i.i156.sink.i, 17
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i157.sink.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2014
  br label %.body160.i

.body160.i:                                       ; preds = %bb.em, %.body160.sink.split.i, %bb.dw, %bb.ay
  %.pn81.i = phi { ptr, i32 } [ %.pn78.pn.i, %bb.em ], [ %i.fl, %bb.ay ], [ %i.lk, %bb.dw ], [ %.pn81.ph.i, %.body160.sink.split.i ]
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 1072
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.lp) #30
          to label %.body200.i unwind label %bb.ch, !noalias !2014

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit198.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsi17nFaBu4HY_10ech_client.exit.i.i195.i
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 5 uses
  invoke void @_RNvXs8_NtNtCsgO2xhGITpH9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %bb.ec unwind label %bb.ea, !noalias !2014

bb.ea:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit198.i
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  %i.ls = load ptr, ptr %i.lq, align 8, !alias.scope !2128, !noalias !2010, !nonnull !8, !noundef !8
  %i.lt = atomicrmw sub ptr %i.ls, i64 1 release, align 8, !noalias !2131
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.eb, label %.body200.i

bb.eb:                                            ; preds = %bb.ea
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2u_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lq) #27
          to label %.body200.i unwind label %bb.ee, !noalias !2014

bb.ec:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit198.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  %i.lv = load ptr, ptr %i.lq, align 8, !alias.scope !2138, !noalias !2010, !nonnull !8, !noundef !8
  %i.lw = atomicrmw sub ptr %i.lv, i64 1 release, align 8, !noalias !2139
  %i.lx = icmp eq i64 %i.lw, 1
  br i1 %i.lx, label %bb.ed, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i

bb.ed:                                            ; preds = %bb.ec
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2u_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lq) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.ef, !noalias !2014

bb.ee:                                            ; preds = %bb.eb
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2014
  unreachable

.body200.i:                                       ; preds = %bb.gj, %bb.eo, %bb.en, %bb.ef, %bb.eb, %bb.ea, %.body160.i
  %i.lz = phi ptr [ %i.ej, %bb.gj ], [ %i.ev, %.body160.i ], [ %i.ev, %bb.ea ], [ %i.ev, %bb.eb ], [ %i.mc, %bb.ef ], [ %i.ev, %bb.eo ], [ %i.ev, %bb.en ]
  %i.ma = phi ptr [ %i.ek, %bb.gj ], [ %i.ew, %.body160.i ], [ %i.ew, %bb.ea ], [ %i.ew, %bb.eb ], [ %i.md, %bb.ef ], [ %i.ew, %bb.eo ], [ %i.ew, %bb.en ]
  %.pn83.i = phi { ptr, i32 } [ %i.sh, %bb.gj ], [ %.pn81.i, %.body160.i ], [ %i.lr, %bb.ea ], [ %i.lr, %bb.eb ], [ %i.me, %bb.ef ], [ %i.mw, %bb.eo ], [ %i.mw, %bb.en ]
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 1168
  invoke void @_RNvXsv_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mb)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.ch, !noalias !2014

bb.ef:                                            ; preds = %.loopexit.i, %bb.eq, %bb.ed
  %i.mc = phi ptr [ %i.ej, %.loopexit.i ], [ %i.ev, %bb.eq ], [ %i.ev, %bb.ed ]
  %i.md = phi ptr [ %i.ek, %.loopexit.i ], [ %i.ew, %bb.eq ], [ %i.ew, %bb.ed ]
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.ed, %bb.ec
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 1168
  invoke void @_RNvXsv_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit204.i unwind label %bb.eg, !noalias !2014

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.hi, %bb.hf, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.hb, %bb.gw, %bb.gt, %bb.gp, %.body.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit231.i, %bb.fa, %bb.eg, %.body200.i
  %i.mg = phi ptr [ %i.tt, %bb.hi ], [ %i.tt, %bb.hf ], [ %i.ej, %.body.i.i.i ], [ %i.tt, %bb.gw ], [ %i.lz, %.body200.i ], [ %i.ej, %bb.gt ], [ %i.ej, %bb.fa ], [ %i.tt, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ej, %bb.gp ], [ %i.ej, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit231.i ], [ %i.tt, %bb.hb ], [ %i.ev, %bb.eg ] ; 2 uses
  %i.mh = phi ptr [ %i.tu, %bb.hi ], [ %i.tu, %bb.hf ], [ %i.ek, %.body.i.i.i ], [ %i.tu, %bb.gw ], [ %i.ma, %.body200.i ], [ %i.ek, %bb.gt ], [ %i.ek, %bb.fa ], [ %i.tu, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ek, %bb.gp ], [ %i.ek, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit231.i ], [ %i.tu, %bb.hb ], [ %i.ew, %bb.eg ] ; 2 uses
  %.pn91.i = phi { ptr, i32 } [ %i.ve, %bb.hi ], [ %i.va, %bb.hf ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.tx, %bb.gw ], [ %.pn83.i, %.body200.i ], [ %i.to, %bb.gt ], [ %i.op, %bb.fa ], [ %i.ug, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.sx, %bb.gp ], [ %.pn40.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit231.i ], [ %i.ug, %bb.hb ], [ %i.ml, %bb.eg ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 1066
  %i.mj = load i8, ptr %i.mi, align 2, !range !741, !noalias !2010, !noundef !8
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.ia, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit263.i

bb.eg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit211.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit204.i: ; preds = %bb.gr, %bb.go, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i
  %i.mm = phi ptr [ %i.ej, %bb.go ], [ %i.ej, %bb.gr ], [ %i.ev, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i ] ; 2 uses
  %i.mn = phi ptr [ %i.ek, %bb.go ], [ %i.ek, %bb.gr ], [ %i.ew, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i ] ; 2 uses
  %.sroa.021.1.i = phi i64 [ -1, %bb.go ], [ -1, %bb.gr ], [ %.sroa.021.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i ]
  %.sroa.6.1.i = phi i8 [ %.sroa.029.0.copyload.i, %bb.go ], [ 10, %bb.gr ], [ %.sroa.6.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit.i ]
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 1066 ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 2, !range !741, !noalias !2010, !noundef !8
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.hk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit252.i

bb.eh:                                            ; preds = %bb.du
  br i1 %.not360.i, label %.thread341.i, label %bb.ej

bb.ei:                                            ; preds = %bb.du
  br i1 %.not360.i, label %bb.ej, label %.thread347.i

bb.ej:                                            ; preds = %.thread347.i, %.thread341.i, %bb.ei, %bb.eh
  %.pn73.pn.pn338.i = phi { ptr, i32 } [ %.pn73.pn.pn340351.i, %.thread347.i ], [ %.pn73.pn.pn339345.i, %.thread341.i ], [ %.pn73.pn.i, %bb.ei ], [ %.pn73.pn.i, %bb.eh ] ; 2 uses
  %.sroa.016.5333.i = phi i1 [ %.sroa.016.5335352.i, %.thread347.i ], [ %.sroa.016.5334346.i, %.thread341.i ], [ %.sroa.016.0.i, %bb.ei ], [ %.sroa.016.0.i, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2010
  br i1 %.sroa.016.5333.i, label %bb.ek, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit206.i

.thread341.i:                                     ; preds = %bb.eh, %.thread327.i
  %.sroa.016.5334346.i = phi i1 [ %.sroa.016.0.i, %bb.eh ], [ true, %.thread327.i ]
  %.pn73.pn.pn339345.i = phi { ptr, i32 } [ %.pn73.pn.i, %bb.eh ], [ %i.fp, %.thread327.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ab) #30
          to label %bb.ej unwind label %bb.ch, !noalias !2014

.thread347.i:                                     ; preds = %.thread.i.thread, %bb.ei, %.thread.i, %.thread327.i
  %.sroa.016.5335352.i = phi i1 [ %.sroa.016.0.i, %bb.ei ], [ true, %.thread327.i ], [ %.sroa.016.2.i, %.thread.i ], [ false, %.thread.i.thread ]
  %.pn73.pn.pn340351.i = phi { ptr, i32 } [ %.pn73.pn.i, %bb.ei ], [ %i.fp, %.thread327.i ], [ %.pn68.i, %.thread.i ], [ %i.la, %.thread.i.thread ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.49.8..sroa_idx.i) #30
          to label %bb.ej unwind label %bb.ch, !noalias !2014

bb.ek:                                            ; preds = %bb.ej, %.thread422.i
  %.pn73.pn.pn338426.i = phi { ptr, i32 } [ %.pn68.i, %.thread422.i ], [ %.pn73.pn.pn338.i, %bb.ej ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %i.mr = load ptr, ptr %i.ac, align 8, !alias.scope !2146, !noalias !2010, !nonnull !8, !noundef !8
  %i.ms = atomicrmw sub ptr %i.mr, i64 1 release, align 8, !noalias !2147
  %i.mt = icmp eq i64 %i.ms, 1
  br i1 %i.mt, label %bb.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit206.i

bb.el:                                            ; preds = %bb.ek
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit206.i unwind label %bb.ch, !noalias !2014

bb.em:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit206.i, %bb.as
  %.pn78.pn.i = phi { ptr, i32 } [ %.pn78.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit206.i ], [ %i.ey, %bb.as ]
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 1120
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(48) %i.mu) #30
          to label %.body160.i unwind label %bb.ch, !noalias !2014

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsi17nFaBu4HY_10ech_client.exit.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 5 uses
  invoke void @_RNvXs8_NtNtCsgO2xhGITpH9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %bb.ep unwind label %bb.en, !noalias !2014

bb.en:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit.i
  %i.mw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  %i.mx = load ptr, ptr %i.mv, align 8, !alias.scope !2154, !noalias !2010, !nonnull !8, !noundef !8
  %i.my = atomicrmw sub ptr %i.mx, i64 1 release, align 8, !noalias !2157
  %i.mz = icmp eq i64 %i.my, 1
  br i1 %i.mz, label %bb.eo, label %.body200.i

bb.eo:                                            ; preds = %bb.en
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2u_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mv) #27
          to label %.body200.i unwind label %bb.er, !noalias !2014

bb.ep:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsi17nFaBu4HY_10ech_client.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  %i.na = load ptr, ptr %i.mv, align 8, !alias.scope !2164, !noalias !2010, !nonnull !8, !noundef !8
  %i.nb = atomicrmw sub ptr %i.na, i64 1 release, align 8, !noalias !2165
  %i.nc = icmp eq i64 %i.nb, 1
  br i1 %i.nc, label %bb.eq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit211.i

bb.eq:                                            ; preds = %bb.ep
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2u_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mv) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit211.i unwind label %bb.ef, !noalias !2014

bb.er:                                            ; preds = %bb.eo
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2014
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit211.i: ; preds = %bb.eq, %bb.ep
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 1168
  invoke void @_RNvXsv_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ne)
          to label %bb.an unwind label %bb.eg, !noalias !2014

bb.es:                                            ; preds = %bb.an
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.et:                                            ; preds = %bb.an
  %i.ng = extractvalue { i64, i32 } %i.el, 0      ; 2 uses
  %i.nh = extractvalue { i64, i32 } %i.el, 1
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %.val146.i = load i64, ptr %i.ni, align 8, !noalias !2010, !noundef !8 ; 2 uses
  %i.nj = getelementptr i8, ptr %1, i64 872
  %.val147.i = load i32, ptr %i.nj, align 8, !noalias !2010
  %i.nk = icmp eq i64 %i.ng, %.val146.i
  %i.nl = icmp uge i32 %i.nh, %.val147.i
  %i.nm = icmp sge i64 %i.ng, %.val146.i
  %i.nn = select i1 %i.nk, i1 %i.nl, i1 %i.nm
  br i1 %i.nn, label %bb.hl, label %bb.ev

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit263.i: ; preds = %bb.ia, %bb.eu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i
  %i.no = phi ptr [ %i.nr, %bb.eu ], [ %i.mg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i ], [ %i.mg, %bb.ia ]
  %i.np = phi ptr [ %i.ns, %bb.eu ], [ %i.mh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i ], [ %i.mh, %bb.ia ]
  %.pn93.i = phi { ptr, i32 } [ %i.nt, %bb.eu ], [ %.pn91.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i ], [ %.pn91.i, %bb.ia ]
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 1066
  store i8 0, ptr %i.nq, align 2, !noalias !2010
  br label %bb.al

bb.eu:                                            ; preds = %bb.hk, %bb.hj
  %i.nr = phi ptr [ %i.mm, %bb.hk ], [ %i.tt, %bb.hj ]
  %i.ns = phi ptr [ %i.mn, %bb.hk ], [ %i.tu, %bb.hj ]
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit263.i

bb.ev:                                            ; preds = %bb.et
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 6 uses
  store i64 0, ptr %i.nv, align 8, !alias.scope !2166, !noalias !2010
  store i64 0, ptr %i.nu, align 8, !alias.scope !2166, !noalias !2010
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 1066 ; 2 uses
  store i8 1, ptr %i.nw, align 2, !noalias !2010
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.ny = getelementptr i8, ptr %1, i64 904       ; 2 uses
  %.val148368.i = load i64, ptr %i.ny, align 8, !noalias !2010, !noundef !8
  %i.nz = icmp eq i64 %.val148368.i, 0
  br i1 %i.nz, label %.thread355.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ev
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 10 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 1065 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 4 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fc, %.lr.ph.i
  %i.oe = load i64, ptr %i.nv, align 8, !alias.scope !2169, !noalias !2174, !noundef !8 ; 3 uses
  %i.of = icmp ugt i64 %i.oe, 2
  br i1 %i.of, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.og = load i64, ptr %i.oa, align 8, !alias.scope !2169, !noalias !2174, !noundef !8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %.sink12.i.i214.i = phi i64 [ %i.og, %bb.ex ], [ %i.oe, %bb.ew ]
  %i.oh = load ptr, ptr %i.ob, align 8, !noalias !2010, !nonnull !8, !align !864, !noundef !8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %.val124.i = load ptr, ptr %i.oi, align 8, !noalias !2014, !nonnull !8, !noundef !8
  %i.oj = getelementptr inbounds nuw i8, ptr %.val124.i, i64 544
  %i.ok = load i64, ptr %i.oj, align 8, !noalias !2014, !noundef !8
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.ok, i64 1)
  %i.ol = icmp ult i64 %.sink12.i.i214.i, %..i.i
  br i1 %i.ol, label %bb.ez, label %._crit_edge.i

bb.ez:                                            ; preds = %bb.ey
  %i.om = invoke noundef ptr @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE9pop_frontCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nx)
          to label %bb.fb unwind label %bb.fa, !noalias !2014 ; 3 uses

._crit_edge.i:                                    ; preds = %bb.ey, %.._crit_edge.loopexit_crit_edge.i
  %i.on = phi i64 [ %.pre.pre.i, %.._crit_edge.loopexit_crit_edge.i ], [ %i.oe, %bb.ey ] ; 3 uses
  %i.oo = icmp ugt i64 %i.on, 2
  br i1 %i.oo, label %bb.fr, label %.thread355.i

bb.fa:                                            ; preds = %bb.ez
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i

bb.fb:                                            ; preds = %bb.ez
  %.not.i = icmp eq ptr %i.om, null
  br i1 %.not.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit229.i, %bb.fb
  %.val148.i = load i64, ptr %i.ny, align 8, !noalias !2010, !noundef !8
  %i.oq = icmp eq i64 %.val148.i, 0
  br i1 %i.oq, label %.._crit_edge.loopexit_crit_edge.i, label %bb.ew

.._crit_edge.loopexit_crit_edge.i:                ; preds = %bb.fc
  %.pre.pre.i = load i64, ptr %i.nv, align 8, !alias.scope !2176, !noalias !2181
  br label %._crit_edge.i

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2010
  store ptr %i.om, ptr %i.ag, align 8, !noalias !2010
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.os = invoke noundef zeroext i1 @_RINvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.oc, ptr noundef nonnull align 8 %i.or)
          to label %bb.fe unwind label %bb.fp, !noalias !2014

bb.fe:                                            ; preds = %bb.fd
  br i1 %i.os, label %bb.ff, label %.critedge114.i

bb.ff:                                            ; preds = %bb.fe
  %i.ot = load ptr, ptr %i.ag, align 8, !noalias !2010, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2010
  store ptr %i.ot, ptr %i.d, align 8, !noalias !2186
  %i.ou = load i64, ptr %i.nv, align 8, !alias.scope !2187, !noalias !2190, !noundef !8 ; 3 uses
  %i.ov = icmp ugt i64 %i.ou, 2
  br i1 %i.ov, label %bb.fg, label %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i216.i

bb.fg:                                            ; preds = %bb.ff
  %i.ow = load ptr, ptr %i.od, align 8, !alias.scope !2187, !noalias !2190, !nonnull !8, !noundef !8
  %.pre.i224.i = load i64, ptr %i.oa, align 8, !alias.scope !2183, !noalias !2010
  br label %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i216.i

bb.fh:                                            ; preds = %bb.fj
  %i.ox = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oy = atomicrmw sub ptr %i.ot, i64 1 release, align 8, !noalias !2192
  %i.oz = icmp eq i64 %i.oy, 1
  br i1 %i.oz, label %bb.fi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit231.i

bb.fi:                                            ; preds = %bb.fh
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit231.i unwind label %bb.fl, !noalias !2014

_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i216.i: ; preds = %bb.ff, %bb.fg
  %i.pa = phi i64 [ %.pre.i224.i, %bb.fg ], [ %i.ou, %bb.ff ] ; 2 uses
  %.sink12.i.i217.i = phi ptr [ %i.ow, %bb.fg ], [ %i.oa, %bb.ff ]
  %.sink11.i.i218.i = phi ptr [ %i.oa, %bb.fg ], [ %i.nv, %bb.ff ]
  %.sink.i.i219.i = phi i64 [ %i.ou, %bb.fg ], [ 2, %bb.ff ]
  %i.pb = icmp eq i64 %i.pa, %.sink.i.i219.i
  br i1 %i.pb, label %bb.fj, label %bb.fm, !prof !1781

bb.fj:                                            ; preds = %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i216.i
  invoke fastcc void @_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E21reserve_one_uncheckedCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nu)
          to label %bb.fk unwind label %bb.fh, !noalias !2014

bb.fk:                                            ; preds = %bb.fj
  %i.pc = load ptr, ptr %i.od, align 8, !alias.scope !2183, !noalias !2010, !nonnull !8, !noundef !8
  %.pre6.i223.i = load i64, ptr %i.oa, align 8, !alias.scope !2183, !noalias !2010
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fi
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2014
  unreachable

bb.fm:                                            ; preds = %bb.fk, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i216.i
  %i.pe = phi i64 [ %.pre6.i223.i, %bb.fk ], [ %i.pa, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i216.i ]
  %.sroa.04.0.i220.i = phi ptr [ %i.pc, %bb.fk ], [ %.sink12.i.i217.i, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i216.i ]
  %.sroa.0.0.i221.i = phi ptr [ %i.oa, %bb.fk ], [ %.sink11.i.i218.i, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i216.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0.i220.i, i64 %i.pe
  store ptr %i.ot, ptr %i.pf, align 8, !noalias !2014
  %i.pg = load i64, ptr %.sroa.0.0.i221.i, align 8, !alias.scope !2183, !noalias !2010, !noundef !8
  %i.ph = add i64 %i.pg, 1
  store i64 %i.ph, ptr %.sroa.0.0.i221.i, align 8, !alias.scope !2183, !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2010
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit229.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit229.i: ; preds = %bb.fn, %.critedge114.i, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2010
  br label %bb.fc

.critedge114.i:                                   ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  %i.pi = load ptr, ptr %i.ag, align 8, !alias.scope !2203, !noalias !2010, !nonnull !8, !noundef !8
  %i.pj = atomicrmw sub ptr %i.pi, i64 1 release, align 8, !noalias !2204
  %i.pk = icmp eq i64 %i.pj, 1
  br i1 %i.pk, label %bb.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit229.i

bb.fn:                                            ; preds = %.critedge114.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit229.i unwind label %bb.fo, !noalias !2014

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit231.i: ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.fi, %bb.fh
  %.pn40.i = phi { ptr, i32 } [ %i.pl, %bb.fo ], [ %i.pm, %bb.fp ], [ %i.pm, %bb.fq ], [ %i.ox, %bb.fh ], [ %i.ox, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2010
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i

bb.fo:                                            ; preds = %bb.fn
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit231.i

bb.fp:                                            ; preds = %bb.fd
end_hunk_1
begin_hunk_2_@_RNCNCNvXs_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB8_14NameServerPoolNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENtNtNtB1q_4xfer10dns_handle9DnsHandle4send00Csi17nFaBu4HY_10ech_client:bb.a
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 960
  %.sroa.029.0.copyload.i = load i8, ptr %i.sw, align 8, !noalias !2010
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.430.0..sroa_idx.i, i64 71, i1 false), !noalias !2010
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit204.i

bb.gp:                                            ; preds = %bb.gq, %bb.gn
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i

bb.gq:                                            ; preds = %bb.gn
  %i.sy = extractvalue { i64, i32 } %i.su, 0
  %i.sz = extractvalue { i64, i32 } %i.su, 1
  %i.ta = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ni, i64 noundef %i.sy, i32 noundef %i.sz)
          to label %bb.gr unwind label %bb.gp, !noalias !2014 ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.tc = extractvalue { i64, i32 } %i.ta, 0      ; 5 uses
  %i.td = extractvalue { i64, i32 } %i.ta, 1      ; 4 uses
  store i64 %i.tc, ptr %i.tb, align 8, !noalias !2010
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 1080
  store i32 %i.td, ptr %i.te, align 8, !noalias !2010
  %i.tf = icmp eq i64 %i.tc, 0
  %i.tg = icmp eq i32 %i.td, 0
  %.sroa.0.0.i241.i = select i1 %i.tf, i1 %i.tg, i1 false
  br i1 %.sroa.0.0.i241.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit204.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.th = load i64, ptr %i.sp, align 8, !noalias !2010, !noundef !8 ; 3 uses
  %i.ti = load i32, ptr %i.sq, align 8, !range !2033, !noalias !2010, !noundef !8 ; 2 uses
  %i.tj = icmp eq i64 %i.tc, %i.th
  %i.tk = icmp samesign ult i32 %i.td, %i.ti
  %i.tl = icmp ult i64 %i.tc, %i.th
  %i.tm = select i1 %i.tj, i1 %i.tk, i1 %i.tl     ; 2 uses
  %..i242.i = select i1 %i.tm, i32 %i.td, i32 %i.ti
  %.2.i.i = select i1 %i.tm, i64 %i.tc, i64 %i.th
  %i.tn = invoke { ptr, ptr } @_RNvXs2_NtCs5MfxasYgTEl_11hickory_net7runtimeNtB5_9TokioTimeNtB5_4Time9delay_for(i64 noundef %.2.i.i, i32 noundef %..i242.i)
          to label %bb.gu unwind label %bb.gt, !noalias !2014 ; 2 uses

bb.gt:                                            ; preds = %bb.gs
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i

bb.gu:                                            ; preds = %bb.gs
  %i.tp = extractvalue { ptr, ptr } %i.tn, 0
  %i.tq = extractvalue { ptr, ptr } %i.tn, 1
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store ptr %i.tp, ptr %i.tr, align 8, !noalias !2010
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 1096
  store ptr %i.tq, ptr %i.ts, align 8, !noalias !2010
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.f
  %i.tt = phi ptr [ %i.ej, %bb.gu ], [ %i.au, %bb.f ] ; 8 uses
  %i.tu = phi ptr [ %i.ek, %bb.gu ], [ %i.at, %bb.f ] ; 7 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 3 uses
  %i.tw = invoke noundef zeroext i1 @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.tv, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.gx unwind label %bb.gw, !noalias !2014

bb.gw:                                            ; preds = %bb.gv
  %i.tx = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.tv, align 8, !noalias !2010
  %i.ty = getelementptr i8, ptr %1, i64 1096
  %.val121.i = load ptr, ptr %i.ty, align 8, !noalias !2010, !nonnull !8, !align !864, !noundef !8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client(ptr %.val.i, ptr nonnull %.val121.i) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.ch, !noalias !2014

bb.gx:                                            ; preds = %bb.gv
  br i1 %i.tw, label %.thread, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %.val122.i = load ptr, ptr %i.tv, align 8, !noalias !2010 ; 5 uses
  %i.tz = getelementptr i8, ptr %1, i64 1096
  %.val123.i = load ptr, ptr %i.tz, align 8, !noalias !2010, !nonnull !8, !align !864, !noundef !8 ; 5 uses
  %i.ua = load ptr, ptr %.val123.i, align 8, !invariant.load !8, !noalias !2014 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ua, null
  br i1 %.not.i.i.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val122.i) ]
  invoke void %i.ua(ptr noundef nonnull %.val122.i)
          to label %bb.ha unwind label %bb.hb, !noalias !2014

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.ub = getelementptr inbounds nuw i8, ptr %.val123.i, i64 8
  %i.uc = load i64, ptr %i.ub, align 8, !range !27, !invariant.load !8, !noalias !2014 ; 2 uses
  %i.ud = icmp eq i64 %i.uc, 0
  br i1 %i.ud, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ha
  %i.ue = getelementptr inbounds nuw i8, ptr %.val123.i, i64 16
  %i.uf = load i64, ptr %i.ue, align 8, !range !28, !invariant.load !8, !noalias !2014
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val122.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val122.i, i64 noundef %i.uc, i64 noundef range(i64 1, -9223372036854775807) %i.uf) #29, !noalias !2014
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i

bb.hb:                                            ; preds = %bb.gz
  %i.ug = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.val123.i, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !range !27, !invariant.load !8, !noalias !2014 ; 2 uses
  %i.uj = icmp eq i64 %i.ui, 0
  br i1 %i.uj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.hb
  %i.uk = getelementptr inbounds nuw i8, ptr %.val123.i, i64 16
  %i.ul = load i64, ptr %i.uk, align 8, !range !28, !invariant.load !8, !noalias !2014
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val122.i, i64 noundef %i.ui, i64 noundef range(i64 1, -9223372036854775807) %i.ul) #29, !noalias !2014
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ha
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2010
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 3 uses
  %i.up = load i64, ptr %i.uo, align 8, !alias.scope !2279, !noalias !2284, !noundef !8 ; 2 uses
  %i.uq = icmp ugt i64 %i.up, 2
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 3 uses
  br i1 %i.uq, label %bb.hc, label %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i245.i

bb.hc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i
  %i.us = load i64, ptr %i.ur, align 8, !alias.scope !2279, !noalias !2284, !noundef !8
  br label %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i245.i

_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i245.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i, %bb.hc
  %.sink12.i34.i.i = phi i64 [ %i.us, %bb.hc ], [ %i.up, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i ] ; 2 uses
  %.sink11.i.i247.i = phi ptr [ %i.ur, %bb.hc ], [ %i.uo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i ]
  store i64 0, ptr %.sink11.i.i247.i, align 8, !alias.scope !2287, !noalias !2288
  %i.ut = load i64, ptr %i.uo, align 8, !alias.scope !2289, !noalias !2292, !noundef !8
  %i.uu = icmp ugt i64 %i.ut, 2
  br i1 %i.uu, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i245.i
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.uw = load ptr, ptr %i.uv, align 8, !alias.scope !2289, !noalias !2292, !nonnull !8, !noundef !8
  br label %bb.he

bb.he:                                            ; preds = %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i245.i, %bb.hd
  %.sink13.i24.i.i = phi ptr [ %i.uw, %bb.hd ], [ %i.ur, %_RNvMsc_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCsi17nFaBu4HY_10ech_client.exit.i245.i ] ; 2 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %.sink13.i24.i.i, i64 %.sink12.i34.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 1065
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  store ptr %.sink13.i24.i.i, ptr %i.af, align 8, !alias.scope !2297, !noalias !2299
  %.sroa.5270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ux, ptr %.sroa.5270.0..sroa_idx.i, align 8, !alias.scope !2297, !noalias !2299
  %.sroa.6271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.un, ptr %.sroa.6271.0..sroa_idx.i, align 8, !alias.scope !2297, !noalias !2299
  %.sroa.7272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sink12.i34.i.i, ptr %.sroa.7272.0..sroa_idx.i, align 8, !alias.scope !2297, !noalias !2299
  %.sroa.8273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 0, ptr %.sroa.8273.0..sroa_idx.i, align 8, !alias.scope !2297, !noalias !2299
  %i.uz = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.uy, ptr %i.uz, align 8, !alias.scope !2301, !noalias !2302
  invoke void @_RINvXsj_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB16_E6extendINtNtNtB3N_8adapters6filter6FilterINtCsdhoN4pTjS9m_8smallvec5DrainAB16_j2_ENCNCNvMs0_NtB1s_16name_server_poolINtB68_9PoolStateB2n_E8try_send00EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.um, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.af)
          to label %bb.hg unwind label %bb.hf, !noalias !2014

bb.hf:                                            ; preds = %bb.he
  %i.va = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2010
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i

bb.hg:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2010
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !alias.scope !2303, !noalias !2010, !noundef !8 ; 2 uses
  %i.vd = icmp slt i64 %i.vc, 0
  br i1 %i.vd, label %bb.hh, label %bb.hj, !prof !1781

bb.hh:                                            ; preds = %bb.hg
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33
          to label %.noexc248.i unwind label %bb.hi, !noalias !2014

.noexc248.i:                                      ; preds = %bb.hh
  unreachable

bb.hi:                                            ; preds = %bb.hh
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i

bb.hj:                                            ; preds = %bb.hg
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 8, !range !2033, !alias.scope !2303, !noalias !2010, !noundef !8 ; 3 uses
  %.cmp.i.i.i.i = icmp samesign ult i32 %i.vg, 500000000
  %i.vh = shl nuw nsw i32 %i.vg, 1                ; 2 uses
  %.urem.i.i.i.i = add nsw i32 %i.vh, -1000000000
  %i.vi = shl nuw i64 %i.vc, 1
  %.cmp3.i.i.i.i = icmp samesign ugt i32 %i.vg, 499999999
  %i.vj = zext i1 %.cmp3.i.i.i.i to i64
  %i.vk = or disjoint i64 %i.vi, %i.vj
  %spec.select.i.i.i = select i1 %.cmp.i.i.i.i, i32 %i.vh, i32 %.urem.i.i.i.i
  store i64 %i.vk, ptr %i.vb, align 8, !alias.scope !2303, !noalias !2010
  store i32 %spec.select.i.i.i, ptr %i.vf, align 8, !alias.scope !2303, !noalias !2010
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 1032
  invoke void @_RNvXsv_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.vl)
          to label %bb.an unwind label %bb.eu, !noalias !2014

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit252.i: ; preds = %bb.hk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit204.i
  store i8 0, ptr %i.mo, align 2, !noalias !2010
  br label %bb.hl

bb.hk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit204.i
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 1032
  invoke void @_RNvXsv_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.vm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit252.i unwind label %bb.eu, !noalias !2014

bb.hl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit252.i, %bb.et
  %i.vn = phi ptr [ %i.mm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit252.i ], [ %i.ej, %bb.et ] ; 8 uses
  %i.vo = phi ptr [ %i.mn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit252.i ], [ %i.ek, %bb.et ] ; 8 uses
  %.sroa.021.2.i = phi i64 [ %.sroa.021.1.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit252.i ], [ -1, %bb.et ] ; 2 uses
  %.sroa.6.2.i = phi i8 [ %.sroa.6.1.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit252.i ], [ 10, %bb.et ]
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 1067 ; 2 uses
  %i.vq = load i8, ptr %i.vp, align 1, !range !741, !noalias !2010, !noundef !8
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hn, %bb.hl
  store i8 0, ptr %i.vp, align 1, !noalias !2010
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 928
  invoke void @_RNvXsv_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.vs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit254.i unwind label %bb.ak, !noalias !2014

bb.hn:                                            ; preds = %bb.hl
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 960
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(72) %i.vt)
          to label %bb.hm unwind label %bb.hp, !noalias !2014

bb.ho:                                            ; preds = %bb.ib, %bb.hp, %bb.al
  %i.vu = phi ptr [ %i.vn, %bb.hp ], [ %i.dq, %bb.ib ], [ %i.dq, %bb.al ]
  %i.vv = phi ptr [ %i.vo, %bb.hp ], [ %i.dr, %bb.ib ], [ %i.dr, %bb.al ]
  %.pn96.i = phi { ptr, i32 } [ %i.vy, %bb.hp ], [ %.pn93.pn.i, %bb.ib ], [ %.pn93.pn.i, %bb.al ]
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 1067
  store i8 0, ptr %i.vw, align 1, !noalias !2010
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 928
  invoke void @_RNvXsv_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.vx)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit256.i unwind label %bb.ch, !noalias !2014

bb.hp:                                            ; preds = %bb.hn
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit254.i: ; preds = %bb.hm
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.vz)
          to label %bb.hs unwind label %bb.hq, !noalias !2014

bb.hq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit254.i
  %i.wa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.vz, align 8, !alias.scope !2306, !noalias !2010 ; 2 uses
  %i.wb = icmp eq i64 %.val2.i.i, 0
  br i1 %i.wb, label %.body.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 888
  %.val3.i.i = load ptr, ptr %i.wc, align 8, !alias.scope !2311, !noalias !2010, !nonnull !8, !noundef !8
  %i.wd = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.wd, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2312
  br label %.body.i

bb.hs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit254.i
  %.val.i.i = load i64, ptr %i.vz, align 8, !alias.scope !2306, !noalias !2010 ; 2 uses
  %i.we = icmp eq i64 %.val.i.i, 0
  br i1 %i.we, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 888
  %.val1.i.i = load ptr, ptr %i.wf, align 8, !alias.scope !2311, !noalias !2010, !nonnull !8, !noundef !8
  %i.wg = shl nuw i64 %.val.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.wg, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2315
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.ht, %bb.hs
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 1068
  store i8 0, ptr %i.wh, align 4, !noalias !2010
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.wi)
          to label %bb.hw unwind label %bb.hu, !noalias !2014

bb.hu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i
  %i.wj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  %i.wl = load i16, ptr %i.wk, align 8, !range !619, !alias.scope !2318, !noalias !2010, !noundef !8
  %i.wm = icmp eq i16 %i.wl, 2
  br i1 %i.wm, label %.body260.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.wk)
          to label %.body260.i unwind label %bb.hy, !noalias !2014

bb.hw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 8, !range !619, !alias.scope !2323, !noalias !2010, !noundef !8
  %i.wp = icmp eq i16 %i.wo, 2
  br i1 %i.wp, label %bb.ie, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.wn)
          to label %bb.ie unwind label %bb.hz, !noalias !2014

bb.hy:                                            ; preds = %bb.hv
  %i.wq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2014
  unreachable

.body260.i:                                       ; preds = %bb.hz, %bb.hv, %bb.hu, %bb.ao
  %i.wr = phi ptr [ %i.er, %bb.ao ], [ %i.vn, %bb.hz ], [ %i.vn, %bb.hv ], [ %i.vn, %bb.hu ]
  %i.ws = phi ptr [ %i.es, %bb.ao ], [ %i.vo, %bb.hz ], [ %i.vo, %bb.hv ], [ %i.vo, %bb.hu ]
  %.pn103.i = phi { ptr, i32 } [ %.pn100.pn.i, %bb.ao ], [ %i.wt, %bb.hz ], [ %i.wj, %bb.hv ], [ %i.wj, %bb.hu ]
  store i8 2, ptr %i.wr, align 8, !noalias !2010
  br label %.body

bb.hz:                                            ; preds = %bb.hx
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %.body260.i

bb.ia:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit.i
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 1032
  invoke void @_RNvXsv_CsdhoN4pTjS9m_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.wu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsdhoN4pTjS9m_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_EECsi17nFaBu4HY_10ech_client.exit263.i unwind label %bb.ch, !noalias !2014

bb.ib:                                            ; preds = %bb.al
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 960
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(72) %i.wv) #30
          to label %bb.ho unwind label %bb.ch, !noalias !2014

bb.ic:                                            ; preds = %.body.i
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 840
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ww) #30
          to label %bb.ao unwind label %bb.ch, !noalias !2014

bb.id:                                            ; preds = %bb.aq, %bb.ap
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.au, %bb.gx
  %i.wy = phi ptr [ %i.tt, %bb.gx ], [ %i.ev, %bb.au ]
  %.sink.i.ph = phi i8 [ 3, %bb.gx ], [ 4, %bb.au ]
  store i8 %.sink.i.ph, ptr %i.wy, align 8, !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i)
  br label %bb.if

bb.ie:                                            ; preds = %bb.hw, %bb.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.1033, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.10.i, i64 71, i1 false), !noalias !2326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.12.i, i64 96, i1 false), !noalias !2326
  store i8 1, ptr %i.vn, align 8, !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i)
  %i.wz = icmp eq i64 %.sroa.021.2.i, -2
  br i1 %i.wz, label %bb.if, label %bb.ig

common.ret:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit25, %bb.if
  %storemerge = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit25 ], [ 3, %bb.if ]
  store i8 %storemerge, ptr %i.ah, align 8
  ret void

bb.if:                                            ; preds = %.thread, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1033)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.ig:                                            ; preds = %bb.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5.sroa.2, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.1033, i64 71, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1033)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtBJ_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.vo)
          to label %bb.ii unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.ii:                                            ; preds = %bb.ig
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  %i.xc = load ptr, ptr %i.xb, align 8, !alias.scope !2333, !nonnull !8, !noundef !8
  %i.xd = atomicrmw sub ptr %i.xc, i64 1 release, align 8, !noalias !2333
  %i.xe = icmp eq i64 %i.xd, 1
  br i1 %i.xe, label %bb.ij, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit25

bb.ij:                                            ; preds = %bb.ii
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xb) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client.exit25 unwind label %bb.il
end_hunk_2
