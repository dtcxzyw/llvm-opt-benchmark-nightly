Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/metrics_example.metrics_example.daac9157df9ac627-cgu.07?download=true
inline.NumInlined: 1522
inline.NumDeleted: 765
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE3newCsiLZOIpitoQl_15metrics_example:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 3728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i64 %6, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i32 %7, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3952
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

bb.ak:                                            ; preds = %bb.ap, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsiLZOIpitoQl_15metrics_example.exit, %bb.an, %bb.ar, %.thread, %.thread35, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_NtNtB1A_15stream_protocol14StreamProtocolB31_EB31_EEbEECsiLZOIpitoQl_15metrics_example.exit, %bb.ai, %bb.ad, %bb.aa, %bb.x
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.al:                                            ; preds = %bb.ai
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsiLZOIpitoQl_15metrics_example.exit unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_NtNtB1A_15stream_protocol14StreamProtocolB31_EB31_EEbEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsiLZOIpitoQl_15metrics_example.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEB47_EEIB3z_B47_EEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #35
          to label %bb.ad unwind label %bb.ak

bb.am:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBI_6future6either6EitherIB3p_NtNtB1X_6stream6StreamB3Y_EB3Y_EIB2R_IB2R_zzEzEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #35
          to label %bb.aa unwind label %bb.ak

bb.an:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxECsiLZOIpitoQl_15metrics_example(ptr nonnull %1, ptr nonnull %2) #35
          to label %bb.m unwind label %bb.ak

bb.ao:                                            ; preds = %.thread35, %bb.m
  %.sroa.01.044 = phi i1 [ %.sroa.01.045, %.thread35 ], [ %.sroa.01.1, %bb.m ]
  %.sroa.02.142 = phi i8 [ %.sroa.02.143, %.thread35 ], [ 0, %bb.m ]
  %.pn.pn.pn.pn.pn40 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn41, %.thread35 ], [ %.pn.pn.pn.pn, %bb.m ] ; 2 uses
  br i1 %.sroa.01.044, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_NtNtB1A_15stream_protocol14StreamProtocolB31_EB31_EEbEECsiLZOIpitoQl_15metrics_example.exit25

.thread35:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsiLZOIpitoQl_15metrics_example.exit8.i.i, %bb.r, %bb.n, %bb.m
  %.sroa.01.045 = phi i1 [ %.sroa.01.1, %bb.m ], [ true, %bb.n ], [ true, %bb.r ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsiLZOIpitoQl_15metrics_example.exit8.i.i ]
  %.sroa.02.143 = phi i8 [ 0, %bb.m ], [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsiLZOIpitoQl_15metrics_example.exit8.i.i ]
  %.pn.pn.pn.pn.pn41 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.m ], [ %i.ah, %bb.n ], [ %i.au, %bb.r ], [ %i.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsiLZOIpitoQl_15metrics_example.exit8.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #35
          to label %bb.ao unwind label %bb.ak

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1M_NtNtBU_15stream_protocol14StreamProtocolB2l_EB2l_EEbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_NtNtB1A_15stream_protocol14StreamProtocolB31_EB31_EEbEECsiLZOIpitoQl_15metrics_example.exit25 unwind label %bb.ak

.thread:                                          ; preds = %.body.i, %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_NtNtB1A_15stream_protocol14StreamProtocolB31_EB31_EEbEECsiLZOIpitoQl_15metrics_example.exit25
  %.pn.pn.pn.pn.pn.pn32 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn40, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_NtNtB1A_15stream_protocol14StreamProtocolB31_EB31_EEbEECsiLZOIpitoQl_15metrics_example.exit25 ], [ %i.ab, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(3712) %3) #35
          to label %bb.ar unwind label %bb.ak

