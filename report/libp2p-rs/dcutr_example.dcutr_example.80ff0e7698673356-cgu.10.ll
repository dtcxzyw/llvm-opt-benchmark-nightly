Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/dcutr_example.dcutr_example.80ff0e7698673356-cgu.10?download=true
inline.NumInlined: 1630
inline.NumDeleted: 818
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectIB14_IB14_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB7_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB22_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3x_EEE3newCsb4DWTO89qhm_13dcutr_example:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4824
  store i64 %6, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4832
  store i32 %7, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 5024
  store ptr %i.bt, ptr %i.cl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.ao:                                            ; preds = %bb.at, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsb4DWTO89qhm_13dcutr_example.exit, %bb.ar, %bb.av, %.thread, %.thread35, %bb.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_IB2s_NtNtB1A_15stream_protocol14StreamProtocolReEB3b_EIB2s_B3b_B3b_EEIB2s_B36_B3Q_EEEbEECsb4DWTO89qhm_13dcutr_example.exit, %bb.am, %bb.ah, %bb.ae, %bb.ab
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ap:                                            ; preds = %bb.am
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsb4DWTO89qhm_13dcutr_example.exit unwind label %bb.ao

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_IB2s_NtNtB1A_15stream_protocol14StreamProtocolReEB3b_EIB2s_B3b_B3b_EEIB2s_B36_B3Q_EEEbEECsb4DWTO89qhm_13dcutr_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsb4DWTO89qhm_13dcutr_example.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2W_IB2W_IB2W_uuEuEuEB3A_EIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_IB3X_IB2W_IB3X_IB2W_IB3X_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEEIB3X_NtNtB4Z_6denied13DeniedUpgradeEEEB4P_EEIB3X_IB2W_B4U_B4U_EEEEB4F_EEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #43
          to label %bb.ah unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_IB2R_uuEuEuEB3v_EINtNtNtBI_6future6either6EitherIB3N_IB3N_IB3N_NtNtB1X_6stream6StreamzEB4w_EIB3N_B4w_B4w_EEB4r_EIB2R_IB2R_IB2R_IB2R_zzEzEB5y_EB5y_EEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #43
          to label %bb.ae unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxECsb4DWTO89qhm_13dcutr_example(ptr nonnull %1, ptr nonnull %2) #43
          to label %bb.q unwind label %bb.ao

bb.as:                                            ; preds = %.thread35, %bb.q
  %.sroa.01.044 = phi i1 [ %.sroa.01.045, %.thread35 ], [ %.sroa.01.1, %bb.q ]
  %.sroa.02.142 = phi i8 [ %.sroa.02.143, %.thread35 ], [ 0, %bb.q ]
  %.pn.pn.pn.pn.pn40 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn41, %.thread35 ], [ %.pn.pn.pn.pn, %bb.q ] ; 2 uses
  br i1 %.sroa.01.044, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_IB2s_NtNtB1A_15stream_protocol14StreamProtocolReEB3b_EIB2s_B3b_B3b_EEIB2s_B36_B3Q_EEEbEECsb4DWTO89qhm_13dcutr_example.exit25

.thread35:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsb4DWTO89qhm_13dcutr_example.exit8.i.i, %bb.v, %bb.r, %bb.q
  %.sroa.01.045 = phi i1 [ %.sroa.01.1, %bb.q ], [ true, %bb.r ], [ true, %bb.v ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsb4DWTO89qhm_13dcutr_example.exit8.i.i ]
  %.sroa.02.143 = phi i8 [ 0, %bb.q ], [ 1, %bb.r ], [ 1, %bb.v ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsb4DWTO89qhm_13dcutr_example.exit8.i.i ]
  %.pn.pn.pn.pn.pn41 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.q ], [ %i.aj, %bb.r ], [ %i.aw, %bb.v ], [ %i.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsb4DWTO89qhm_13dcutr_example.exit8.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #43
          to label %bb.as unwind label %bb.ao

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1M_IB1M_IB1M_NtNtBU_15stream_protocol14StreamProtocolReEB2v_EIB1M_B2v_B2v_EEIB1M_B2q_B39_EEEbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_IB2s_NtNtB1A_15stream_protocol14StreamProtocolReEB3b_EIB2s_B3b_B3b_EEIB2s_B36_B3Q_EEEbEECsb4DWTO89qhm_13dcutr_example.exit25 unwind label %bb.ao

.thread:                                          ; preds = %bb.b, %bb.e, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_IB2s_NtNtB1A_15stream_protocol14StreamProtocolReEB3b_EIB2s_B3b_B3b_EEIB2s_B36_B3Q_EEEbEECsb4DWTO89qhm_13dcutr_example.exit25
  %.pn.pn.pn.pn.pn.pn32 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn40, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_IB2s_NtNtB1A_15stream_protocol14StreamProtocolReEB3b_EIB2s_B3b_B3b_EEIB2s_B36_B3Q_EEEbEECsb4DWTO89qhm_13dcutr_example.exit25 ], [ %i.ad, %bb.m ], [ %i.s, %bb.e ], [ %i.r, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6select23ConnectionHandlerSelectIBC_IBC_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtBI_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1X_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3s_EEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(4784) %3) #43
          to label %bb.av unwind label %bb.ao

