Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonatv2_server.autonatv2_server.9dcfade7ede3988c-cgu.02?download=true
inline.NumInlined: 1332
inline.NumDeleted: 651
begin_hunk_0_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1S_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB7_5dummy17ConnectionHandlerEINtNtB2v_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE3newCsdy1Aheh0r2i_16autonatv2_server:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4072
  store i64 %6, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4080
  store i32 %7, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4272
  store ptr %i.br, ptr %i.cj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.ak:                                            ; preds = %bb.ap, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsdy1Aheh0r2i_16autonatv2_server.exit, %bb.an, %bb.ar, %.thread, %.thread35, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_ReB36_ENtNtB1A_15stream_protocol14StreamProtocolEIB2s_B3d_B3d_EEEbEECsdy1Aheh0r2i_16autonatv2_server.exit, %bb.ai, %bb.ad, %bb.aa, %bb.x
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.al:                                            ; preds = %bb.ai
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsdy1Aheh0r2i_16autonatv2_server.exit unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_ReB36_ENtNtB1A_15stream_protocol14StreamProtocolEIB2s_B3d_B3d_EEEbEECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsdy1Aheh0r2i_16autonatv2_server.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2W_IB2W_uuEuEuEIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_IB3N_IB2W_IB3N_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEEIB3N_NtNtB4F_6denied13DeniedUpgradeEEEB6h_EEIB3N_IB2W_B4A_B4A_EEEEEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #40
          to label %bb.ad unwind label %bb.ak

bb.am:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_uuEuEuEINtNtNtBI_6future6either6EitherIB3D_IB3D_NtNtB1X_6stream6StreamzEzEIB3D_B4h_B4h_EEIB2R_IB2R_IB2R_zzEzEB56_EEEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #40
          to label %bb.aa unwind label %bb.ak

bb.an:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxECsdy1Aheh0r2i_16autonatv2_server(ptr nonnull %1, ptr nonnull %2) #40
          to label %bb.m unwind label %bb.ak

bb.ao:                                            ; preds = %.thread35, %bb.m
  %.sroa.01.044 = phi i1 [ %.sroa.01.045, %.thread35 ], [ %.sroa.01.1, %bb.m ]
  %.sroa.02.142 = phi i8 [ %.sroa.02.143, %.thread35 ], [ 0, %bb.m ]
  %.pn.pn.pn.pn.pn40 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn41, %.thread35 ], [ %.pn.pn.pn.pn, %bb.m ] ; 2 uses
  br i1 %.sroa.01.044, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_ReB36_ENtNtB1A_15stream_protocol14StreamProtocolEIB2s_B3d_B3d_EEEbEECsdy1Aheh0r2i_16autonatv2_server.exit25

.thread35:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsdy1Aheh0r2i_16autonatv2_server.exit8.i.i, %bb.r, %bb.n, %bb.m
  %.sroa.01.045 = phi i1 [ %.sroa.01.1, %bb.m ], [ true, %bb.n ], [ true, %bb.r ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsdy1Aheh0r2i_16autonatv2_server.exit8.i.i ]
  %.sroa.02.143 = phi i8 [ 0, %bb.m ], [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsdy1Aheh0r2i_16autonatv2_server.exit8.i.i ]
  %.pn.pn.pn.pn.pn41 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.m ], [ %i.ah, %bb.n ], [ %i.au, %bb.r ], [ %i.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsdy1Aheh0r2i_16autonatv2_server.exit8.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #40
          to label %bb.ao unwind label %bb.ak

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1M_IB1M_ReB2q_ENtNtBU_15stream_protocol14StreamProtocolEIB1M_B2x_B2x_EEEbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_ReB36_ENtNtB1A_15stream_protocol14StreamProtocolEIB2s_B3d_B3d_EEEbEECsdy1Aheh0r2i_16autonatv2_server.exit25 unwind label %bb.ak

.thread:                                          ; preds = %.body.i, %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_ReB36_ENtNtB1A_15stream_protocol14StreamProtocolEIB2s_B3d_B3d_EEEbEECsdy1Aheh0r2i_16autonatv2_server.exit25
  %.pn.pn.pn.pn.pn.pn32 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn40, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_ReB36_ENtNtB1A_15stream_protocol14StreamProtocolEIB2s_B3d_B3d_EEEbEECsdy1Aheh0r2i_16autonatv2_server.exit25 ], [ %i.ab, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1P_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtBI_5dummy17ConnectionHandlerEINtNtB2s_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(4032) %3) #40
          to label %bb.ar unwind label %bb.ak