bb.aq:                                            ; preds = %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_NtNtB1A_15stream_protocol14StreamProtocolB31_EB31_EEbEECsiLZOIpitoQl_15metrics_example.exit25
  %.pn.pn.pn.pn.pn.pn33 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn32, %bb.ar ], [ %.pn.pn.pn.pn.pn40, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB2s_NtNtB1A_15stream_protocol14StreamProtocolB31_EB31_EEbEECsiLZOIpitoQl_15metrics_example.exit25 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn33

bb.ar:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxECsiLZOIpitoQl_15metrics_example(ptr nonnull %1, ptr nonnull %2) #35
          to label %bb.aq unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE4pollCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([608 x i8]) align 8 captures(none) dereferenceable(608) %0, ptr noalias nofree noundef align 8 dereferenceable(3976) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [104 x i8], align 8               ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [840 x i8], align 8               ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [104 x i8], align 8               ; 5 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [336 x i8], align 8               ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 4 uses
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
  %i.az = alloca [152 x i8], align 8              ; 5 uses
  %i.ba = alloca [80 x i8], align 8               ; 10 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
  %i.bb = alloca [88 x i8], align 8               ; 6 uses
  %i.bc = alloca [104 x i8], align 8              ; 5 uses
  %i.bd = alloca [64 x i8], align 8               ; 10 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [88 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [39 x i8], align 1            ; 3 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [16 x i8], align 8               ; 7 uses
  %i.bl = alloca [152 x i8], align 8              ; 5 uses
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
  %i.cm = alloca [152 x i8], align 8              ; 5 uses
  %i.cn = alloca [144 x i8], align 8              ; 8 uses
  %i.co = alloca [152 x i8], align 8              ; 7 uses
  %i.cp = alloca [152 x i8], align 8              ; 5 uses
  %i.cq = alloca [152 x i8], align 8              ; 9 uses
  %i.cr = alloca [152 x i8], align 8              ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [48 x i8], align 8               ; 4 uses
  %i.cu = alloca [40 x i8], align 8               ; 4 uses
  %i.cv = alloca [152 x i8], align 8              ; 5 uses
  %i.cw = alloca [24 x i8], align 8               ; 5 uses
  %i.cx = alloca [48 x i8], align 8               ; 4 uses
  %i.cy = alloca [64 x i8], align 8               ; 7 uses
  %i.cz = alloca [608 x i8], align 8              ; 12 uses
  %i.da = alloca [152 x i8], align 8              ; 6 uses
  %i.db = alloca [32 x i8], align 8               ; 7 uses
  %i.dc = alloca [40 x i8], align 8               ; 7 uses
  %i.dd = alloca [32 x i8], align 8               ; 7 uses
  %i.de = alloca [40 x i8], align 8               ; 5 uses
  %i.df = alloca [40 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %i.dg = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dh = icmp ult i64 %i.dg, 2
  br i1 %i.dh, label %bb.d, label %bb.c

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ka, %bb.jy, %.body249, %.noexc10.i, %.body.i236, %.critedge45.i, %.body.i, %bb.fg, %bb.ad, %.body231.thread, %bb.if, %bb.cx, %bb.ki, %.body225, %.body220
  %.sroa.0104.0 = phi i8 [ %.sroa.0102.2, %bb.cx ], [ %.sroa.0102.2, %bb.ki ], [ %.sroa.0104.1.ph, %.loopexit.split-lp ], [ %.sroa.0102.2, %.noexc10.i ], [ %.sroa.0102.2, %bb.if ], [ %.sroa.0102.2, %.body.i236 ], [ %.sroa.0102.2, %.body231.thread ], [ %.sroa.0102.2, %.body249 ], [ %.sroa.0102.2, %bb.ad ], [ %.sroa.0102.2, %.body225 ], [ %.sroa.0102.2, %.body220 ], [ %.sroa.0102.2, %bb.ka ], [ %.sroa.0102.2, %bb.jy ], [ %.sroa.0102.2, %.critedge45.i ], [ %.sroa.0102.2, %bb.fg ], [ %.sroa.0102.2, %.body.i ], [ %.sroa.0102.2, %.loopexit ] ; 2 uses
  %.sroa.0102.0 = phi i8 [ %.sroa.0102.2, %bb.cx ], [ %.sroa.0102.2, %bb.ki ], [ %.sroa.0102.1.ph, %.loopexit.split-lp ], [ %.sroa.0102.2, %.noexc10.i ], [ %.sroa.0102.2, %bb.if ], [ %.sroa.0102.2, %.body.i236 ], [ %.sroa.0102.2, %.body231.thread ], [ %.sroa.0102.2, %.body249 ], [ %.sroa.0102.2, %bb.ad ], [ %.sroa.0102.2, %.body225 ], [ %.sroa.0102.2, %.body220 ], [ %.sroa.0102.2, %bb.ka ], [ %.sroa.0102.2, %bb.jy ], [ %.sroa.0102.2, %.critedge45.i ], [ %.sroa.0102.2, %bb.fg ], [ %.sroa.0102.2, %.body.i ], [ %.sroa.0102.2, %.loopexit ]
  %.pn190 = phi { ptr, i32 } [ %i.mp, %bb.cx ], [ %i.yz, %bb.ki ], [ %lpad.loopexit.split-lp332, %.loopexit.split-lp ], [ %.pn.pn.ph.i, %.noexc10.i ], [ %i.up, %bb.if ], [ %i.uj, %.body.i236 ], [ %eh.lpad-body232294, %.body231.thread ], [ %eh.lpad-body250, %.body249 ], [ %i.ir, %bb.ad ], [ %eh.lpad-body226, %.body225 ], [ %eh.lpad-body221, %.body220 ], [ %i.yl, %bb.ka ], [ %i.ye, %bb.jy ], [ %i.th, %.critedge45.i ], [ %i.qi, %bb.fg ], [ %i.te, %.body.i ], [ %lpad.loopexit331, %.loopexit ] ; 2 uses
  %i.di = trunc nuw i8 %.sroa.0102.0 to i1
  br i1 %i.di, label %bb.kj, label %.thread

.loopexit:                                        ; preds = %._crit_edge, %bb.dk, %bb.co, %.noexc210, %bb.cn, %bb.cl, %bb.bv, %.noexc205, %bb.bu, %bb.bs, %bb.cu, %bb.cs, %bb.cr, %bb.ci, %bb.ch, %bb.cb, %bb.bz, %bb.by, %bb.bp, %bb.bo, %bb.bj, %bb.hc, %bb.id, %.backedge, %bb.w, %bb.x, %bb.aa, %bb.ak, %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.as, %bb.aw, %bb.bb, %bb.bc, %bb.bd, %bb.eg, %bb.ei, %bb.ek, %bb.el, %bb.ey, %bb.fj, %bb.fl, %bb.fm, %bb.hf, %bb.hg
  %lpad.loopexit331 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.s, %bb.f, %bb.g, %bb.j, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsiLZOIpitoQl_15metrics_example.exit.i.i
  %.sroa.0104.1.ph = phi i8 [ 1, %bb.q ], [ 1, %bb.s ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ], [ %.sroa.0102.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsiLZOIpitoQl_15metrics_example.exit.i.i ]
  %.sroa.0102.1.ph = phi i8 [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ], [ %.sroa.0102.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsiLZOIpitoQl_15metrics_example.exit.i.i ]
  %lpad.loopexit.split-lp332 = landingpad { ptr, i32 }
          cleanup
  br label %.body

default.unreachable539:                           ; preds = %bb.di, %bb.bi
  unreachable

default.unreachable:                              ; preds = %thread-pre-split
  unreachable

bb.b:                                             ; preds = %bb.ab
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.dj = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.dj, 0
  br i1 %.not, label %bb.d, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %.noexc194, %bb.r, %.noexc195, %bb.c
  %3 = phi i1 [ false, %bb.c ], [ true, %.noexc195 ], [ true, %bb.r ], [ true, %.noexc194 ]
  %.sroa.0102.2 = phi i8 [ 0, %bb.c ], [ 1, %.noexc195 ], [ 1, %bb.r ], [ 1, %.noexc194 ] ; 35 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3832 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3768 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 3808 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 3784 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 3856 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 3904 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 3728 ; 5 uses
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
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.038.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.048.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.048.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.058.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.058.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 3792
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 3816
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 3840 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 3952 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 3712 ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 3720 ; 13 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 3752
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 3760
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.6.16..sroa_idx269 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 3968
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.012.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.012.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ga = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.gb = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.gc = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.ge = getelementptr inbounds nuw i8, ptr %i.w, i64 105
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 3960
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.gn = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.go = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.gp = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.gq = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.gr = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.gs = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 3736 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 3744 ; 4 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %.sroa.7.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ha = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 3880
  %i.hd = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.sroa.0272.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %.sroa.0272.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.sroa.0272.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.hg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  %i.hi = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  br label %.backedge

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %i.hj = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.hk = icmp ult i64 %i.hj, 2
  br i1 %i.hk, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.hl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.hl, label %bb.f [
    i8 0, label %bb.m
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !3316

bb.f:                                             ; preds = %bb.e
  %i.hm = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE)
          to label %bb.h unwind label %.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.h
  %.sroa.011.0 = phi i8 [ %i.hm, %bb.h ], [ %i.hl, %bb.e ], [ %i.hl, %bb.e ]
  %i.hn = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, align 8, !nonnull !7, !align !8, !noundef !7
  %i.ho = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hn, i8 noundef %.sroa.011.0)
          to label %bb.i unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %.not176 = icmp eq i8 %i.hm, 0
  br i1 %.not176, label %bb.m, label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.ho, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.hp = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, align 8, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  store i64 1, ptr %i.dd, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4115.0..sroa_idx, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 0, ptr %.sroa.5116.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE4pollCsiLZOIpitoQl_15metrics_example:bb.a
          to label %.noexc195 unwind label %.loopexit.split-lp

.noexc195:                                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3317
  br label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

bb.t:                                             ; preds = %.body249, %bb.fg, %bb.kj, %.body231.thread, %bb.if, %bb.cx, %bb.kk, %bb.ki, %bb.ka, %bb.l
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.u:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.p

.backedge:                                        ; preds = %.backedge.backedge, %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit
  %i.ik = invoke noundef i8 @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEB3E_EEIB36_B3E_EEEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.v unwind label %.loopexit  ; 2 uses

bb.v:                                             ; preds = %.backedge
  switch i8 %i.ik, label %bb.x [
    i8 -2, label %bb.w
    i8 -1, label %bb.w
    i8 2, label %.backedge.backedge
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler4pollCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(none) dereferenceable(608) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(3712) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %.loopexit

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  store i64 0, ptr %i.hi, align 8
  store i8 %i.ik, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 6, ptr %i.da, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(3712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %i.da)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.y, %bb.v, %bb.am, %bb.bf, %bb.ce, %bb.hd, %bb.ie, %bb.kc
  br label %.backedge

bb.z:                                             ; preds = %bb.w
  %i.il = load i64, ptr %i.cz, align 8, !range !3318, !noundef !7 ; 3 uses
  %i.im = icmp eq i64 %i.il, -2
  br i1 %i.im, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  invoke void @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtB9_6future6either6EitherIB2W_NtNtB1u_6stream6StreamB3v_EB3v_EIB2o_IB2o_zzEzEEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.cq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ba unwind label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.in = add nsw i64 %i.il, -4
  %i.io = icmp sgt i64 %i.il, 3
  %i.ip = select i1 %i.io, i64 %i.in, i64 2
  switch i64 %i.ip, label %bb.b [
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
  call void @llvm.experimental.noalias.scope.decl(metadata !3319)
  %i.iq = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.ae unwind label %bb.ad, !noalias !3320 ; 2 uses

bb.ad:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBC_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1b_15stream_protocol14StreamProtocolEB22_EEIB17_B22_EEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ay) #35
          to label %.body unwind label %bb.ah, !noalias !3319

bb.ae:                                            ; preds = %bb.ac
  %i.is = extractvalue { i64, i32 } %i.iq, 0
  %i.it = extractvalue { i64, i32 } %i.iq, 1
  %i.iu = invoke { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %i.is, i32 noundef %i.it, i64 noundef %.sroa.419.0.copyload, i32 noundef range(i32 0, 1000000000) %.sroa.520.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %bb.af unwind label %bb.ad, !noalias !3320 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.iv = invoke noundef nonnull ptr @_RNvXs4_NtNtCs5GOyS9hQAaF_13futures_timer6native5timerNtB5_11TimerHandleNtNtCskKLDkoKarTP_4core7default7Default7default()
          to label %bb.ag unwind label %bb.ad, !noalias !3320

bb.ag:                                            ; preds = %bb.af
  %i.iw = extractvalue { i64, i32 } %i.iu, 1
  %i.ix = extractvalue { i64, i32 } %i.iu, 0
  %i.iy = invoke noundef ptr @_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay10new_handle(i64 noundef %i.ix, i32 noundef %i.iw, ptr noundef nonnull %i.iv)
          to label %bb.ak unwind label %bb.ad, !noalias !3320

bb.ah:                                            ; preds = %bb.ad
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3319
  unreachable

bb.ai:                                            ; preds = %bb.ab
  %i.ja = load i64, ptr %i.dr, align 8, !range !13, !noundef !7
  %i.jb = trunc nuw i64 %i.ja to i1
  br i1 %i.jb, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(608) %i.cz, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.az

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 32, i1 false)
  store i8 %.sroa.622.0.copyload, ptr %i.dv, align 8, !alias.scope !3319
  store ptr %i.iy, ptr %i.dw, align 8, !alias.scope !3319
  store ptr null, ptr %i.dx, align 8, !alias.scope !3319
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEB3E_EEIB36_B3E_EEEE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.cy)
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
  %i.jc = load i64, ptr %i.cw, align 8, !range !16, !noundef !7
  %.not180 = icmp eq i64 %i.jc, 2
  br i1 %.not180, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  store i64 9, ptr %i.cv, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(3712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %i.cv)
          to label %bb.ar unwind label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cu, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %bb.as unwind label %.loopexit

bb.as:                                            ; preds = %bb.ar
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBO_EECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cu)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.am

bb.av:                                            ; preds = %bb.an
  %i.jd = load i64, ptr %i.cs, align 8, !range !16, !noundef !7
  %.not181 = icmp eq i64 %i.jd, 2
  br i1 %.not181, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  store i64 9, ptr %i.cr, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(3712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %i.cr)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.am

bb.az:                                            ; preds = %bb.fe, %bb.fh, %bb.ex, %bb.fa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsiLZOIpitoQl_15metrics_example.exit, %bb.hk, %bb.fq, %bb.aj
  br i1 %3, label %bb.kd, label %bb.kh

bb.ba:                                            ; preds = %bb.aa
  %i.je = load i64, ptr %i.dy, align 8, !range !3321, !noundef !7
  switch i64 %i.je, label %bb.bd [
    i64 -3, label %bb.bb
    i64 -2, label %bb.bb
    i64 -1, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  invoke void @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtB9_6future6either6EitherIB2s_NtNtB1u_6stream6StreamB31_EB31_EINtCscu2bAJ62uie_6either6EitherIB3y_zzEzEEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.cn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bh unwind label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.jf = load i8, ptr %i.cq, align 8, !range !15, !noundef !7
  %i.jg = load i64, ptr %i.dz, align 8, !range !22, !noundef !7
  %i.jh = load ptr, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store i64 %i.jg, ptr %i.eb, align 8
  store ptr %i.jh, ptr %.sroa.427.0..sroa_idx, align 8
  store i8 %i.jf, ptr %.sroa.528.0..sroa_idx, align 8
  store i64 6, ptr %i.co, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(3712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %i.co)
          to label %bb.bg unwind label %.loopexit

bb.bd:                                            ; preds = %bb.ba
  %i.ji = load i8, ptr %i.cq, align 8, !range !15, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.cp, ptr noundef nonnull align 8 dereferenceable(144) %i.dy, i64 144, i1 false)
  store i8 %i.ji, ptr %.sroa.424.0..sroa_idx, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(3712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %i.cp)
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
  %i.jj = load i64, ptr %i.cn, align 8, !range !3321, !noundef !7
  switch i64 %i.jj, label %bb.bj [
    i64 -3, label %bb.du
    i64 -2, label %bb.du
    i64 -1, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.jk = load i64, ptr %i.ec, align 8, !range !22, !noundef !7
  switch i64 %i.jk, label %default.unreachable539 [
    i64 0, label %bb.bm
    i64 1, label %bb.bl
    i64 2, label %bb.cf
    i64 3, label %bb.cy
  ]

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.hh, ptr noundef nonnull align 8 dereferenceable(144) %i.cn, i64 144, i1 false)
  store i64 3, ptr %i.cm, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(3712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %i.cm)
          to label %bb.bk unwind label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.ce

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

bb.bm:                                            ; preds = %bb.bi
  %i.jl = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.jm = icmp ult i64 %i.jl, 2
  br i1 %i.jm, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.jn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.jn, label %bb.bo [
    i8 0, label %bb.bw
    i8 1, label %bb.bp
    i8 2, label %bb.bp
  ], !prof !3316

bb.bo:                                            ; preds = %bb.bn
  %i.jo = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE)
          to label %bb.bq unwind label %.loopexit ; 2 uses