bb.au:                                            ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_IB2s_NtNtB1A_15stream_protocol14StreamProtocolReEB3b_EIB2s_B3b_B3b_EEIB2s_B36_B3Q_EEEbEECsb4DWTO89qhm_13dcutr_example.exit25
  %.pn.pn.pn.pn.pn.pn33 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn32, %bb.av ], [ %.pn.pn.pn.pn.pn40, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_IB2s_IB2s_NtNtB1A_15stream_protocol14StreamProtocolReEB3b_EIB2s_B3b_B3b_EEIB2s_B36_B3Q_EEEbEECsb4DWTO89qhm_13dcutr_example.exit25 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn33

bb.av:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxECsb4DWTO89qhm_13dcutr_example(ptr nonnull %1, ptr nonnull %2) #43
          to label %bb.au unwind label %bb.ao
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectIB14_IB14_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB7_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB22_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3x_EEE4pollCsb4DWTO89qhm_13dcutr_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([608 x i8]) align 8 captures(none) dereferenceable(608) %0, ptr noalias nofree noundef align 8 dereferenceable(5048) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.o = alloca [208 x i8], align 8               ; 10 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [1064 x i8], align 8              ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [208 x i8], align 8               ; 5 uses
  %i.t = alloca [120 x i8], align 8               ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [392 x i8], align 8               ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
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
  %i.an = alloca [40 x i8], align 8               ; 6 uses
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
  %i.ay = alloca [40 x i8], align 8               ; 2 uses
  %i.az = alloca [168 x i8], align 8              ; 5 uses
  %i.ba = alloca [80 x i8], align 8               ; 10 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
  %i.bb = alloca [144 x i8], align 8              ; 8 uses
  %i.bc = alloca [208 x i8], align 8              ; 5 uses
  %i.bd = alloca [64 x i8], align 8               ; 10 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [144 x i8], align 8              ; 8 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.8 = alloca [46 x i8], align 2            ; 3 uses
  %i.bi = alloca [40 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [16 x i8], align 8               ; 7 uses
  %i.bl = alloca [168 x i8], align 8              ; 5 uses
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
  %i.cm = alloca [168 x i8], align 8              ; 7 uses
  %i.cn = alloca [160 x i8], align 8              ; 9 uses
  %i.co = alloca [168 x i8], align 8              ; 8 uses
  %i.cp = alloca [168 x i8], align 8              ; 7 uses
  %i.cq = alloca [160 x i8], align 8              ; 10 uses
  %i.cr = alloca [168 x i8], align 8              ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [48 x i8], align 8               ; 4 uses
  %i.cu = alloca [40 x i8], align 8               ; 4 uses
  %i.cv = alloca [168 x i8], align 8              ; 5 uses
  %i.cw = alloca [24 x i8], align 8               ; 5 uses
  %i.cx = alloca [48 x i8], align 8               ; 4 uses
  %i.cy = alloca [72 x i8], align 8               ; 8 uses
  %i.cz = alloca [608 x i8], align 8              ; 13 uses
  %i.da = alloca [168 x i8], align 8              ; 7 uses
  %i.db = alloca [32 x i8], align 8               ; 7 uses
  %i.dc = alloca [40 x i8], align 8               ; 7 uses
  %i.dd = alloca [32 x i8], align 8               ; 7 uses
  %i.de = alloca [40 x i8], align 8               ; 5 uses
  %i.df = alloca [40 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %i.dg = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dh = icmp ult i64 %i.dg, 2
  br i1 %i.dh, label %bb.d, label %bb.c

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.li, %bb.lg, %.noexc10.i, %.body.i247, %.critedge45.i, %.body.i, %bb.fg, %bb.ad, %.body242.thread, %bb.if, %bb.cx, %.thread326, %.body257, %.body236, %.body231
  %.sroa.0115.0 = phi i8 [ %.sroa.0113.2, %bb.cx ], [ %.sroa.0113.2, %.thread326 ], [ %.sroa.0115.1.ph, %.loopexit.split-lp ], [ %.sroa.0113.2, %.body257 ], [ %.sroa.0113.2, %bb.if ], [ %.sroa.0113.2, %.body.i247 ], [ %.sroa.0113.2, %.body242.thread ], [ %.sroa.0113.2, %.noexc10.i ], [ %.sroa.0113.2, %bb.ad ], [ %.sroa.0113.2, %.body236 ], [ %.sroa.0113.2, %.body231 ], [ %.sroa.0113.2, %bb.li ], [ %.sroa.0113.2, %bb.lg ], [ %.sroa.0113.2, %.critedge45.i ], [ %.sroa.0113.2, %bb.fg ], [ %.sroa.0113.2, %.body.i ], [ %.sroa.0113.2, %.loopexit ] ; 2 uses
  %.sroa.0113.0 = phi i8 [ %.sroa.0113.2, %bb.cx ], [ %.sroa.0113.2, %.thread326 ], [ %.sroa.0113.1.ph, %.loopexit.split-lp ], [ %.sroa.0113.2, %.body257 ], [ %.sroa.0113.2, %bb.if ], [ %.sroa.0113.2, %.body.i247 ], [ %.sroa.0113.2, %.body242.thread ], [ %.sroa.0113.2, %.noexc10.i ], [ %.sroa.0113.2, %bb.ad ], [ %.sroa.0113.2, %.body236 ], [ %.sroa.0113.2, %.body231 ], [ %.sroa.0113.2, %bb.li ], [ %.sroa.0113.2, %bb.lg ], [ %.sroa.0113.2, %.critedge45.i ], [ %.sroa.0113.2, %bb.fg ], [ %.sroa.0113.2, %.body.i ], [ %.sroa.0113.2, %.loopexit ]
  %.pn201 = phi { ptr, i32 } [ %i.ni, %bb.cx ], [ %eh.lpad-body262329, %.thread326 ], [ %lpad.loopexit.split-lp355, %.loopexit.split-lp ], [ %eh.lpad-body258, %.body257 ], [ %i.vk, %bb.if ], [ %i.ve, %.body.i247 ], [ %eh.lpad-body243313, %.body242.thread ], [ %.pn.pn.ph.i, %.noexc10.i ], [ %i.jg, %bb.ad ], [ %eh.lpad-body237, %.body236 ], [ %eh.lpad-body232, %.body231 ], [ %i.aay, %bb.li ], [ %i.aar, %bb.lg ], [ %i.ua, %.critedge45.i ], [ %i.rb, %bb.fg ], [ %i.tx, %.body.i ], [ %lpad.loopexit354, %.loopexit ] ; 2 uses
  %i.di = trunc nuw i8 %.sroa.0113.0 to i1
  br i1 %i.di, label %bb.lq, label %.thread

.loopexit:                                        ; preds = %._crit_edge, %bb.dk, %bb.co, %.noexc221, %bb.cn, %bb.cl, %bb.bv, %.noexc216, %bb.bu, %bb.bs, %bb.cu, %bb.cs, %bb.cr, %bb.ci, %bb.ch, %bb.cb, %bb.bz, %bb.by, %bb.bp, %bb.bo, %bb.bj, %bb.hc, %bb.id, %.backedge, %bb.w, %bb.x, %bb.aa, %bb.ak, %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.as, %bb.aw, %bb.bb, %bb.bc, %bb.bd, %bb.eg, %bb.ei, %bb.ek, %bb.el, %bb.ey, %bb.fj, %bb.fl, %bb.fm, %bb.hf, %bb.hg
  %lpad.loopexit354 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.s, %bb.f, %bb.g, %bb.j, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsb4DWTO89qhm_13dcutr_example.exit.i.i
  %.sroa.0115.1.ph = phi i8 [ 1, %bb.q ], [ 1, %bb.s ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ], [ %.sroa.0113.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsb4DWTO89qhm_13dcutr_example.exit.i.i ]
  %.sroa.0113.1.ph = phi i8 [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ], [ %.sroa.0113.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsb4DWTO89qhm_13dcutr_example.exit.i.i ]
  %lpad.loopexit.split-lp355 = landingpad { ptr, i32 }
          cleanup
  br label %.body

default.unreachable591:                           ; preds = %bb.di, %bb.bi
  unreachable

default.unreachable:                              ; preds = %thread-pre-split
  unreachable

bb.b:                                             ; preds = %bb.ab
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.dj = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.dj, 0
  br i1 %.not, label %bb.d, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %.noexc205, %bb.r, %.noexc206, %bb.c
  %3 = phi i1 [ false, %bb.c ], [ true, %.noexc206 ], [ true, %bb.r ], [ true, %.noexc205 ]
  %.sroa.0113.2 = phi i8 [ 0, %bb.c ], [ 1, %.noexc206 ], [ 1, %bb.r ], [ 1, %.noexc205 ] ; 35 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 4904 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4840 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 4880 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4856 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4928 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4976 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4800 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 65
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 65
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 25
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.049.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.069.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.069.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 4864
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 4888
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 4912 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 5024 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 4784 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 4792 ; 13 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4824
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 4832
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.8.16..sroa_idx288 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 6 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 5040
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.012.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.012.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.gd = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.ge = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.gh = getelementptr inbounds nuw i8, ptr %i.w, i64 129
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bh, i64 25
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 5032
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bf, i64 137
  %i.gt = getelementptr inbounds nuw i8, ptr %i.q, i64 328
  %i.gu = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  %i.gv = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.gw = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.gx = getelementptr inbounds nuw i8, ptr %i.q, i64 352
  %i.gy = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.be, i64 25
  %i.ha = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 4808 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 4816 ; 4 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 7 uses
  %.sroa.7.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 9 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 160 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.o, i64 168 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 4952
  %i.hm = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bb, i64 96 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bb, i64 104 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.sroa.0291.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %.sroa.0291.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.sroa.0291.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.hr = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 160
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 161
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 160
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 161
  %i.hv = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 25
  br label %.backedge

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %i.hw = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.hx = icmp ult i64 %i.hw, 2
  br i1 %i.hx, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.hy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.hy, label %bb.f [
    i8 0, label %bb.m
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !4788

bb.f:                                             ; preds = %bb.e
  %i.hz = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE)
          to label %bb.h unwind label %.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.h
  %.sroa.011.0 = phi i8 [ %i.hz, %bb.h ], [ %i.hy, %bb.e ], [ %i.hy, %bb.e ]
  %i.ia = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, align 8, !nonnull !8, !align !17, !noundef !8
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectIB14_IB14_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB7_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB22_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3x_EEE4pollCsb4DWTO89qhm_13dcutr_example:bb.a
  br label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

bb.t:                                             ; preds = %bb.fg, %bb.lq, %.body242.thread, %bb.if, %bb.cx, %bb.lr, %.thread326, %bb.li, %.body257, %bb.l
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.u:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.p

.backedge:                                        ; preds = %.backedge.backedge, %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit
  %i.ix = invoke { i8, i8 } @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_IB2t_uuEuEuEB37_EIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_IB3u_IB2t_IB3u_IB2t_IB3u_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEEIB3u_NtNtB4w_6denied13DeniedUpgradeEEEB4m_EEIB3u_IB2t_B4r_B4r_EEEEB4c_EEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.v unwind label %.loopexit  ; 2 uses

bb.v:                                             ; preds = %.backedge
  %i.iy = extractvalue { i8, i8 } %i.ix, 0        ; 2 uses
  switch i8 %i.iy, label %bb.x [
    i8 -2, label %bb.w
    i8 -1, label %bb.w
    i8 2, label %.backedge.backedge
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_IBR_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1u_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB2Z_EENtB7_17ConnectionHandler4pollCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(none) dereferenceable(608) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(4784) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.iz = extractvalue { i8, i8 } %i.ix, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  store i64 0, ptr %i.hv, align 8
  store i8 %i.iy, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 %i.iz, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 3, ptr %i.da, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_IBR_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1u_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB2Z_EENtB7_17ConnectionHandler19on_connection_eventCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(4784) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.da)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.y, %bb.v, %bb.am, %bb.bf, %bb.ce, %bb.hd, %bb.ie, %bb.lk
  br label %.backedge

bb.z:                                             ; preds = %bb.w
  %i.ja = load i64, ptr %i.cz, align 8, !range !4790, !noundef !8 ; 3 uses
  %i.jb = icmp eq i64 %i.ja, -3
  br i1 %i.jb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  invoke void @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2o_IB2o_IB2o_uuEuEuEB32_EINtNtNtB9_6future6either6EitherIB3k_IB3k_IB3k_NtNtB1u_6stream6StreamzEB43_EIB3k_B43_B43_EEB3Y_EIB2o_IB2o_IB2o_IB2o_zzEzEB55_EB55_EEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.cq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ba unwind label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.jc = add nsw i64 %i.ja, -4
  %i.jd = icmp sgt i64 %i.ja, 3
  %i.je = select i1 %i.jd, i64 %i.jc, i64 2
  switch i64 %i.je, label %bb.b [
    i64 0, label %bb.ac
    i64 1, label %bb.ai
    i64 2, label %bb.aj
  ]

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.dr, i64 40, i1 false)
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0.copyload = load i32, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.625.0.copyload = load i8, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0.copyload = load i8, ptr %.sroa.726.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.experimental.noalias.scope.decl(metadata !4791)
  %i.jf = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.ae unwind label %bb.ad, !noalias !4792 ; 2 uses

bb.ad:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBC_IB17_IBC_IB17_IBC_IB17_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1b_15stream_protocol14StreamProtocolEEIB17_NtNtB2u_6denied13DeniedUpgradeEEEB2k_EEIB17_IBC_B2p_B2p_EEEEB2b_EECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ay) #43
          to label %.body unwind label %bb.ah, !noalias !4791

bb.ae:                                            ; preds = %bb.ac
  %i.jh = extractvalue { i64, i32 } %i.jf, 0
  %i.ji = extractvalue { i64, i32 } %i.jf, 1
  %i.jj = invoke { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %i.jh, i32 noundef %i.ji, i64 noundef %.sroa.422.0.copyload, i32 noundef range(i32 0, 1000000000) %.sroa.523.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
          to label %bb.af unwind label %bb.ad, !noalias !4792 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.jk = invoke noundef nonnull ptr @_RNvXs4_NtNtCs5GOyS9hQAaF_13futures_timer6native5timerNtB5_11TimerHandleNtNtCskKLDkoKarTP_4core7default7Default7default()
          to label %bb.ag unwind label %bb.ad, !noalias !4792

bb.ag:                                            ; preds = %bb.af
  %i.jl = extractvalue { i64, i32 } %i.jj, 1
  %i.jm = extractvalue { i64, i32 } %i.jj, 0
  %i.jn = invoke noundef ptr @_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay10new_handle(i64 noundef %i.jm, i32 noundef %i.jl, ptr noundef nonnull %i.jk)
          to label %bb.ak unwind label %bb.ad, !noalias !4792

bb.ah:                                            ; preds = %bb.ad
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42, !noalias !4791
  unreachable

bb.ai:                                            ; preds = %bb.ab
  %i.jp = load i64, ptr %i.dr, align 8, !range !18, !noundef !8
  %i.jq = trunc nuw i64 %i.jp to i1
  br i1 %i.jq, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(608) %i.cz, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.az

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %i.dr, i64 40, i1 false)
  store i8 %.sroa.625.0.copyload, ptr %i.dv, align 8, !alias.scope !4791
  store i8 %.sroa.726.0.copyload, ptr %i.dw, align 1, !alias.scope !4791
  store ptr %i.jn, ptr %i.dx, align 8, !alias.scope !4791
  store ptr null, ptr %i.dy, align 8, !alias.scope !4791
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_IB2t_uuEuEuEB37_EIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_IB3u_IB2t_IB3u_IB2t_IB3u_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEEIB3u_NtNtB4w_6denied13DeniedUpgradeEEEB4m_EEIB3u_IB2t_B4r_B4r_EEEEB4c_EEE4pushCsb4DWTO89qhm_13dcutr_example(ptr noundef nonnull align 8 %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.cy)
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
  %i.jr = load i64, ptr %i.cw, align 8, !range !7, !noundef !8
  %.not191 = icmp eq i64 %i.jr, 2
  br i1 %.not191, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  store i8 6, ptr %i.cv, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_IBR_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1u_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB2Z_EENtB7_17ConnectionHandler19on_connection_eventCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(4784) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.cv)
          to label %bb.ar unwind label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cu, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %bb.as unwind label %.loopexit