bb.aq:                                            ; preds = %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_ReB36_ENtNtB1A_15stream_protocol14StreamProtocolEIB2s_B3d_B3d_EEEbEECsdy1Aheh0r2i_16autonatv2_server.exit25
  %.pn.pn.pn.pn.pn.pn33 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn32, %bb.ar ], [ %.pn.pn.pn.pn.pn40, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_ReB36_ENtNtB1A_15stream_protocol14StreamProtocolEIB2s_B3d_B3d_EEEbEECsdy1Aheh0r2i_16autonatv2_server.exit25 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn33

bb.ar:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxECsdy1Aheh0r2i_16autonatv2_server(ptr nonnull %1, ptr nonnull %2) #40
          to label %bb.aq unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1S_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB7_5dummy17ConnectionHandlerEINtNtB2v_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE4pollCsdy1Aheh0r2i_16autonatv2_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([608 x i8]) align 8 captures(none) dereferenceable(608) %0, ptr noalias nofree noundef align 8 dereferenceable(4296) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %i.o = alloca [112 x i8], align 8               ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [920 x i8], align 8               ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [112 x i8], align 8               ; 5 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [352 x i8], align 8               ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [56 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [1 x i8], align 1                ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [1 x i8], align 1                ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 2 uses
  %i.az = alloca [160 x i8], align 8              ; 5 uses
  %i.ba = alloca [80 x i8], align 8               ; 10 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
  %i.bb = alloca [96 x i8], align 8               ; 6 uses
  %i.bc = alloca [112 x i8], align 8              ; 5 uses
  %i.bd = alloca [64 x i8], align 8               ; 10 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [96 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [39 x i8], align 1            ; 3 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [16 x i8], align 8               ; 7 uses
  %i.bl = alloca [160 x i8], align 8              ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 9 uses
  %i.bn = alloca [40 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 16              ; 4 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [16 x i8], align 16              ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [32 x i8], align 8               ; 8 uses
  %i.bv = alloca [16 x i8], align 16              ; 4 uses
  %i.bw = alloca [16 x i8], align 8               ; 5 uses
  %i.bx = alloca [32 x i8], align 8               ; 7 uses
  %i.by = alloca [24 x i8], align 8               ; 7 uses
  %i.bz = alloca [16 x i8], align 16              ; 4 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [32 x i8], align 8               ; 8 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [32 x i8], align 8               ; 7 uses
  %i.cg = alloca [24 x i8], align 8               ; 7 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [16 x i8], align 8               ; 5 uses
  %i.ck = alloca [32 x i8], align 8               ; 8 uses
  %i.cl = alloca [8 x i8], align 8                ; 7 uses
  %i.cm = alloca [160 x i8], align 8              ; 6 uses
  %i.cn = alloca [152 x i8], align 8              ; 8 uses
  %i.co = alloca [160 x i8], align 8              ; 7 uses
  %i.cp = alloca [160 x i8], align 8              ; 6 uses
  %i.cq = alloca [152 x i8], align 8              ; 9 uses
  %i.cr = alloca [160 x i8], align 8              ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [48 x i8], align 8               ; 4 uses
  %i.cu = alloca [40 x i8], align 8               ; 4 uses
  %i.cv = alloca [160 x i8], align 8              ; 5 uses
  %i.cw = alloca [24 x i8], align 8               ; 5 uses
  %i.cx = alloca [48 x i8], align 8               ; 4 uses
  %i.cy = alloca [64 x i8], align 8               ; 7 uses
  %i.cz = alloca [608 x i8], align 8              ; 12 uses
  %i.da = alloca [160 x i8], align 8              ; 6 uses
  %i.db = alloca [32 x i8], align 8               ; 7 uses
  %i.dc = alloca [40 x i8], align 8               ; 7 uses
  %i.dd = alloca [32 x i8], align 8               ; 7 uses
  %i.de = alloca [40 x i8], align 8               ; 5 uses
  %i.df = alloca [40 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %i.dg = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dh = icmp ult i64 %i.dg, 2
  br i1 %i.dh, label %bb.d, label %bb.c

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.kb, %bb.jz, %.body252, %.noexc10.i, %.body.i239, %.critedge45.i, %.body.i, %bb.fg, %bb.ad, %.body234.thread, %bb.if, %bb.cx, %bb.kj, %.body228, %.body223
  %.sroa.0107.0 = phi i8 [ %.sroa.0105.2, %bb.cx ], [ %.sroa.0105.2, %bb.kj ], [ %.sroa.0107.1.ph, %.loopexit.split-lp ], [ %.sroa.0105.2, %.noexc10.i ], [ %.sroa.0105.2, %bb.if ], [ %.sroa.0105.2, %.body.i239 ], [ %.sroa.0105.2, %.body234.thread ], [ %.sroa.0105.2, %.body252 ], [ %.sroa.0105.2, %bb.ad ], [ %.sroa.0105.2, %.body228 ], [ %.sroa.0105.2, %.body223 ], [ %.sroa.0105.2, %bb.kb ], [ %.sroa.0105.2, %bb.jz ], [ %.sroa.0105.2, %.critedge45.i ], [ %.sroa.0105.2, %bb.fg ], [ %.sroa.0105.2, %.body.i ], [ %.sroa.0105.2, %.loopexit ]
  %.sroa.0105.0 = phi i8 [ %.sroa.0105.2, %bb.cx ], [ %.sroa.0105.2, %bb.kj ], [ %.sroa.0105.1.ph, %.loopexit.split-lp ], [ %.sroa.0105.2, %.noexc10.i ], [ %.sroa.0105.2, %bb.if ], [ %.sroa.0105.2, %.body.i239 ], [ %.sroa.0105.2, %.body234.thread ], [ %.sroa.0105.2, %.body252 ], [ %.sroa.0105.2, %bb.ad ], [ %.sroa.0105.2, %.body228 ], [ %.sroa.0105.2, %.body223 ], [ %.sroa.0105.2, %bb.kb ], [ %.sroa.0105.2, %bb.jz ], [ %.sroa.0105.2, %.critedge45.i ], [ %.sroa.0105.2, %bb.fg ], [ %.sroa.0105.2, %.body.i ], [ %.sroa.0105.2, %.loopexit ]
  %.pn193 = phi { ptr, i32 } [ %i.mt, %bb.cx ], [ %i.zi, %bb.kj ], [ %lpad.loopexit.split-lp334, %.loopexit.split-lp ], [ %.pn.pn.ph.i, %.noexc10.i ], [ %i.uu, %bb.if ], [ %i.uo, %.body.i239 ], [ %eh.lpad-body235296, %.body234.thread ], [ %eh.lpad-body253, %.body252 ], [ %i.iu, %bb.ad ], [ %eh.lpad-body229, %.body228 ], [ %eh.lpad-body224, %.body223 ], [ %i.yu, %bb.kb ], [ %i.yn, %bb.jz ], [ %i.tl, %.critedge45.i ], [ %i.qm, %bb.fg ], [ %i.ti, %.body.i ], [ %lpad.loopexit333, %.loopexit ] ; 2 uses
  %i.di = trunc nuw i8 %.sroa.0105.0 to i1
  br i1 %i.di, label %bb.kk, label %.thread

.loopexit:                                        ; preds = %._crit_edge, %bb.dk, %bb.co, %.noexc213, %bb.cn, %bb.cl, %bb.bv, %.noexc208, %bb.bu, %bb.bs, %bb.cu, %bb.cs, %bb.cr, %bb.ci, %bb.ch, %bb.cb, %bb.bz, %bb.by, %bb.bp, %bb.bo, %bb.bj, %bb.hc, %bb.id, %.backedge, %bb.w, %bb.x, %bb.aa, %bb.ak, %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.as, %bb.aw, %bb.bb, %bb.bc, %bb.bd, %bb.eg, %bb.ei, %bb.ek, %bb.el, %bb.ey, %bb.fj, %bb.fl, %bb.fm, %bb.hf, %bb.hg
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.s, %bb.f, %bb.g, %bb.j, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsdy1Aheh0r2i_16autonatv2_server.exit.i.i
  %.sroa.0107.1.ph = phi i8 [ 1, %bb.q ], [ 1, %bb.s ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ], [ %.sroa.0105.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsdy1Aheh0r2i_16autonatv2_server.exit.i.i ]
  %.sroa.0105.1.ph = phi i8 [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ], [ %.sroa.0105.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsdy1Aheh0r2i_16autonatv2_server.exit.i.i ]
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %.body

default.unreachable548:                           ; preds = %bb.di, %bb.bi
  unreachable

default.unreachable:                              ; preds = %thread-pre-split
  unreachable

bb.b:                                             ; preds = %bb.ab
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.dj = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.dj, 0
  br i1 %.not, label %bb.d, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %.noexc197, %bb.r, %.noexc198, %bb.c
  %.sroa.0105.2 = phi i8 [ 0, %bb.c ], [ 1, %.noexc198 ], [ 1, %bb.r ], [ 1, %.noexc197 ] ; 35 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 4152 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4088 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 4128 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4104 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4176 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4224 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4048 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.041.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.051.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.051.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.061.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.061.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 4112
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 4136
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 4272 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 4032 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 4040 ; 13 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 4072
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 4080
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.6.16..sroa_idx271 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 4288
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.012.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.012.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.gb = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.gc = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.gd = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ge = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.gf = getelementptr inbounds nuw i8, ptr %i.w, i64 113
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 4280
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.gp = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.gq = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.gr = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.gs = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.gt = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.gu = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 4056 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 4064 ; 4 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %.sroa.7.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 4200
  %i.hf = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.sroa.0274.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %.sroa.0274.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.sroa.0274.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %.sroa.5276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.hi = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 152
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 152
  %i.hl = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  br label %.backedge

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %i.hm = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.hn = icmp ult i64 %i.hm, 2
  br i1 %i.hn, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ho = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ho, label %bb.f [
    i8 0, label %bb.m
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !36

bb.f:                                             ; preds = %bb.e
  %i.hp = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE)
          to label %bb.h unwind label %.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.h
  %.sroa.011.0 = phi i8 [ %i.hp, %bb.h ], [ %i.ho, %bb.e ], [ %i.ho, %bb.e ]
  %i.hq = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, align 8, !nonnull !8, !align !15, !noundef !8
  %i.hr = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hq, i8 noundef %.sroa.011.0)
          to label %bb.i unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %.not179 = icmp eq i8 %i.hp, 0
  br i1 %.not179, label %bb.m, label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.hr, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.hs = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, align 8, !nonnull !8, !align !15, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  store i64 1, ptr %i.dd, align 8
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1S_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB7_5dummy17ConnectionHandlerEINtNtB2v_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE4pollCsdy1Aheh0r2i_16autonatv2_server:bb.a
          to label %.noexc198 unwind label %.loopexit.split-lp

.noexc198:                                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3459
  br label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

bb.t:                                             ; preds = %.body252, %bb.fg, %bb.kk, %.body234.thread, %bb.if, %bb.cx, %bb.kl, %bb.kj, %bb.kb, %bb.l
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.u:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.p

.backedge:                                        ; preds = %.backedge.backedge, %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit
  %i.in = invoke noundef i8 @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_uuEuEuEIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_IB3k_IB2t_IB3k_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEEIB3k_NtNtB4c_6denied13DeniedUpgradeEEEB5O_EEIB3k_IB2t_B47_B47_EEEEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.v unwind label %.loopexit  ; 2 uses

bb.v:                                             ; preds = %.backedge
  switch i8 %i.in, label %bb.x [
    i8 3, label %bb.w
    i8 -3, label %bb.w
    i8 -2, label %.backedge.backedge
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1m_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB1Z_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerENtB7_17ConnectionHandler4pollCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(none) dereferenceable(608) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(4032) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %.loopexit

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  store i64 0, ptr %i.hl, align 8
  store i8 %i.in, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 3, ptr %i.da, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1m_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB1Z_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(4032) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.da)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.y, %bb.v, %bb.am, %bb.bf, %bb.ce, %bb.hd, %bb.ie, %bb.kd
  br label %.backedge

bb.z:                                             ; preds = %bb.w
  %i.io = load i64, ptr %i.cz, align 8, !range !3460, !noundef !8 ; 3 uses
  %i.ip = icmp eq i64 %i.io, -2
  br i1 %i.ip, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  invoke void @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2o_IB2o_uuEuEuEINtNtNtB9_6future6either6EitherIB3a_IB3a_NtNtB1u_6stream6StreamzEzEIB3a_B3O_B3O_EEIB2o_IB2o_IB2o_zzEzEB4D_EEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.cq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ba unwind label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.iq = add nsw i64 %i.io, -4
  %i.ir = icmp sgt i64 %i.io, 3
  %i.is = select i1 %i.ir, i64 %i.iq, i64 2
  switch i64 %i.is, label %bb.b [
    i64 0, label %bb.ac
    i64 1, label %bb.ai
    i64 2, label %bb.aj
  ]

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 32, i1 false)
  %.sroa.419.0.copyload = load i64, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0.copyload = load i32, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.622.0.copyload = load i8, ptr %.sroa.622.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.experimental.noalias.scope.decl(metadata !3461)
  %i.it = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.ae unwind label %bb.ad, !noalias !3462 ; 2 uses

bb.ad:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBC_IB17_IBC_IB17_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1b_15stream_protocol14StreamProtocolEEIB17_NtNtB2l_6denied13DeniedUpgradeEEEB3X_EEIB17_IBC_B2g_B2g_EEEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ay) #40
          to label %.body unwind label %bb.ah, !noalias !3461

bb.ae:                                            ; preds = %bb.ac
  %i.iv = extractvalue { i64, i32 } %i.it, 0
  %i.iw = extractvalue { i64, i32 } %i.it, 1
  %i.ix = invoke { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %i.iv, i32 noundef %i.iw, i64 noundef %.sroa.419.0.copyload, i32 noundef range(i32 0, 1000000000) %.sroa.520.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %bb.af unwind label %bb.ad, !noalias !3462 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.iy = invoke noundef nonnull ptr @_RNvXs4_NtNtCs5GOyS9hQAaF_13futures_timer6native5timerNtB5_11TimerHandleNtNtCskKLDkoKarTP_4core7default7Default7default()
          to label %bb.ag unwind label %bb.ad, !noalias !3462

bb.ag:                                            ; preds = %bb.af
  %i.iz = extractvalue { i64, i32 } %i.ix, 1
  %i.ja = extractvalue { i64, i32 } %i.ix, 0
  %i.jb = invoke noundef ptr @_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay10new_handle(i64 noundef %i.ja, i32 noundef %i.iz, ptr noundef nonnull %i.iy)
          to label %bb.ak unwind label %bb.ad, !noalias !3462

bb.ah:                                            ; preds = %bb.ad
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !3461
  unreachable

bb.ai:                                            ; preds = %bb.ab
  %i.jd = load i64, ptr %i.dr, align 8, !range !17, !noundef !8
  %i.je = trunc nuw i64 %i.jd to i1
  br i1 %i.je, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(608) %i.cz, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.az

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 32, i1 false)
  store i8 %.sroa.622.0.copyload, ptr %i.dv, align 8, !alias.scope !3461
  store ptr %i.jb, ptr %i.dw, align 8, !alias.scope !3461
  store ptr null, ptr %i.dx, align 8, !alias.scope !3461
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_uuEuEuEIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_IB3k_IB2t_IB3k_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEEIB3k_NtNtB4c_6denied13DeniedUpgradeEEEB5O_EEIB3k_IB2t_B47_B47_EEEEE4pushCsdy1Aheh0r2i_16autonatv2_server(ptr noundef nonnull align 8 %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.cy)
          to label %bb.al unwind label %.loopexit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.am

bb.am:                                            ; preds = %bb.ay, %bb.au, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %.backedge.backedge

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  invoke void @_RNvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB5_15ProtocolsChange6remove(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %bb.av unwind label %.loopexit

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  invoke void @_RNvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB5_15ProtocolsChange3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %bb.ap unwind label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.jf = load i64, ptr %i.cw, align 8, !range !14, !noundef !8
  %.not183 = icmp eq i64 %i.jf, 2
  br i1 %.not183, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  store i8 6, ptr %i.cv, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1m_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB1Z_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(4032) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.cv)
          to label %bb.ar unwind label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cu, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %bb.as unwind label %.loopexit

bb.as:                                            ; preds = %bb.ar
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBO_EECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cu)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.am

bb.av:                                            ; preds = %bb.an
  %i.jg = load i64, ptr %i.cs, align 8, !range !14, !noundef !8
  %.not184 = icmp eq i64 %i.jg, 2
  br i1 %.not184, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  store i8 6, ptr %i.cr, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1m_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB1Z_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(4032) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.cr)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.am