bb.bp:                                            ; preds = %bb.bn, %bb.bn, %bb.bq
  %.sroa.056.0 = phi i8 [ %i.jo, %bb.bq ], [ %i.jn, %bb.bn ], [ %i.jn, %bb.bn ]
  %i.jp = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !7, !align !8, !noundef !7
  %i.jq = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jp, i8 noundef %.sroa.056.0)
          to label %bb.br unwind label %.loopexit

bb.bq:                                            ; preds = %bb.bo
  %i.jr = icmp eq i8 %i.jo, 0
  br i1 %i.jr, label %bb.bw, label %bb.bp

bb.br:                                            ; preds = %bb.bp
  br i1 %i.jq, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.js = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store <2 x ptr> <ptr @113, ptr inttoptr (i64 65 to ptr)>, ptr %i.bs, align 16
  store ptr %i.bs, ptr %i.bt, align 8
  store ptr @9, ptr %i.ev, align 8
  store i64 1, ptr %i.bu, align 8
  store ptr %i.bt, ptr %.sroa.058.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.058.sroa.5.0..sroa_idx, align 8
  store ptr %i.jt, ptr %.sroa.459.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.js, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc204 unwind label %.loopexit

.noexc204:                                        ; preds = %bb.bs
  %i.ju = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3322
  %.not.i203 = icmp eq i8 %i.ju, 0
  br i1 %.not.i203, label %bb.bt, label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE4polls0_0CsiLZOIpitoQl_15metrics_example.exit