bb.as:                                            ; preds = %bb.ar
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBO_EECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cu)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.am

bb.av:                                            ; preds = %bb.an
  %i.js = load i64, ptr %i.cs, align 8, !range !7, !noundef !8
  %.not192 = icmp eq i64 %i.js, 2
  br i1 %.not192, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  store i8 6, ptr %i.cr, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_IBR_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1u_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB2Z_EENtB7_17ConnectionHandler19on_connection_eventCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(4784) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.cr)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.am

bb.az:                                            ; preds = %bb.fe, %bb.fh, %bb.ex, %bb.fa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsb4DWTO89qhm_13dcutr_example.exit, %bb.hk, %bb.fq, %bb.aj
  br i1 %3, label %bb.ll, label %bb.lp

bb.ba:                                            ; preds = %bb.aa
  %i.jt = load i64, ptr %i.dz, align 8, !range !24, !noundef !8
  switch i64 %i.jt, label %bb.bd [
    i64 -3, label %bb.bb
    i64 -2, label %bb.bb
    i64 -1, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  invoke void @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB2q_EINtNtNtB9_6future6either6EitherIB38_IB38_IB38_NtNtB1u_6stream6StreamzEB3R_EIB38_B3R_B3R_EEIB38_B3M_zEEIB2r_IB2r_IB2r_IB2r_zzEzEB50_EB4V_EEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.cn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bh unwind label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.ju = load i8, ptr %i.cq, align 8, !range !12, !noundef !8
  %i.jv = load i8, ptr %i.ea, align 1, !noundef !8
  %i.jw = load i64, ptr %i.eb, align 8, !range !25, !noundef !8
  %i.jx = load ptr, ptr %i.ec, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store i64 %i.jw, ptr %i.ed, align 8
  store ptr %i.jx, ptr %.sroa.433.0..sroa_idx, align 8
  store i8 %i.ju, ptr %.sroa.534.0..sroa_idx, align 8
  store i8 %i.jv, ptr %.sroa.635.0..sroa_idx, align 1
  store i8 3, ptr %i.co, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_IBR_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1u_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB2Z_EENtB7_17ConnectionHandler19on_connection_eventCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(4784) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.co)
          to label %bb.bg unwind label %.loopexit