bb.az:                                            ; preds = %bb.fe, %bb.fh, %bb.ex, %bb.fa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsdy1Aheh0r2i_16autonatv2_server.exit, %bb.hk, %bb.fq, %bb.aj
  %3 = trunc nuw i8 %.sroa.0105.2 to i1
  br i1 %3, label %bb.ke, label %bb.ki

bb.ba:                                            ; preds = %bb.aa
  %i.jh = load i64, ptr %i.dy, align 8, !range !3463, !noundef !8
  switch i64 %i.jh, label %bb.bd [
    i64 -3, label %bb.bb
    i64 -2, label %bb.bb
    i64 -1, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  invoke void @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB2p_uuEuEuEINtNtNtB9_6future6either6EitherIB36_IB36_zzENtNtB1u_6stream6StreamEIB36_B3N_B3N_EEIB2p_IB2p_IB2p_zzEzEB4z_EEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.cn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bh unwind label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.ji = load i8, ptr %i.cq, align 8, !range !26, !noundef !8
  %i.jj = load i64, ptr %i.dz, align 8, !range !22, !noundef !8
  %i.jk = load ptr, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store i64 %i.jj, ptr %i.eb, align 8
  store ptr %i.jk, ptr %.sroa.427.0..sroa_idx, align 8
  store i8 %i.ji, ptr %.sroa.528.0..sroa_idx, align 8
  store i8 3, ptr %i.co, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1m_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB1Z_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(4032) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.co)
          to label %bb.bg unwind label %.loopexit