bb.bt:                                            ; preds = %.noexc204
  %i.jv = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3322 ; 2 uses
  %i.jw = icmp ult i64 %i.jv, 6
  call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp samesign ugt i64 %i.jv, 3
  br i1 %i.jx, label %bb.bu, label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE4polls0_0CsiLZOIpitoQl_15metrics_example.exit

bb.bu:                                            ; preds = %bb.bt
  %i.jy = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !noalias !3322, !nonnull !7, !align !8, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3322
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !nonnull !7, !noundef !7
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.kc = load i64, ptr %i.kb, align 8, !noundef !7
  store i64 4, ptr %i.as, align 8, !noalias !3322
  store ptr %i.ka, ptr %i.ew, align 8, !noalias !3322
  store i64 %i.kc, ptr %i.ex, align 8, !noalias !3322
  %i.kd = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc205 unwind label %.loopexit ; 2 uses

.noexc205:                                        ; preds = %bb.bu
  %i.ke = extractvalue { ptr, ptr } %i.kd, 0      ; 2 uses
  %i.kf = extractvalue { ptr, ptr } %i.kd, 1      ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !invariant.load !7, !nonnull !7
  %i.ki = invoke noundef zeroext i1 %i.kh(ptr noundef %i.ke, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as) #41
          to label %.noexc206 unwind label %.loopexit, !inline_history !3159