bb.bd:                                            ; preds = %bb.ba
  %i.jy = load i8, ptr %i.cq, align 8, !range !12, !noundef !8
  %i.jz = load i8, ptr %i.ea, align 1, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.hu, ptr noundef nonnull align 8 dereferenceable(152) %i.dz, i64 152, i1 false)
  store i8 %i.jy, ptr %.sroa.429.0..sroa_idx, align 8
  store i8 %i.jz, ptr %.sroa.530.0..sroa_idx, align 1
  store i8 1, ptr %i.cp, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_IBR_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1u_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB2Z_EENtB7_17ConnectionHandler19on_connection_eventCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(4784) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.cp)
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
  %i.ka = load i64, ptr %i.ee, align 8, !range !24, !noundef !8
  switch i64 %i.ka, label %bb.bj [
    i64 -3, label %bb.du
    i64 -2, label %bb.du
    i64 -1, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.kb = load i64, ptr %i.ef, align 8, !range !25, !noundef !8
  switch i64 %i.kb, label %default.unreachable591 [
    i64 0, label %bb.bm
    i64 1, label %bb.bl
    i64 2, label %bb.cf
    i64 3, label %bb.cy
  ]

bb.bj:                                            ; preds = %bb.bh
  %i.kc = load i8, ptr %i.cn, align 8, !range !12, !noundef !8
  %i.kd = load i8, ptr %i.hs, align 1, !range !12, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ht, ptr noundef nonnull align 8 dereferenceable(152) %i.ee, i64 152, i1 false)
  store i8 %i.kc, ptr %.sroa.438.0..sroa_idx, align 8
  store i8 %i.kd, ptr %.sroa.539.0..sroa_idx, align 1
  store i8 0, ptr %i.cm, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_IBR_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1u_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB2Z_EENtB7_17ConnectionHandler19on_connection_eventCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(4784) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.cm)
          to label %bb.bk unwind label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.ce

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

bb.bm:                                            ; preds = %bb.bi
  %i.ke = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.kf = icmp ult i64 %i.ke, 2
  br i1 %i.kf, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.kg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.kg, label %bb.bo [
    i8 0, label %bb.bw
    i8 1, label %bb.bp
    i8 2, label %bb.bp
  ], !prof !4788

bb.bo:                                            ; preds = %bb.bn
  %i.kh = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE)
          to label %bb.bq unwind label %.loopexit ; 2 uses

bb.bp:                                            ; preds = %bb.bn, %bb.bn, %bb.bq
  %.sroa.067.0 = phi i8 [ %i.kh, %bb.bq ], [ %i.kg, %bb.bn ], [ %i.kg, %bb.bn ]
  %i.ki = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !8, !align !17, !noundef !8
  %i.kj = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ki, i8 noundef %.sroa.067.0)
          to label %bb.br unwind label %.loopexit