bb.bd:                                            ; preds = %bb.ba
  %i.jl = load i8, ptr %i.cq, align 8, !range !26, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.hk, ptr noundef nonnull align 8 dereferenceable(144) %i.dy, i64 144, i1 false)
  store i8 %i.jl, ptr %.sroa.424.0..sroa_idx, align 8
  store i8 1, ptr %i.cp, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1m_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB1Z_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(4032) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.cp)
          to label %bb.be unwind label %.loopexit

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %.backedge.backedge

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bb
  %i.jm = load i64, ptr %i.ec, align 8, !range !3463, !noundef !8
  switch i64 %i.jm, label %bb.bj [
    i64 -3, label %bb.du
    i64 -2, label %bb.du
    i64 -1, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.jn = load i64, ptr %i.ed, align 8, !range !22, !noundef !8
  switch i64 %i.jn, label %default.unreachable548 [
    i64 0, label %bb.bm
    i64 1, label %bb.bl
    i64 2, label %bb.cf
    i64 3, label %bb.cy
  ]

bb.bj:                                            ; preds = %bb.bh
  %i.jo = load i8, ptr %i.cn, align 8, !range !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.hj, ptr noundef nonnull align 8 dereferenceable(144) %i.ec, i64 144, i1 false)
  store i8 %i.jo, ptr %.sroa.431.0..sroa_idx, align 8
  store i8 0, ptr %i.cm, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1m_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB1Z_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(4032) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.cm)
          to label %bb.bk unwind label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.ce

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

bb.bm:                                            ; preds = %bb.bi
  %i.jp = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.jq = icmp ult i64 %i.jp, 2
  br i1 %i.jq, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.jr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.jr, label %bb.bo [
    i8 0, label %bb.bw
    i8 1, label %bb.bp
    i8 2, label %bb.bp
  ], !prof !36

bb.bo:                                            ; preds = %bb.bn
  %i.js = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE)
          to label %bb.bq unwind label %.loopexit ; 2 uses

bb.bp:                                            ; preds = %bb.bn, %bb.bn, %bb.bq
  %.sroa.059.0 = phi i8 [ %i.js, %bb.bq ], [ %i.jr, %bb.bn ], [ %i.jr, %bb.bn ]
  %i.jt = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !8, !align !15, !noundef !8
  %i.ju = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jt, i8 noundef %.sroa.059.0)
          to label %bb.br unwind label %.loopexit

bb.bq:                                            ; preds = %bb.bo
  %i.jv = icmp eq i8 %i.js, 0
  br i1 %i.jv, label %bb.bw, label %bb.bp

bb.br:                                            ; preds = %bb.bp
  br i1 %i.ju, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.jw = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !8, !align !15, !noundef !8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store <2 x ptr> <ptr @41, ptr inttoptr (i64 65 to ptr)>, ptr %i.bs, align 16
  store ptr %i.bs, ptr %i.bt, align 8
  store ptr @7, ptr %i.ew, align 8
  store i64 1, ptr %i.bu, align 8
  store ptr %i.bt, ptr %.sroa.061.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.061.sroa.5.0..sroa_idx, align 8
  store ptr %i.jx, ptr %.sroa.462.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc207 unwind label %.loopexit

.noexc207:                                        ; preds = %bb.bs
  %i.jy = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3464
  %.not.i206 = icmp eq i8 %i.jy, 0
  br i1 %.not.i206, label %bb.bt, label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1U_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB2x_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE4polls0_0Csdy1Aheh0r2i_16autonatv2_server.exit