.noexc206:                                        ; preds = %.noexc205
  br i1 %i.ki, label %bb.bv, label %.noexc207

bb.bv:                                            ; preds = %.noexc206
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jy, ptr noundef nonnull %i.ke, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc207 unwind label %.loopexit

.noexc207:                                        ; preds = %bb.bv, %.noexc206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3322
  br label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE4polls0_0CsiLZOIpitoQl_15metrics_example.exit

_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionINtNtNtB9_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE4polls0_0CsiLZOIpitoQl_15metrics_example.exit: ; preds = %.noexc207, %bb.bt, %.noexc204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.ce

bb.bw:                                            ; preds = %bb.bq, %bb.bn, %bb.bm, %bb.br
  %i.kj = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not186 = icmp eq i8 %i.kj, 0
  br i1 %.not186, label %bb.bx, label %bb.ce

bb.bx:                                            ; preds = %bb.bw
  %i.kk = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 6
  call void @llvm.assume(i1 %i.kl)
  %i.km = icmp samesign ugt i64 %i.kk, 3
  br i1 %i.km, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.kn = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !7, !align !8, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8, !nonnull !7, !noundef !7
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kr = load i64, ptr %i.kq, align 8, !noundef !7
  store i64 4, ptr %i.br, align 8
  store ptr %i.kp, ptr %i.ey, align 8
  store i64 %i.kr, ptr %i.ez, align 8
  %i.ks = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.bz unwind label %.loopexit ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE4pollCsiLZOIpitoQl_15metrics_example:bb.a
  %i.xm = load i64, ptr %.sroa.4.0..sroa_idx32.i, align 8, !range !13, !alias.scope !3410, !noalias !3387, !noundef !7
  %i.xn = icmp eq i64 %i.xm, 0
  br i1 %i.xn, label %.body28.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.experimental.noalias.scope.decl(metadata !3411), !noalias !3387
  call void @llvm.experimental.noalias.scope.decl(metadata !3412), !noalias !3387
  %i.xo = load ptr, ptr %.sroa.6.0..sroa_idx34.i, align 8, !alias.scope !3413, !noalias !3387, !nonnull !7, !noundef !7
  %i.xp = atomicrmw add ptr %i.xo, i64 -1 release, align 8, !noalias !3414
  %i.xq = icmp eq i64 %i.xp, 1
  br i1 %i.xq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB16_EECsiLZOIpitoQl_15metrics_example.exit.sink.split.i.i.i.i, label %.body28.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB16_EECsiLZOIpitoQl_15metrics_example.exit.sink.split.i.i.i.i: ; preds = %bb.ju, %bb.js, %bb.jq
  fence acquire, !noalias !3387
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx34.i) #39
          to label %.body28.i unwind label %bb.jv

bb.jv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB16_EECsiLZOIpitoQl_15metrics_example.exit.sink.split.i.i.i.i
  %i.xr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3387
  unreachable

_RINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_5EntryINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1Z_NtNtB17_15stream_protocol14StreamProtocolB2y_EB2y_EEbE22or_try_insert_with_keyNCINvB2_18or_insert_with_keyNCINvMs0_NtB17_7handlerNtB4p_15ProtocolsChange14from_full_setsB1Y_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB5p_3map3MapIB5l_IB6d_INtNtNtB5r_7sources4once4OnceB2y_EFB2y_EB2t_EB6y_EFB2t_EB1Y_EIB6d_B6D_FB2y_EB1Y_EEEs_0E0zECsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %.noexc27.i, %bb.jm
  %i.xs = add i64 %.sroa.01.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3377
  br label %bb.it