bb.bq:                                            ; preds = %bb.bo
  %i.kk = icmp eq i8 %i.kh, 0
  br i1 %i.kk, label %bb.bw, label %bb.bp

bb.br:                                            ; preds = %bb.bp
  br i1 %i.kj, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.kl = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store <2 x ptr> <ptr @40, ptr inttoptr (i64 65 to ptr)>, ptr %i.bs, align 16
  store ptr %i.bs, ptr %i.bt, align 8
  store ptr @11, ptr %i.ey, align 8
  store i64 1, ptr %i.bu, align 8
  store ptr %i.bt, ptr %.sroa.069.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.069.sroa.5.0..sroa_idx, align 8
  store ptr %i.km, ptr %.sroa.470.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc215 unwind label %.loopexit

.noexc215:                                        ; preds = %bb.bs
  %i.kn = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4793
  %.not.i214 = icmp eq i8 %i.kn, 0
  br i1 %.not.i214, label %bb.bt, label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectIB16_IB16_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB24_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3z_EEE4polls0_0Csb4DWTO89qhm_13dcutr_example.exit

bb.bt:                                            ; preds = %.noexc215
  %i.ko = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4793 ; 2 uses
  %i.kp = icmp ult i64 %i.ko, 6
  call void @llvm.assume(i1 %i.kp)
  %i.kq = icmp samesign ugt i64 %i.ko, 3
  br i1 %i.kq, label %bb.bu, label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectIB16_IB16_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB24_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3z_EEE4polls0_0Csb4DWTO89qhm_13dcutr_example.exit

bb.bu:                                            ; preds = %bb.bt
  %i.kr = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !noalias !4793, !nonnull !8, !align !17, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !4793
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.kt = load ptr, ptr %i.ks, align 8, !nonnull !8, !noundef !8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.kv = load i64, ptr %i.ku, align 8, !noundef !8
  store i64 4, ptr %i.as, align 8, !noalias !4793
  store ptr %i.kt, ptr %i.ez, align 8, !noalias !4793
  store i64 %i.kv, ptr %i.fa, align 8, !noalias !4793
  %i.kw = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc216 unwind label %.loopexit ; 2 uses

.noexc216:                                        ; preds = %bb.bu
  %i.kx = extractvalue { ptr, ptr } %i.kw, 0      ; 2 uses
  %i.ky = extractvalue { ptr, ptr } %i.kw, 1      ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !invariant.load !8, !nonnull !8
  %i.lb = invoke noundef zeroext i1 %i.la(ptr noundef %i.kx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as) #44
          to label %.noexc217 unwind label %.loopexit, !inline_history !4525

.noexc217:                                        ; preds = %.noexc216
  br i1 %i.lb, label %bb.bv, label %.noexc218

bb.bv:                                            ; preds = %.noexc217
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kr, ptr noundef nonnull %i.kx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ky, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc218 unwind label %.loopexit

.noexc218:                                        ; preds = %bb.bv, %.noexc217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4793
  br label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectIB16_IB16_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB24_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3z_EEE4polls0_0Csb4DWTO89qhm_13dcutr_example.exit

_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectIB16_IB16_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB24_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3z_EEE4polls0_0Csb4DWTO89qhm_13dcutr_example.exit: ; preds = %.noexc218, %bb.bt, %.noexc215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.ce

bb.bw:                                            ; preds = %bb.bq, %bb.bn, %bb.bm, %bb.br
  %i.lc = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not197 = icmp eq i8 %i.lc, 0
  br i1 %.not197, label %bb.bx, label %bb.ce

bb.bx:                                            ; preds = %bb.bw
  %i.ld = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.le = icmp ult i64 %i.ld, 6
  call void @llvm.assume(i1 %i.le)
  %i.lf = icmp samesign ugt i64 %i.ld, 3
  br i1 %i.lf, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.lg = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !8, !align !17, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
end_hunk_1
begin_hunk_2_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectIB14_IB14_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB7_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB22_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3x_EEE4pollCsb4DWTO89qhm_13dcutr_example:bb.a

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.experimental.noalias.scope.decl(metadata !4942)
  call void @llvm.experimental.noalias.scope.decl(metadata !4943)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.zz, 2
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_IB2C_IB1A_IB2C_INtCscu2bAJ62uie_6either6EitherIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEIB2C_NtNtB1E_6denied13DeniedUpgradeEEEB3T_EEIB2C_IB1A_B3Y_B3Y_EEEEIB2C_IB3p_IB2C_IB3p_B3Y_B5c_EEB57_EEETTTIB3p_uuEuEuEB6P_EEECsb4DWTO89qhm_13dcutr_example.exit, label %bb.la

bb.la:                                            ; preds = %bb.kz
  call void @llvm.experimental.noalias.scope.decl(metadata !4944)
  call void @llvm.experimental.noalias.scope.decl(metadata !4945)
  call void @llvm.experimental.noalias.scope.decl(metadata !4946)
  %i.aaa = icmp eq i64 %i.zz, 0
  br i1 %i.aaa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_IB2C_IB1A_IB2C_INtCscu2bAJ62uie_6either6EitherIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEIB2C_NtNtB1E_6denied13DeniedUpgradeEEEB3T_EEIB2C_IB1A_B3Y_B3Y_EEEEIB2C_IB3p_IB2C_IB3p_B3Y_B5c_EEB57_EEETTTIB3p_uuEuEuEB6P_EEECsb4DWTO89qhm_13dcutr_example.exit, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void @llvm.experimental.noalias.scope.decl(metadata !4947)
  call void @llvm.experimental.noalias.scope.decl(metadata !4948)
  %i.aab = load ptr, ptr %i.hp, align 8, !alias.scope !4949, !nonnull !8, !noundef !8
  %i.aac = atomicrmw add ptr %i.aab, i64 -1 release, align 8, !noalias !4950
  %i.aad = icmp eq i64 %i.aac, 1
  br i1 %i.aad, label %bb.lc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_IB2C_IB1A_IB2C_INtCscu2bAJ62uie_6either6EitherIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEIB2C_NtNtB1E_6denied13DeniedUpgradeEEEB3T_EEIB2C_IB1A_B3Y_B3Y_EEEEIB2C_IB3p_IB2C_IB3p_B3Y_B5c_EEB57_EEETTTIB3p_uuEuEuEB6P_EEECsb4DWTO89qhm_13dcutr_example.exit

bb.lc:                                            ; preds = %bb.lb
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hp) #41
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_IB2C_IB1A_IB2C_INtCscu2bAJ62uie_6either6EitherIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEIB2C_NtNtB1E_6denied13DeniedUpgradeEEEB3T_EEIB2C_IB1A_B3Y_B3Y_EEEEIB2C_IB3p_IB2C_IB3p_B3Y_B5c_EEB57_EEETTTIB3p_uuEuEuEB6P_EEECsb4DWTO89qhm_13dcutr_example.exit unwind label %.thread330