bb.bt:                                            ; preds = %.noexc207
  %i.jz = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3464 ; 2 uses
  %i.ka = icmp ult i64 %i.jz, 6
  call void @llvm.assume(i1 %i.ka)
  %i.kb = icmp samesign ugt i64 %i.jz, 3
  br i1 %i.kb, label %bb.bu, label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1U_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB2x_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE4polls0_0Csdy1Aheh0r2i_16autonatv2_server.exit

bb.bu:                                            ; preds = %bb.bt
  %i.kc = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !noalias !3464, !nonnull !8, !align !15, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3464
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !nonnull !8, !noundef !8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  %i.kg = load i64, ptr %i.kf, align 8, !noundef !8
  store i64 4, ptr %i.as, align 8, !noalias !3464
  store ptr %i.ke, ptr %i.ex, align 8, !noalias !3464
  store i64 %i.kg, ptr %i.ey, align 8, !noalias !3464
  %i.kh = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc208 unwind label %.loopexit ; 2 uses

.noexc208:                                        ; preds = %bb.bu
  %i.ki = extractvalue { ptr, ptr } %i.kh, 0      ; 2 uses
  %i.kj = extractvalue { ptr, ptr } %i.kh, 1      ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !invariant.load !8, !nonnull !8
  %i.km = invoke noundef zeroext i1 %i.kl(ptr noundef %i.ki, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as) #45
          to label %.noexc209 unwind label %.loopexit, !inline_history !3300

.noexc209:                                        ; preds = %.noexc208
  br i1 %i.km, label %bb.bv, label %.noexc210

bb.bv:                                            ; preds = %.noexc209
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kc, ptr noundef nonnull %i.ki, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc210 unwind label %.loopexit

.noexc210:                                        ; preds = %bb.bv, %.noexc209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3464
  br label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1U_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB2x_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE4polls0_0Csdy1Aheh0r2i_16autonatv2_server.exit

_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1U_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB2x_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE4polls0_0Csdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %.noexc210, %bb.bt, %.noexc207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.ce

bb.bw:                                            ; preds = %bb.bq, %bb.bn, %bb.bm, %bb.br
  %i.kn = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not189 = icmp eq i8 %i.kn, 0
  br i1 %.not189, label %bb.bx, label %bb.ce

bb.bx:                                            ; preds = %bb.bw
  %i.ko = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.kp = icmp ult i64 %i.ko, 6
  call void @llvm.assume(i1 %i.kp)
  %i.kq = icmp samesign ugt i64 %i.ko, 3
  br i1 %i.kq, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.kr = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !8, !align !15, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.kt = load ptr, ptr %i.ks, align 8, !nonnull !8, !noundef !8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.kv = load i64, ptr %i.ku, align 8, !noundef !8
  store i64 4, ptr %i.br, align 8
  store ptr %i.kt, ptr %i.ez, align 8
end_hunk_1
begin_hunk_2_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1S_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB7_5dummy17ConnectionHandlerEINtNtB2v_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE4pollCsdy1Aheh0r2i_16autonatv2_server:bb.a
  %i.xv = load i64, ptr %.sroa.6.0..sroa_idx34.i, align 8, !range !17, !alias.scope !3555, !noalias !3529, !noundef !8
  %i.xw = icmp eq i64 %i.xv, 0
  br i1 %i.xw, label %.body28.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.experimental.noalias.scope.decl(metadata !3556), !noalias !3529
  call void @llvm.experimental.noalias.scope.decl(metadata !3557), !noalias !3529
  %i.xx = load ptr, ptr %.sroa.7.0..sroa_idx36.i, align 8, !alias.scope !3558, !noalias !3529, !nonnull !8, !noundef !8
  %i.xy = atomicrmw add ptr %i.xx, i64 -1 release, align 8, !noalias !3559
  %i.xz = icmp eq i64 %i.xy, 1
  br i1 %i.xz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_ReB1a_ENtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsdy1Aheh0r2i_16autonatv2_server.exit.sink.split.i.i.i.i, label %.body28.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_ReB1a_ENtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsdy1Aheh0r2i_16autonatv2_server.exit.sink.split.i.i.i.i: ; preds = %bb.jv, %bb.jt, %bb.jq
  fence acquire, !noalias !3529
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx36.i) #43
          to label %.body28.i unwind label %bb.jw

bb.jw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_ReB1a_ENtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsdy1Aheh0r2i_16autonatv2_server.exit.sink.split.i.i.i.i
  %i.ya = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !3529
  unreachable

_RINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_5EntryINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1Z_IB1Z_ReB2D_ENtNtB17_15stream_protocol14StreamProtocolEIB1Z_B2K_B2K_EEEbE22or_try_insert_with_keyNCINvB2_18or_insert_with_keyNCINvMs0_NtB17_7handlerNtB4H_15ProtocolsChange14from_full_setsB1Y_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB5H_3map3MapIB1Z_IB6v_IB1Z_IB6v_INtNtNtB5J_7sources5empty5EmptyB2D_EFB2D_EB2y_EB70_EFB2y_EB2t_EIB6v_INtNtB7a_4once4OnceB2K_EFB2K_EB2t_EEFB2t_EB1Y_EIB6v_IB5D_IB6v_B8b_FB2K_EB3q_EB96_EFB3q_EB1Y_EEEs_0E0zECsdy1Aheh0r2i_16autonatv2_server.exit.i: ; preds = %.noexc27.i, %bb.jm
  %i.yb = add i64 %.sroa.01.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3519
  br label %bb.it

.thread57.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsdy1Aheh0r2i_16autonatv2_server.exit8.i.i, %.loopexit.split-lp72.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ik
  %eh.lpad-body60.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp693, %.loopexit.split-lp72.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.vh, %bb.ik ], [ %i.vh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsdy1Aheh0r2i_16autonatv2_server.exit8.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtCscu2bAJ62uie_6either6EitherIB1e_IB1u_IB1e_INtNtNtBI_7sources5empty5EmptyReEFB2H_EIB1u_B2H_B2H_EEB28_EFB2Q_EIB1u_B2Q_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEEIB1e_INtNtB2i_4once4OnceB3p_EFB3p_EB3g_EEFB3g_EIB1u_B3g_IB1u_B3p_B3p_EEEIB1e_IBC_IB1e_B4z_FB3p_EB5o_EB5N_EFB5o_EB5f_EEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.bc) #40
          to label %.body252 unwind label %bb.je, !noalias !3501

_RINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB6_15ProtocolsChange14from_full_setsINtCscu2bAJ62uie_6either6EitherIB1l_IB1l_ReB1Z_ENtNtB8_15stream_protocol14StreamProtocolEIB1l_B26_B26_EEINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB35_3map3MapIB1l_IB3T_IB1l_IB3T_INtNtNtB37_7sources5empty5EmptyB1Z_EFB1Z_EB1U_EB4o_EFB1U_EB1P_EIB3T_INtNtB4y_4once4OnceB26_EFB26_EB1P_EEFB1P_EB1k_EIB3T_IB31_IB3T_B5z_FB26_EB2L_EB6u_EFB2L_EB1k_EEECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.jc, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtCscu2bAJ62uie_6either6EitherIB1E_IB2w_IB1E_NtNtBG_6denied13DeniedUpgradeEB3a_EEIB1E_INtNtBG_5ready12ReadyUpgradeNtNtB1I_15stream_protocol14StreamProtocolEEEEIB1E_IBC_B3U_B3U_EEEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperINtCscu2bAJ62uie_6either6EitherIB2C_IB35_IB2C_NtNtB1E_6denied13DeniedUpgradeEB3J_EEIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEEEIB2C_IB1A_B4u_B4u_EEETIB35_IB35_uuEuEuEEECsdy1Aheh0r2i_16autonatv2_server.exit255 unwind label %bb.kj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperINtCscu2bAJ62uie_6either6EitherIB2C_IB35_IB2C_NtNtB1E_6denied13DeniedUpgradeEB3J_EEIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEEEIB2C_IB1A_B4u_B4u_EEETIB35_IB35_uuEuEuEEECsdy1Aheh0r2i_16autonatv2_server.exit255: ; preds = %_RINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB6_15ProtocolsChange14from_full_setsINtCscu2bAJ62uie_6either6EitherIB1l_IB1l_ReB1Z_ENtNtB8_15stream_protocol14StreamProtocolEIB1l_B26_B26_EEINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB35_3map3MapIB1l_IB3T_IB1l_IB3T_INtNtNtB37_7sources5empty5EmptyB1Z_EFB1Z_EB1U_EB4o_EFB1U_EB1P_EIB3T_INtNtB4y_4once4OnceB26_EFB26_EB1P_EEFB1P_EB1k_EIB3T_IB31_IB3T_B5z_FB26_EB2L_EB6u_EFB2L_EB1k_EEECsdy1Aheh0r2i_16autonatv2_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.yc = load i64, ptr %i.hg, align 8, !alias.scope !3560, !noundef !8 ; 5 uses
  %i.yd = icmp ult i64 %i.yc, 3
  %i.ye = load i64, ptr %i.bd, align 8, !range !17, !alias.scope !3560, !noundef !8 ; 3 uses
  br i1 %i.yd, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit.thread, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperINtCscu2bAJ62uie_6either6EitherIB2C_IB35_IB2C_NtNtB1E_6denied13DeniedUpgradeEB3J_EEIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEEEIB2C_IB1A_B4u_B4u_EEETIB35_IB35_uuEuEuEEECsdy1Aheh0r2i_16autonatv2_server.exit255
  %i.yf = icmp ne i64 %i.ye, 0
  call void @llvm.assume(i1 %i.yf)
  %i.yg = load i64, ptr %i.hh, align 8, !alias.scope !3560, !noundef !8 ; 2 uses
  %i.yh = icmp eq i64 %i.yg, 0
  br i1 %i.yh, label %bb.jy, label %bb.jx

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperINtCscu2bAJ62uie_6either6EitherIB2C_IB35_IB2C_NtNtB1E_6denied13DeniedUpgradeEB3J_EEIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEEEIB2C_IB1A_B4u_B4u_EEETIB35_IB35_uuEuEuEEECsdy1Aheh0r2i_16autonatv2_server.exit255
  %i.yi = icmp eq i64 %i.ye, 0
  call void @llvm.assume(i1 %i.yi)
  %i.yj = icmp eq i64 %i.yc, 0
  br i1 %i.yj, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsdy1Aheh0r2i_16autonatv2_server.exit.i.i, label %.else

bb.jx:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  br label %.lr.ph

.else:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.5279.0.copyload323 = load i64, ptr %i.hh, align 8
  br label %.lr.ph

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsdy1Aheh0r2i_16autonatv2_server.exit.i.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit.thread
  store i64 -4, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsdy1Aheh0r2i_16autonatv2_server.exit

bb.jy:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit
  store i64 -4, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3561)
  call void @llvm.experimental.noalias.scope.decl(metadata !3562)
  %i.yk = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3563, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3563
  store i64 %i.yc, ptr %i.c, align 8, !noalias !3563
  %i.yl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.yk, ptr %i.yl, align 8, !noalias !3563
  %i.ym = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ym, align 8, !noalias !3563
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsdy1Aheh0r2i_16autonatv2_server.exit.i.i unwind label %bb.jz, !noalias !3563

bb.jz:                                            ; preds = %bb.jy
  %i.yn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ka, !noalias !3563

bb.ka:                                            ; preds = %bb.jz
  %i.yo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !3563
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsdy1Aheh0r2i_16autonatv2_server.exit.i.i: ; preds = %bb.jy
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc261 unwind label %.loopexit.split-lp

.noexc261:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsdy1Aheh0r2i_16autonatv2_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3563
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsdy1Aheh0r2i_16autonatv2_server.exit

.lr.ph:                                           ; preds = %.else, %bb.jx
  %.sink12.i7.i329 = phi i64 [ %i.yc, %.else ], [ %i.yg, %bb.jx ] ; 2 uses
  %.sroa.5279.0 = phi i64 [ %.sroa.5279.0.copyload323, %.else ], [ 0, %bb.jx ]
  %.sroa.7281.0 = phi i64 [ 0, %.else ], [ %i.yc, %bb.jx ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0274.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 %i.ye, ptr %i.ba, align 8
  store i64 %.sroa.5279.0, ptr %.sroa.0274.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.7281.0, ptr %.sroa.0274.sroa.6.0..sroa_idx, align 8
  store i64 %.sink12.i7.i329, ptr %.sroa.5276.0..sroa_idx, align 8
  %i.yp = icmp ugt i64 %.sroa.7281.0, 2
  %i.yq = load ptr, ptr %.sroa.0274.sroa.5.0..sroa_idx, align 8, !nonnull !8
  %..sroa.0274.sroa.4.0..sroa_idx = select i1 %i.yp, ptr %i.yq, ptr %.sroa.0274.sroa.4.0..sroa_idx
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit265

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit265: ; preds = %.lr.ph, %bb.kc
  %i.yr = phi i64 [ 0, %.lr.ph ], [ %i.ys, %bb.kc ] ; 2 uses
  %i.ys = add nuw i64 %i.yr, 1                    ; 3 uses
  store i64 %i.ys, ptr %.sroa.4275.0..sroa_idx, align 8
  %i.yt = getelementptr inbounds nuw [24 x i8], ptr %..sroa.0274.sroa.4.0..sroa_idx, i64 %i.yr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.yt, i64 24, i1 false)
  store i8 5, ptr %i.az, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1m_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB9_5dummy17ConnectionHandlerEINtNtB1Z_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(4032) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.az)
          to label %bb.kc unwind label %bb.kb