.thread57.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsiLZOIpitoQl_15metrics_example.exit8.i.i, %.loopexit.split-lp72.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ik
  %eh.lpad-body60.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp684, %.loopexit.split-lp72.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.vc, %bb.ik ], [ %i.vc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsiLZOIpitoQl_15metrics_example.exit8.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapIBC_IB1e_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB24_EINtCscu2bAJ62uie_6either6EitherB24_B24_EEB1x_EFB3e_EIB3f_B3e_B24_EEIB1e_B1C_FB24_EB44_EEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bc) #35
          to label %.body249 unwind label %bb.je, !noalias !3359

_RINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB6_15ProtocolsChange14from_full_setsINtCscu2bAJ62uie_6either6EitherIB1l_NtNtB8_15stream_protocol14StreamProtocolB1U_EB1U_EINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2N_3map3MapIB2J_IB3B_INtNtNtB2P_7sources4once4OnceB1U_EFB1U_EB1P_EB3W_EFB1P_EB1k_EIB3B_B41_FB1U_EB1k_EEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.jc, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBC_INtNtBG_5ready12ReadyUpgradeNtNtB1I_15stream_protocol14StreamProtocolEB2z_EEIB1E_B2z_EEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB39_EEIB2C_B39_EETuuEEECsiLZOIpitoQl_15metrics_example.exit252 unwind label %bb.ki

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB39_EEIB2C_B39_EETuuEEECsiLZOIpitoQl_15metrics_example.exit252: ; preds = %_RINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB6_15ProtocolsChange14from_full_setsINtCscu2bAJ62uie_6either6EitherIB1l_NtNtB8_15stream_protocol14StreamProtocolB1U_EB1U_EINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2N_3map3MapIB2J_IB3B_INtNtNtB2P_7sources4once4OnceB1U_EFB1U_EB1P_EB3W_EFB1P_EB1k_EIB3B_B41_FB1U_EB1k_EEECsiLZOIpitoQl_15metrics_example.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.xt = load i64, ptr %i.he, align 8, !alias.scope !3415, !noundef !7 ; 5 uses
  %i.xu = icmp ult i64 %i.xt, 3
  %i.xv = load i64, ptr %i.bd, align 8, !range !13, !alias.scope !3415, !noundef !7 ; 3 uses
  br i1 %i.xu, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit.thread, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB39_EEIB2C_B39_EETuuEEECsiLZOIpitoQl_15metrics_example.exit252
  %i.xw = icmp ne i64 %i.xv, 0
  call void @llvm.assume(i1 %i.xw)
  %i.xx = load i64, ptr %i.hf, align 8, !alias.scope !3415, !noundef !7 ; 2 uses
  %i.xy = icmp eq i64 %i.xx, 0
  br i1 %i.xy, label %bb.jx, label %bb.jw

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17SubstreamProtocolINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBG_7upgrade11SendWrapperIB1A_INtNtB1E_5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB39_EEIB2C_B39_EETuuEEECsiLZOIpitoQl_15metrics_example.exit252
  %i.xz = icmp eq i64 %i.xv, 0
  call void @llvm.assume(i1 %i.xz)
  %i.ya = icmp eq i64 %i.xt, 0
  br i1 %i.ya, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsiLZOIpitoQl_15metrics_example.exit.i.i, label %.else

bb.jw:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  br label %.lr.ph

.else:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.5277.0.copyload321 = load i64, ptr %i.hf, align 8
  br label %.lr.ph

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit.thread
  store i64 -4, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsiLZOIpitoQl_15metrics_example.exit

bb.jx:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit
  store i64 -4, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3416)
  call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  %i.yb = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3418, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3418
  store i64 %i.xt, ptr %i.c, align 8, !noalias !3418
  %i.yc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.yb, ptr %i.yc, align 8, !noalias !3418
  %i.yd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.yd, align 8, !noalias !3418
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsiLZOIpitoQl_15metrics_example.exit.i.i unwind label %bb.jy, !noalias !3418

bb.jy:                                            ; preds = %bb.jx
  %i.ye = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.jz, !noalias !3418

bb.jz:                                            ; preds = %bb.jy
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3418
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %bb.jx
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc258 unwind label %.loopexit.split-lp

.noexc258:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeEECsiLZOIpitoQl_15metrics_example.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3418
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsiLZOIpitoQl_15metrics_example.exit

.lr.ph:                                           ; preds = %.else, %bb.jw
  %.sink12.i7.i327 = phi i64 [ %i.xt, %.else ], [ %i.xx, %bb.jw ] ; 2 uses
  %.sroa.5277.0 = phi i64 [ %.sroa.5277.0.copyload321, %.else ], [ 0, %bb.jw ]
  %.sroa.7279.0 = phi i64 [ 0, %.else ], [ %i.xt, %bb.jw ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0272.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 %i.xv, ptr %i.ba, align 8
  store i64 %.sroa.5277.0, ptr %.sroa.0272.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.7279.0, ptr %.sroa.0272.sroa.6.0..sroa_idx, align 8
  store i64 %.sink12.i7.i327, ptr %.sroa.5274.0..sroa_idx, align 8
  %i.yg = icmp ugt i64 %.sroa.7279.0, 2
  %i.yh = load ptr, ptr %.sroa.0272.sroa.5.0..sroa_idx, align 8, !nonnull !7
  %..sroa.0272.sroa.4.0..sroa_idx = select i1 %i.yg, ptr %i.yh, ptr %.sroa.0272.sroa.4.0..sroa_idx
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit262

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit262: ; preds = %.lr.ph, %bb.kb
  %i.yi = phi i64 [ 0, %.lr.ph ], [ %i.yj, %bb.kb ] ; 2 uses
  %i.yj = add nuw i64 %i.yi, 1                    ; 3 uses
  store i64 %i.yj, ptr %.sroa.4273.0..sroa_idx, align 8
  %i.yk = getelementptr inbounds nuw [24 x i8], ptr %..sroa.0272.sroa.4.0..sroa_idx, i64 %i.yi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.yk, i64 24, i1 false)
  store i64 8, ptr %i.az, align 8
  invoke void @_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler19on_connection_eventCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(3712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %i.az)
          to label %bb.kb unwind label %bb.ka