.thread330:                                       ; preds = %bb.lc
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %.thread326

bb.ld:                                            ; preds = %bb.kx
  %i.aaf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_IB2C_IB1A_IB2C_INtCscu2bAJ62uie_6either6EitherIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEIB2C_NtNtB1E_6denied13DeniedUpgradeEEEB3T_EEIB2C_IB1A_B3Y_B3Y_EEEEIB2C_IB3p_IB2C_IB3p_B3Y_B5c_EEB57_EEETTTIB3p_uuEuEuEB6P_EEECsb4DWTO89qhm_13dcutr_example.exit: ; preds = %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.aag = load i64, ptr %i.hn, align 8, !alias.scope !4951, !noundef !8 ; 5 uses
  %i.aah = icmp ult i64 %i.aag, 3
  %i.aai = load i64, ptr %i.bd, align 8, !range !18, !alias.scope !4951, !noundef !8 ; 3 uses
  br i1 %i.aah, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit.thread, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_IB2C_IB1A_IB2C_INtCscu2bAJ62uie_6either6EitherIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEIB2C_NtNtB1E_6denied13DeniedUpgradeEEEB3T_EEIB2C_IB1A_B3Y_B3Y_EEEEIB2C_IB3p_IB2C_IB3p_B3Y_B5c_EEB57_EEETTTIB3p_uuEuEuEB6P_EEECsb4DWTO89qhm_13dcutr_example.exit
  %i.aaj = icmp ne i64 %i.aai, 0
  call void @llvm.assume(i1 %i.aaj)
  %i.aak = load i64, ptr %i.hq, align 8, !alias.scope !4951, !noundef !8 ; 2 uses
  %i.aal = icmp eq i64 %i.aak, 0
  br i1 %i.aal, label %bb.lf, label %bb.le

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_IB2C_IB1A_IB2C_INtCscu2bAJ62uie_6either6EitherIB2C_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEIB2C_NtNtB1E_6denied13DeniedUpgradeEEEB3T_EEIB2C_IB1A_B3Y_B3Y_EEEEIB2C_IB3p_IB2C_IB3p_B3Y_B5c_EEB57_EEETTTIB3p_uuEuEuEB6P_EEECsb4DWTO89qhm_13dcutr_example.exit
  %i.aam = icmp eq i64 %i.aai, 0
  call void @llvm.assume(i1 %i.aam)
  %i.aan = icmp eq i64 %i.aag, 0
  br i1 %i.aan, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsb4DWTO89qhm_13dcutr_example.exit.i.i, label %.else

bb.le:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  br label %.lr.ph

.else:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.5296.0.copyload344 = load i64, ptr %i.hq, align 8
  br label %.lr.ph

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsb4DWTO89qhm_13dcutr_example.exit.i.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit.thread
  store i64 4, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsb4DWTO89qhm_13dcutr_example.exit

bb.lf:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit
  store i64 4, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4952)
  call void @llvm.experimental.noalias.scope.decl(metadata !4953)
  %i.aao = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !4954, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4954
  store i64 %i.aag, ptr %i.c, align 8, !noalias !4954
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aao, ptr %i.aap, align 8, !noalias !4954
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.aaq, align 8, !noalias !4954
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsb4DWTO89qhm_13dcutr_example.exit.i.i unwind label %bb.lg, !noalias !4954

bb.lg:                                            ; preds = %bb.lf
  %i.aar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.lh, !noalias !4954

bb.lh:                                            ; preds = %bb.lg
  %i.aas = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42, !noalias !4954
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsb4DWTO89qhm_13dcutr_example.exit.i.i: ; preds = %bb.lf
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc268 unwind label %.loopexit.split-lp

.noexc268:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsb4DWTO89qhm_13dcutr_example.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4954
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsb4DWTO89qhm_13dcutr_example.exit

.lr.ph:                                           ; preds = %.else, %bb.le
  %.sink12.i7.i350 = phi i64 [ %i.aag, %.else ], [ %i.aak, %bb.le ] ; 2 uses
  %.sroa.5296.0 = phi i64 [ %.sroa.5296.0.copyload344, %.else ], [ 0, %bb.le ]
  %.sroa.7298.0 = phi i64 [ 0, %.else ], [ %i.aag, %bb.le ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0291.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 %i.aai, ptr %i.ba, align 8
  store i64 %.sroa.5296.0, ptr %.sroa.0291.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.7298.0, ptr %.sroa.0291.sroa.6.0..sroa_idx, align 8
  store i64 %.sink12.i7.i350, ptr %.sroa.5293.0..sroa_idx, align 8
  %i.aat = icmp ugt i64 %.sroa.7298.0, 2
  %i.aau = load ptr, ptr %.sroa.0291.sroa.5.0..sroa_idx, align 8, !nonnull !8
  %..sroa.0291.sroa.4.0..sroa_idx = select i1 %i.aat, ptr %i.aau, ptr %.sroa.0291.sroa.4.0..sroa_idx
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit272

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit272: ; preds = %.lr.ph, %bb.lj
  %i.aav = phi i64 [ 0, %.lr.ph ], [ %i.aaw, %bb.lj ] ; 2 uses
  %i.aaw = add nuw i64 %i.aav, 1                  ; 3 uses
  store i64 %i.aaw, ptr %.sroa.4292.0..sroa_idx, align 8
  %i.aax = getelementptr inbounds nuw [24 x i8], ptr %..sroa.0291.sroa.4.0..sroa_idx, i64 %i.aav
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.aax, i64 24, i1 false)
  store i8 5, ptr %i.az, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_IBR_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB9_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB1u_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB2Z_EENtB7_17ConnectionHandler19on_connection_eventCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(4784) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.az)
          to label %bb.lj unwind label %bb.li

._crit_edge:                                      ; preds = %bb.lj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ba)
          to label %bb.lk unwind label %.loopexit

bb.li:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit272
  %i.aay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ba) #43
          to label %.body unwind label %bb.t

bb.lj:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.aaz = icmp eq i64 %i.aaw, %.sink12.i7.i350
  br i1 %i.aaz, label %._crit_edge, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsb4DWTO89qhm_13dcutr_example.exit272

bb.lk:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %.backedge.backedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsb4DWTO89qhm_13dcutr_example.exit: ; preds = %.noexc268, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsb4DWTO89qhm_13dcutr_example.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.az