._crit_edge:                                      ; preds = %bb.kc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ba)
          to label %bb.kd unwind label %.loopexit

bb.kb:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit265
  %i.yu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ba) #40
          to label %.body unwind label %bb.t

bb.kc:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.yv = icmp eq i64 %i.ys, %.sink12.i7.i329
  br i1 %i.yv, label %._crit_edge, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsdy1Aheh0r2i_16autonatv2_server.exit265

bb.kd:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %.backedge.backedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %.noexc261, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsdy1Aheh0r2i_16autonatv2_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.az

bb.ke:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !3564)
  %i.yw = load i64, ptr %i.df, align 8, !range !14, !alias.scope !3564, !noalias !3565, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.yw, 2
  br i1 %.not.i.i.i, label %.noexc266, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.yx = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.yx)
          to label %.noexc266 unwind label %.thread.thread.a

.noexc266:                                        ; preds = %bb.kf, %bb.ke
  %i.yy = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3565
  %.not4.i.i.i = icmp eq i8 %i.yy, 0
  br i1 %.not4.i.i.i, label %bb.kg, label %.thread313

bb.kg:                                            ; preds = %.noexc266
  %i.yz = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.za = load ptr, ptr %i.yz, align 8, !alias.scope !3564, !noalias !3565, !align !15, !noundef !8 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.za, null
  br i1 %.not5.i.i.i, label %.thread313, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3566
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  %i.zc = load ptr, ptr %i.zb, align 8, !noalias !3565, !nonnull !8, !noundef !8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  %i.ze = load i64, ptr %i.zd, align 8, !noalias !3565, !noundef !8
  store ptr %i.zc, ptr %i.b, align 8, !noalias !3566, !captures !30
  %i.zf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ze, ptr %i.zf, align 8, !noalias !3566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3566
  store ptr %i.b, ptr %i.a, align 8, !noalias !3566
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdy1Aheh0r2i_16autonatv2_server, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !3566
  invoke fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 21, ptr noundef nonnull @32, ptr noundef nonnull %i.a) #45
          to label %.noexc267 unwind label %.thread.thread.a

.noexc267:                                        ; preds = %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3566
  br label %.thread313

.thread:                                          ; preds = %bb.kk, %.body
  %i.zg = trunc nuw i8 %.sroa.0107.0 to i1
  br i1 %i.zg, label %bb.kl, label %.thread.thread318

.thread.thread.a:                                 ; preds = %bb.kh, %bb.kf
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.ki:                                            ; preds = %bb.az, %.thread313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  ret void

.thread313:                                       ; preds = %.noexc266, %bb.kg, %.noexc267
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.df)
  br label %bb.ki

bb.kj:                                            ; preds = %_RINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB6_15ProtocolsChange14from_full_setsINtCscu2bAJ62uie_6either6EitherIB1l_IB1l_ReB1Z_ENtNtB8_15stream_protocol14StreamProtocolEIB1l_B26_B26_EEINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB35_3map3MapIB1l_IB3T_IB1l_IB3T_INtNtNtB37_7sources5empty5EmptyB1Z_EFB1Z_EB1U_EB4o_EFB1U_EB1P_EIB3T_INtNtB4y_4once4OnceB26_EFB26_EB1P_EEFB1P_EB1k_EIB3T_IB31_IB3T_B5z_FB26_EB2L_EB6u_EFB2L_EB1k_EEECsdy1Aheh0r2i_16autonatv2_server.exit
  %i.zi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bd) #40
          to label %.body unwind label %bb.t

bb.kk:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span7EnteredECsdy1Aheh0r2i_16autonatv2_server(ptr nonnull %i.df) #40
          to label %.thread unwind label %bb.t

.thread.thread318:                                ; preds = %bb.l, %bb.kl, %.thread
  %.pn195316 = phi { ptr, i32 } [ %.pn195317, %bb.kl ], [ %.pn193, %.thread ], [ %i.hv, %bb.l ]
  resume { ptr, i32 } %.pn195316