._crit_edge:                                      ; preds = %bb.kb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ba)
          to label %bb.kc unwind label %.loopexit

bb.ka:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit262
  %i.yl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ba) #35
          to label %.body unwind label %bb.t

bb.kb:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.ym = icmp eq i64 %i.yj, %.sink12.i7.i327
  br i1 %i.ym, label %._crit_edge, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCsiLZOIpitoQl_15metrics_example.exit262

bb.kc:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %.backedge.backedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsiLZOIpitoQl_15metrics_example.exit: ; preds = %.noexc258, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1M_5range9RangeFullE9index_mutCsiLZOIpitoQl_15metrics_example.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.az

bb.kd:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !3419)
  %i.yn = load i64, ptr %i.df, align 8, !range !16, !alias.scope !3419, !noalias !3420, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.yn, 2
  br i1 %.not.i.i.i, label %.noexc263, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.yo = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.yo)
          to label %.noexc263 unwind label %.thread.thread.a

.noexc263:                                        ; preds = %bb.ke, %bb.kd
  %i.yp = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3420
  %.not4.i.i.i = icmp eq i8 %i.yp, 0
  br i1 %.not4.i.i.i, label %bb.kf, label %.thread311

bb.kf:                                            ; preds = %.noexc263
  %i.yq = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.yr = load ptr, ptr %i.yq, align 8, !alias.scope !3419, !noalias !3420, !align !8, !noundef !7 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.yr, null
  br i1 %.not5.i.i.i, label %.thread311, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3421
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !noalias !3420, !nonnull !7, !noundef !7
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  %i.yv = load i64, ptr %i.yu, align 8, !noalias !3420, !noundef !7
  store ptr %i.yt, ptr %i.b, align 8, !noalias !3421, !captures !31
  %i.yw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.yv, ptr %i.yw, align 8, !noalias !3421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3421
  store ptr %i.b, ptr %i.a, align 8, !noalias !3421
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiLZOIpitoQl_15metrics_example, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !3421
  invoke fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 21, ptr noundef nonnull @41, ptr noundef nonnull %i.a) #41
          to label %.noexc264 unwind label %.thread.thread.a

.noexc264:                                        ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3421
  br label %.thread311

.thread:                                          ; preds = %bb.kj, %.thread.thread.a, %.body
  %.sroa.0104.3 = phi i8 [ %.sroa.0102.2, %.thread.thread.a ], [ %.sroa.0104.0, %bb.kj ], [ %.sroa.0104.0, %.body ]
  %.pn192 = phi { ptr, i32 } [ %i.yy, %.thread.thread.a ], [ %.pn190, %bb.kj ], [ %.pn190, %.body ] ; 2 uses
  %i.yx = trunc nuw i8 %.sroa.0104.3 to i1
  br i1 %i.yx, label %bb.kk, label %.thread.thread316

.thread.thread.a:                                 ; preds = %bb.kg, %bb.ke
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.kh:                                            ; preds = %bb.az, %.thread311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  ret void

.thread311:                                       ; preds = %.noexc263, %bb.kf, %.noexc264
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.df)
  br label %bb.kh

bb.ki:                                            ; preds = %_RINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB6_15ProtocolsChange14from_full_setsINtCscu2bAJ62uie_6either6EitherIB1l_NtNtB8_15stream_protocol14StreamProtocolB1U_EB1U_EINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2N_3map3MapIB2J_IB3B_INtNtNtB2P_7sources4once4OnceB1U_EFB1U_EB1P_EB3W_EFB1P_EB1k_EIB3B_B41_FB1U_EB1k_EEECsiLZOIpitoQl_15metrics_example.exit
  %i.yz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bd) #35
          to label %.body unwind label %bb.t

bb.kj:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span7EnteredECsiLZOIpitoQl_15metrics_example(ptr nonnull %i.df) #35
          to label %.thread unwind label %bb.t

.thread.thread316:                                ; preds = %bb.l, %bb.kk, %.thread
  %.pn192314 = phi { ptr, i32 } [ %.pn192, %.thread ], [ %.pn192, %bb.kk ], [ %i.hs, %bb.l ]
  resume { ptr, i32 } %.pn192314