bb.ll:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !4955)
  %i.aba = load i64, ptr %i.df, align 8, !range !7, !alias.scope !4955, !noalias !4956, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.aba, 2
  br i1 %.not.i.i.i, label %.noexc273, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.abb = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.abb)
          to label %.noexc273 unwind label %.thread.thread.a

.noexc273:                                        ; preds = %bb.lm, %bb.ll
  %i.abc = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4956
  %.not4.i.i.i = icmp eq i8 %i.abc, 0
  br i1 %.not4.i.i.i, label %bb.ln, label %.thread334

bb.ln:                                            ; preds = %.noexc273
  %i.abd = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.abe = load ptr, ptr %i.abd, align 8, !alias.scope !4955, !noalias !4956, !align !17, !noundef !8 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.abe, null
  br i1 %.not5.i.i.i, label %.thread334, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4957
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = load ptr, ptr %i.abf, align 8, !noalias !4956, !nonnull !8, !noundef !8
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 24
  %i.abi = load i64, ptr %i.abh, align 8, !noalias !4956, !noundef !8
  store ptr %i.abg, ptr %i.b, align 8, !noalias !4957, !captures !33
  %i.abj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.abi, ptr %i.abj, align 8, !noalias !4957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4957
  store ptr %i.b, ptr %i.a, align 8, !noalias !4957
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsb4DWTO89qhm_13dcutr_example, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !4957
  invoke fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 21, ptr noundef nonnull @29, ptr noundef nonnull %i.a) #44
          to label %.noexc274 unwind label %.thread.thread.a

.noexc274:                                        ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4957
  br label %.thread334

.thread:                                          ; preds = %bb.lq, %.thread.thread.a, %.body
  %.sroa.0115.3 = phi i8 [ %.sroa.0113.2, %.thread.thread.a ], [ %.sroa.0115.0, %bb.lq ], [ %.sroa.0115.0, %.body ]
  %.pn203 = phi { ptr, i32 } [ %i.abl, %.thread.thread.a ], [ %.pn201, %bb.lq ], [ %.pn201, %.body ] ; 2 uses
  %i.abk = trunc nuw i8 %.sroa.0115.3 to i1
  br i1 %i.abk, label %bb.lr, label %.thread.thread339

.thread.thread.a:                                 ; preds = %bb.lo, %bb.lm
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.lp:                                            ; preds = %bb.az, %.thread334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  ret void

.thread334:                                       ; preds = %.noexc273, %bb.ln, %.noexc274
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.df)
  br label %bb.lp

.thread326:                                       ; preds = %bb.kx, %.thread330
  %eh.lpad-body262329 = phi { ptr, i32 } [ %i.aae, %.thread330 ], [ %i.zy, %bb.kx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bd) #43
          to label %.body unwind label %bb.t

bb.lq:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span7EnteredECsb4DWTO89qhm_13dcutr_example(ptr nonnull %i.df) #43
          to label %.thread unwind label %bb.t

.thread.thread339:                                ; preds = %bb.l, %bb.lr, %.thread
  %.pn203337 = phi { ptr, i32 } [ %.pn203, %.thread ], [ %.pn203, %bb.lr ], [ %i.if, %bb.l ]
  resume { ptr, i32 } %.pn203337

bb.lr:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.df) #43
          to label %.thread.thread339 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectIB14_IB14_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB7_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB22_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB3x_EEE5closeCsb4DWTO89qhm_13dcutr_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([4800 x i8]) align 8 captures(none) dereferenceable(4800) initializes((0, 4800)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(5048) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4784) %0, ptr noundef nonnull align 8 dereferenceable(4784) %1, i64 4784, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4840
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.c = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4856 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB2q_EINtNtNtB9_6future6either6EitherIB38_IB38_IB38_NtNtB1u_6stream6StreamzEB3R_EIB38_B3R_B3R_EEIB38_B3M_zEEIB2r_IB2r_IB2r_IB2r_zzEzEB50_EB4V_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5017)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !5018, !nonnull !8, !noundef !8
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !5019
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %.body

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB3j_EINtNtNtBP_6future6either6EitherIB41_IB41_IB41_NtNtB2n_6stream6StreamzEB4K_EIB41_B4K_B4K_EEIB41_B4F_zEEIB3k_IB3k_IB3k_IB3k_zzEzEB5T_EB5O_EEEE9drop_slowCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #41
          to label %.body unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5021)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !5022, !nonnull !8, !noundef !8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !5023
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB2T_EINtNtNtBI_6future6either6EitherIB3B_IB3B_IB3B_NtNtB1X_6stream6StreamzEB4k_EIB3B_B4k_B4k_EEIB3B_B4f_zEEIB2U_IB2U_IB2U_IB2U_zzEzEB5t_EB5o_EEEECsb4DWTO89qhm_13dcutr_example.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB3j_EINtNtNtBP_6future6either6EitherIB41_IB41_IB41_NtNtB2n_6stream6StreamzEB4K_EIB41_B4K_B4K_EEIB41_B4F_zEEIB3k_IB3k_IB3k_IB3k_zzEzEB5T_EB5O_EEEE9drop_slowCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #41
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB2T_EINtNtNtBI_6future6either6EitherIB3B_IB3B_IB3B_NtNtB1X_6stream6StreamzEB4k_EIB3B_B4k_B4k_EEIB3B_B4f_zEEIB2U_IB2U_IB2U_IB2U_zzEzEB5t_EB5o_EEEECsb4DWTO89qhm_13dcutr_example.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4880
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_IB2R_uuEuEuEB3v_EINtNtNtBI_6future6either6EitherIB3N_IB3N_IB3N_NtNtB1X_6stream6StreamzEB4w_EIB3N_B4w_B4w_EEB4r_EIB2R_IB2R_IB2R_IB2R_zzEzEB5y_EB5y_EEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #43
          to label %.body13 unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB2T_EINtNtNtBI_6future6either6EitherIB3B_IB3B_IB3B_NtNtB1X_6stream6StreamzEB4k_EIB3B_B4k_B4k_EEIB3B_B4f_zEEIB2U_IB2U_IB2U_IB2U_zzEzEB5t_EB5o_EEEECsb4DWTO89qhm_13dcutr_example.exit: ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4880 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2o_IB2o_IB2o_uuEuEuEB32_EINtNtNtB9_6future6either6EitherIB3k_IB3k_IB3k_NtNtB1u_6stream6StreamzEB43_EIB3k_B43_B43_EEB3Y_EIB2o_IB2o_IB2o_IB2o_zzEzEB55_EB55_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB2T_EINtNtNtBI_6future6either6EitherIB3B_IB3B_IB3B_NtNtB1X_6stream6StreamzEB4k_EIB3B_B4k_B4k_EEIB3B_B4f_zEEIB2U_IB2U_IB2U_IB2U_zzEzEB5t_EB5o_EEEECsb4DWTO89qhm_13dcutr_example.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5025)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !5026, !nonnull !8, !noundef !8
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !5027
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %.body13

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB3h_IB3h_IB3h_uuEuEuEB3V_EINtNtNtBP_6future6either6EitherIB4d_IB4d_IB4d_NtNtB2n_6stream6StreamzEB4W_EIB4d_B4W_B4W_EEB4R_EIB3h_IB3h_IB3h_IB3h_zzEzEB5Y_EB5Y_EEEE9drop_slowCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #41
          to label %.body13 unwind label %bb.l

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTTTINtCscu2bAJ62uie_6either6EitheruuEuEuEB2T_EINtNtNtBI_6future6either6EitherIB3B_IB3B_IB3B_NtNtB1X_6stream6StreamzEB4k_EIB3B_B4k_B4k_EEIB3B_B4f_zEEIB2U_IB2U_IB2U_IB2U_zzEzEB5t_EB5o_EEEECsb4DWTO89qhm_13dcutr_example.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5029)
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !5030, !nonnull !8, !noundef !8
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !5031
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_IB2R_uuEuEuEB3v_EINtNtNtBI_6future6either6EitherIB3N_IB3N_IB3N_NtNtB1X_6stream6StreamzEB4w_EIB3N_B4w_B4w_EEB4r_EIB2R_IB2R_IB2R_IB2R_zzEzEB5y_EB5y_EEEECsb4DWTO89qhm_13dcutr_example.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB3h_IB3h_IB3h_uuEuEuEB3V_EINtNtNtBP_6future6either6EitherIB4d_IB4d_IB4d_NtNtB2n_6stream6StreamzEB4W_EIB4d_B4W_B4W_EEB4R_EIB3h_IB3h_IB3h_IB3h_zzEzEB5Y_EB5Y_EEEE9drop_slowCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #41
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_IB2R_uuEuEuEB3v_EINtNtNtBI_6future6either6EitherIB3N_IB3N_IB3N_NtNtB1X_6stream6StreamzEB4w_EIB3N_B4w_B4w_EEB4r_EIB2R_IB2R_IB2R_IB2R_zzEzEB5y_EB5y_EEEECsb4DWTO89qhm_13dcutr_example.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