bb.kl:                                            ; preds = %.thread.thread.a, %.thread
  %.pn195317 = phi { ptr, i32 } [ %i.zh, %.thread.thread.a ], [ %.pn193, %.thread ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.df) #40
          to label %.thread.thread318 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectINtCscu2bAJ62uie_6either6EitherIB1S_NtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26server7handler9dial_back7HandlerNtNtB7_5dummy17ConnectionHandlerEINtNtB2v_12dial_request7HandlerNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngEENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE5closeCsdy1Aheh0r2i_16autonatv2_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([4048 x i8]) align 8 captures(none) dereferenceable(4048) initializes((0, 4048)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4032) %0, ptr noundef nonnull align 8 dereferenceable(4032) %1, i64 4032, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %i.c = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4104 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB2p_uuEuEuEINtNtNtB9_6future6either6EitherIB36_IB36_zzENtNtB1u_6stream6StreamEIB36_B3N_B3N_EEIB2p_IB2p_IB2p_zzEzEB4z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3626)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !3627, !nonnull !8, !noundef !8
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !3628
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %.body

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB3i_uuEuEuEINtNtNtBP_6future6either6EitherIB3Z_IB3Z_zzENtNtB2n_6stream6StreamEIB3Z_B4G_B4G_EEIB3i_IB3i_IB3i_zzEzEB5s_EEEE9drop_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #43
          to label %.body unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3630)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !3631, !nonnull !8, !noundef !8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !3632
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB2S_uuEuEuEINtNtNtBI_6future6either6EitherIB3z_IB3z_zzENtNtB1X_6stream6StreamEIB3z_B4g_B4g_EEIB2S_IB2S_IB2S_zzEzEB52_EEEECsdy1Aheh0r2i_16autonatv2_server.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB3i_uuEuEuEINtNtNtBP_6future6either6EitherIB3Z_IB3Z_zzENtNtB2n_6stream6StreamEIB3Z_B4G_B4G_EEIB3i_IB3i_IB3i_zzEzEB5s_EEEE9drop_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #43
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB2S_uuEuEuEINtNtNtBI_6future6either6EitherIB3z_IB3z_zzENtNtB1X_6stream6StreamEIB3z_B4g_B4g_EEIB2S_IB2S_IB2S_zzEzEB52_EEEECsdy1Aheh0r2i_16autonatv2_server.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_uuEuEuEINtNtNtBI_6future6either6EitherIB3D_IB3D_NtNtB1X_6stream6StreamzEzEIB3D_B4h_B4h_EEIB2R_IB2R_IB2R_zzEzEB56_EEEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #40
          to label %.body13 unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB2S_uuEuEuEINtNtNtBI_6future6either6EitherIB3z_IB3z_zzENtNtB1X_6stream6StreamEIB3z_B4g_B4g_EEIB2S_IB2S_IB2S_zzEzEB52_EEEECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4128 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2o_IB2o_uuEuEuEINtNtNtB9_6future6either6EitherIB3a_IB3a_NtNtB1u_6stream6StreamzEzEIB3a_B3O_B3O_EEIB2o_IB2o_IB2o_zzEzEB4D_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB2S_uuEuEuEINtNtNtBI_6future6either6EitherIB3z_IB3z_zzENtNtB1X_6stream6StreamEIB3z_B4g_B4g_EEIB2S_IB2S_IB2S_zzEzEB52_EEEECsdy1Aheh0r2i_16autonatv2_server.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3634)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !3635, !nonnull !8, !noundef !8
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !3636
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %.body13

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB3h_IB3h_uuEuEuEINtNtNtBP_6future6either6EitherIB43_IB43_NtNtB2n_6stream6StreamzEzEIB43_B4H_B4H_EEIB3h_IB3h_IB3h_zzEzEB5w_EEEE9drop_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #43
          to label %.body13 unwind label %bb.l

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTINtCscu2bAJ62uie_6either6EitherIB2S_uuEuEuEINtNtNtBI_6future6either6EitherIB3z_IB3z_zzENtNtB1X_6stream6StreamEIB3z_B4g_B4g_EEIB2S_IB2S_IB2S_zzEzEB52_EEEECsdy1Aheh0r2i_16autonatv2_server.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3638)
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !3639, !nonnull !8, !noundef !8
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !3640
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_uuEuEuEINtNtNtBI_6future6either6EitherIB3D_IB3D_NtNtB1X_6stream6StreamzEzEIB3D_B4h_B4h_EEIB2R_IB2R_IB2R_zzEzEB56_EEEECsdy1Aheh0r2i_16autonatv2_server.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB3h_IB3h_uuEuEuEINtNtNtBP_6future6either6EitherIB43_IB43_NtNtB2n_6stream6StreamzEzEIB43_B4H_B4H_EEIB3h_IB3h_IB3h_zzEzEB5w_EEEE9drop_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #43
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_uuEuEuEINtNtNtBI_6future6either6EitherIB3D_IB3D_NtNtB1X_6stream6StreamzEzEIB3D_B4h_B4h_EEIB2R_IB2R_IB2R_zzEzEB56_EEEECsdy1Aheh0r2i_16autonatv2_server.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

.body13:                                          ; preds = %bb.m, %bb.i, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.m ], [ %i.p, %bb.i ], [ %i.p, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4032
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(16) %i.x) #40
          to label %.body16 unwind label %bb.ak

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_uuEuEuEINtNtNtBI_6future6either6EitherIB3D_IB3D_NtNtB1X_6stream6StreamzEzEIB3D_B4h_B4h_EEIB2R_IB2R_IB2R_zzEzEB56_EEEECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4032
  %i.aa = load i64, ptr %i.z, align 8, !range !14, !alias.scope !3641, !noundef !8
  %switch.i = icmp samesign ult i64 %i.aa, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsdy1Aheh0r2i_16autonatv2_server.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_uuEuEuEINtNtNtBI_6future6either6EitherIB3D_IB3D_NtNtB1X_6stream6StreamzEzEIB3D_B4h_B4h_EEIB2R_IB2R_IB2R_zzEzEB56_EEEECsdy1Aheh0r2i_16autonatv2_server.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4040 ; 5 uses
  invoke void @_RNvXs0_NtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB5_5DelayNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3642)
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !3643, !noundef !8 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.body16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !3644
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.q, label %.body16

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #43
          to label %.body16 unwind label %bb.u

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3645)
  %i.ah = load ptr, ptr %i.ab, align 8, !alias.scope !3646, !noundef !8 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsdy1Aheh0r2i_16autonatv2_server.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !3647
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsdy1Aheh0r2i_16autonatv2_server.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #43
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsdy1Aheh0r2i_16autonatv2_server.exit unwind label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

.body16:                                          ; preds = %bb.v, %bb.q, %bb.p, %bb.o, %.body13
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body13 ], [ %i.an, %bb.v ], [ %i.ac, %bb.q ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4152
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2W_IB2W_uuEuEuEIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_IB3N_IB2W_IB3N_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEEIB3N_NtNtB4F_6denied13DeniedUpgradeEEEB6h_EEIB3N_IB2W_B4A_B4A_EEEEEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #40
          to label %.body19 unwind label %bb.ak

bb.v:                                             ; preds = %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.s, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_uuEuEuEINtNtNtBI_6future6either6EitherIB3D_IB3D_NtNtB1X_6stream6StreamzEzEIB3D_B4h_B4h_EEIB2R_IB2R_IB2R_zzEzEB56_EEEECsdy1Aheh0r2i_16autonatv2_server.exit, %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4152 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_uuEuEuEIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_IB3k_IB2t_IB3k_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEEIB3k_NtNtB4c_6denied13DeniedUpgradeEEEB5O_EEIB3k_IB2t_B47_B47_EEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsdy1Aheh0r2i_16autonatv2_server.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3649)
  %i.aq = load ptr, ptr %i.ao, align 8, !alias.scope !3650, !nonnull !8, !noundef !8
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !3651
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.x, label %.body19

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB3m_IB3m_uuEuEuEIB3m_INtNtB2n_7upgrade11SendWrapperIB3m_IB4d_IB3m_IB4d_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB2n_15stream_protocol14StreamProtocolEEIB4d_NtNtB55_6denied13DeniedUpgradeEEEB6H_EEIB4d_IB3m_B50_B50_EEEEEE9drop_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao) #43
          to label %.body19 unwind label %bb.aa

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsdy1Aheh0r2i_16autonatv2_server.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3653)
  %i.at = load ptr, ptr %i.ao, align 8, !alias.scope !3654, !nonnull !8, !noundef !8
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !3655
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2W_IB2W_uuEuEuEIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_IB3N_IB2W_IB3N_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEEIB3N_NtNtB4F_6denied13DeniedUpgradeEEEB6h_EEIB3N_IB2W_B4A_B4A_EEEEEECsdy1Aheh0r2i_16autonatv2_server.exit
end_hunk_2