bb.kk:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.df) #35
          to label %.thread.thread316 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionINtNtNtB7_7handler6select23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE5closeCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([3728 x i8]) align 8 captures(none) dereferenceable(3728) initializes((0, 3728)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(3976) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3712) %0, ptr noundef nonnull align 8 dereferenceable(3712) %1, i64 3712, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3768
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.c = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3784 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtB9_6future6either6EitherIB2s_NtNtB1u_6stream6StreamB31_EB31_EINtCscu2bAJ62uie_6either6EitherIB3y_zzEzEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !3482, !nonnull !7, !noundef !7
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !3483
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %.body

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtBP_6future6either6EitherIB3l_NtNtB2n_6stream6StreamB3U_EB3U_EINtCscu2bAJ62uie_6either6EitherIB4r_zzEzEEEE9drop_slowCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #39
          to label %.body unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !3486, !nonnull !7, !noundef !7
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !3487
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtBI_6future6either6EitherIB2V_NtNtB1X_6stream6StreamB3u_EB3u_EINtCscu2bAJ62uie_6either6EitherIB41_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtBP_6future6either6EitherIB3l_NtNtB2n_6stream6StreamB3U_EB3U_EINtCscu2bAJ62uie_6either6EitherIB4r_zzEzEEEE9drop_slowCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #39
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtBI_6future6either6EitherIB2V_NtNtB1X_6stream6StreamB3u_EB3u_EINtCscu2bAJ62uie_6either6EitherIB41_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3808
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBI_6future6either6EitherIB3p_NtNtB1X_6stream6StreamB3Y_EB3Y_EIB2R_IB2R_zzEzEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #35
          to label %.body13 unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtBI_6future6either6EitherIB2V_NtNtB1X_6stream6StreamB3u_EB3u_EINtCscu2bAJ62uie_6either6EitherIB41_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3808 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtB9_6future6either6EitherIB2W_NtNtB1u_6stream6StreamB3v_EB3v_EIB2o_IB2o_zzEzEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtBI_6future6either6EitherIB2V_NtNtB1X_6stream6StreamB3u_EB3u_EINtCscu2bAJ62uie_6either6EitherIB41_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !3490, !nonnull !7, !noundef !7
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !3491
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %.body13

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBP_6future6either6EitherIB3P_NtNtB2n_6stream6StreamB4o_EB4o_EIB3h_IB3h_zzEzEEEE9drop_slowCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #39
          to label %.body13 unwind label %bb.l

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeTuuEINtNtNtBI_6future6either6EitherIB2V_NtNtB1X_6stream6StreamB3u_EB3u_EINtCscu2bAJ62uie_6either6EitherIB41_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3493)
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !3494, !nonnull !7, !noundef !7
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !3495
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBI_6future6either6EitherIB3p_NtNtB1X_6stream6StreamB3Y_EB3Y_EIB2R_IB2R_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBP_6future6either6EitherIB3P_NtNtB2n_6stream6StreamB4o_EB4o_EIB3h_IB3h_zzEzEEEE9drop_slowCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #39
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBI_6future6either6EitherIB3p_NtNtB1X_6stream6StreamB3Y_EB3Y_EIB2R_IB2R_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

.body13:                                          ; preds = %bb.m, %bb.i, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.m ], [ %i.p, %bb.i ], [ %i.p, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3712
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(16) %i.x) #35
          to label %.body16 unwind label %bb.ak

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBI_6future6either6EitherIB3p_NtNtB1X_6stream6StreamB3Y_EB3Y_EIB2R_IB2R_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3712
  %i.aa = load i64, ptr %i.z, align 8, !range !16, !alias.scope !3496, !noundef !7
  %switch.i = icmp samesign ult i64 %i.aa, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsiLZOIpitoQl_15metrics_example.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBI_6future6either6EitherIB3p_NtNtB1X_6stream6StreamB3Y_EB3Y_EIB2R_IB2R_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3720 ; 5 uses
  invoke void @_RNvXs0_NtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB5_5DelayNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3497)
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !3498, !noundef !7 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.body16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !3499
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.q, label %.body16

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #39
          to label %.body16 unwind label %bb.u

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  %i.ah = load ptr, ptr %i.ab, align 8, !alias.scope !3501, !noundef !7 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsiLZOIpitoQl_15metrics_example.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !3502
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsiLZOIpitoQl_15metrics_example.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #39
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsiLZOIpitoQl_15metrics_example.exit unwind label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

.body16:                                          ; preds = %bb.v, %bb.q, %bb.p, %bb.o, %.body13
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body13 ], [ %i.an, %bb.v ], [ %i.ac, %bb.q ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 3832
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEB47_EEIB3z_B47_EEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #35
          to label %.body19 unwind label %bb.ak

bb.v:                                             ; preds = %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.s, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtBI_6future6either6EitherIB3p_NtNtB1X_6stream6StreamB3Y_EB3Y_EIB2R_IB2R_zzEzEEEECsiLZOIpitoQl_15metrics_example.exit, %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3832 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB2t_INtNtB1u_7upgrade11SendWrapperIB2t_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1u_15stream_protocol14StreamProtocolEB3E_EEIB36_B3E_EEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsiLZOIpitoQl_15metrics_example.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  %i.aq = load ptr, ptr %i.ao, align 8, !alias.scope !3505, !nonnull !7, !noundef !7
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !3506
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.x, label %.body19

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB3m_INtNtB2n_7upgrade11SendWrapperIB3m_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB2n_15stream_protocol14StreamProtocolEB4x_EEIB3Z_B4x_EEEEE9drop_slowCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao) #39
          to label %.body19 unwind label %bb.aa

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection8ShutdownECsiLZOIpitoQl_15metrics_example.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  %i.at = load ptr, ptr %i.ao, align 8, !alias.scope !3509, !nonnull !7, !noundef !7
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !3510
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB2W_INtNtB1X_7upgrade11SendWrapperIB2W_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1X_15stream_protocol14StreamProtocolEB47_EEIB3z_B47_EEEEECsiLZOIpitoQl_15metrics_example.exit
end_hunk_2