.body13:                                          ; preds = %bb.m, %bb.i, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.m ], [ %i.p, %bb.i ], [ %i.p, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4784
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(16) %i.x) #43
          to label %.body16 unwind label %bb.ak

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_IB2R_uuEuEuEB3v_EINtNtNtBI_6future6either6EitherIB3N_IB3N_IB3N_NtNtB1X_6stream6StreamzEB4w_EIB3N_B4w_B4w_EEB4r_EIB2R_IB2R_IB2R_IB2R_zzEzEB5y_EB5y_EEEECsb4DWTO89qhm_13dcutr_example.exit: ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4784
  %i.aa = load i64, ptr %i.z, align 8, !range !7, !alias.scope !5032, !noundef !8
  %switch.i = icmp samesign ult i64 %i.aa, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsb4DWTO89qhm_13dcutr_example.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_IB2R_uuEuEuEB3v_EINtNtNtBI_6future6either6EitherIB3N_IB3N_IB3N_NtNtB1X_6stream6StreamzEB4w_EIB3N_B4w_B4w_EEB4r_EIB2R_IB2R_IB2R_IB2R_zzEzEB5y_EB5y_EEEECsb4DWTO89qhm_13dcutr_example.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4792 ; 5 uses
  invoke void @_RNvXs0_NtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB5_5DelayNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5033)
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !5034, !noundef !8 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.body16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !5035
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.q, label %.body16

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #41
          to label %.body16 unwind label %bb.u

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5036)
  %i.ah = load ptr, ptr %i.ab, align 8, !alias.scope !5037, !noundef !8 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsb4DWTO89qhm_13dcutr_example.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !5038
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsb4DWTO89qhm_13dcutr_example.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #41
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsb4DWTO89qhm_13dcutr_example.exit unwind label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

.body16:                                          ; preds = %bb.v, %bb.q, %bb.p, %bb.o, %.body13
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body13 ], [ %i.an, %bb.v ], [ %i.ac, %bb.q ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4904
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2W_IB2W_IB2W_uuEuEuEB3A_EIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_IB3X_IB2W_IB3X_IB2W_IB3X_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEEIB3X_NtNtB4Z_6denied13DeniedUpgradeEEEB4P_EEIB3X_IB2W_B4U_B4U_EEEEB4F_EEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #43
          to label %.body19 unwind label %bb.ak

bb.v:                                             ; preds = %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsb4DWTO89qhm_13dcutr_example.exit: ; preds = %bb.s, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitherIB2R_IB2R_IB2R_uuEuEuEB3v_EINtNtNtBI_6future6either6EitherIB3N_IB3N_IB3N_NtNtB1X_6stream6StreamzEB4w_EIB3N_B4w_B4w_EEB4r_EIB2R_IB2R_IB2R_IB2R_zzEzEB5y_EB5y_EEEECsb4DWTO89qhm_13dcutr_example.exit, %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4904 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_IB2t_uuEuEuEB37_EIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_IB3u_IB2t_IB3u_IB2t_IB3u_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEEIB3u_NtNtB4w_6denied13DeniedUpgradeEEEB4m_EEIB3u_IB2t_B4r_B4r_EEEEB4c_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsb4DWTO89qhm_13dcutr_example.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5040)
  %i.aq = load ptr, ptr %i.ao, align 8, !alias.scope !5041, !nonnull !8, !noundef !8
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !5042
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.x, label %.body19

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB3m_IB3m_IB3m_uuEuEuEB40_EIB3m_INtNtB2n_7upgrade11SendWrapperIB3m_IB4n_IB3m_IB4n_IB3m_IB4n_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB2n_15stream_protocol14StreamProtocolEEIB4n_NtNtB5p_6denied13DeniedUpgradeEEEB5f_EEIB4n_IB3m_B5k_B5k_EEEEB55_EEEE9drop_slowCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao) #41
          to label %.body19 unwind label %bb.aa

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsb4DWTO89qhm_13dcutr_example.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5044)
  %i.at = load ptr, ptr %i.ao, align 8, !alias.scope !5045, !nonnull !8, !noundef !8
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !5046
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2W_IB2W_IB2W_uuEuEuEB3A_EIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_IB3X_IB2W_IB3X_IB2W_IB3X_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEEIB3X_NtNtB4Z_6denied13DeniedUpgradeEEEB4P_EEIB3X_IB2W_B4U_B4U_EEEEB4F_EEEECsb4DWTO89qhm_13dcutr_example.exit
end_hunk_2
