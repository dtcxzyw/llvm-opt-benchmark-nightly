Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/perf.perf.9685abdc0f76bdb8-cgu.12?download=true
inline.NumInlined: 1638
inline.NumDeleted: 603
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionNtNtNtCsaq3pFONu668_11libp2p_perf6server7handler7HandlerE3newCscVe0kjRb1xs_4perf:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %5, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %6, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %7, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.aw, ptr %i.bo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.ae:                                            ; preds = %bb.ak, %bb.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECscVe0kjRb1xs_4perf.exit, %bb.ah, %bb.am, %.thread, %bb.aj, %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1A_15stream_protocol14StreamProtocolEbEECscVe0kjRb1xs_4perf.exit, %bb.ac, %bb.x, %bb.u, %bb.r
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.af:                                            ; preds = %bb.ac
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECscVe0kjRb1xs_4perf.exit unwind label %bb.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1A_15stream_protocol14StreamProtocolEbEECscVe0kjRb1xs_4perf.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECscVe0kjRb1xs_4perf.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedzNtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #41
          to label %bb.x unwind label %bb.ae

bb.ag:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradezzzEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #41
          to label %bb.u unwind label %bb.ae

bb.ah:                                            ; preds = %bb.r
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxECscVe0kjRb1xs_4perf(ptr nonnull %1, ptr nonnull %2) #41
          to label %bb.n unwind label %bb.ae

bb.ai:                                            ; preds = %bb.aj, %bb.n
  %.sroa.01.038 = phi i1 [ %.sroa.01.039, %bb.aj ], [ %.sroa.01.1, %bb.n ]
  %.sroa.02.136 = phi i8 [ %.sroa.02.137, %bb.aj ], [ 0, %bb.n ]
  %.pn.pn.pn.pn.pn34 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn35, %bb.aj ], [ %.pn.pn.pn.pn, %bb.n ] ; 2 uses
  br i1 %.sroa.01.038, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1A_15stream_protocol14StreamProtocolEbEECscVe0kjRb1xs_4perf.exit21

bb.aj:                                            ; preds = %.thread29, %bb.n
  %.sroa.01.039 = phi i1 [ true, %.thread29 ], [ %.sroa.01.1, %bb.n ]
  %.sroa.02.137 = phi i8 [ 1, %.thread29 ], [ 0, %bb.n ]
  %.pn.pn.pn.pn.pn35 = phi { ptr, i32 } [ %i.an, %.thread29 ], [ %.pn.pn.pn.pn, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #41
          to label %bb.ai unwind label %bb.ae

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBU_15stream_protocol14StreamProtocolEbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1A_15stream_protocol14StreamProtocolEbEECscVe0kjRb1xs_4perf.exit21 unwind label %bb.ae

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1A_15stream_protocol14StreamProtocolEbEECscVe0kjRb1xs_4perf.exit21
  %.pn.pn.pn.pn.pn.pn26 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn34, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1A_15stream_protocol14StreamProtocolEbEECscVe0kjRb1xs_4perf.exit21 ], [ %i.ah, %bb.j ], [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %i.t, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaq3pFONu668_11libp2p_perf6server7handler7HandlerECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(88) %3) #41
          to label %bb.am unwind label %bb.ae

bb.al:                                            ; preds = %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1A_15stream_protocol14StreamProtocolEbEECscVe0kjRb1xs_4perf.exit21
  %.pn.pn.pn.pn.pn.pn27 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn26, %bb.am ], [ %.pn.pn.pn.pn.pn34, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1A_15stream_protocol14StreamProtocolEbEECscVe0kjRb1xs_4perf.exit21 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn27

bb.am:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxECscVe0kjRb1xs_4perf(ptr nonnull %1, ptr nonnull %2) #41
          to label %bb.al unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_10ConnectionNtNtNtCsaq3pFONu668_11libp2p_perf6server7handler7HandlerE4pollCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(352) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [640 x i8], align 8               ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [136 x i8], align 8               ; 5 uses
  %i.r = alloca [80 x i8], align 8                ; 12 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 4 uses
  %i.u = alloca [40 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [64 x i8], align 8                ; 9 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [136 x i8], align 8              ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 16              ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 16              ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 16              ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 16              ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 8 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [8 x i8], align 8                ; 7 uses
  %i.bc = alloca [136 x i8], align 8              ; 4 uses
  %i.bd = alloca [136 x i8], align 8              ; 8 uses
  %i.be = alloca [136 x i8], align 8              ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 5 uses
  %i.bg = alloca [48 x i8], align 8               ; 4 uses
  %i.bh = alloca [40 x i8], align 8               ; 4 uses
  %i.bi = alloca [136 x i8], align 8              ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 5 uses
  %i.bk = alloca [48 x i8], align 8               ; 4 uses
  %i.bl = alloca [56 x i8], align 8               ; 7 uses
  %i.bm = alloca [32 x i8], align 8               ; 7 uses
  %i.bn = alloca [40 x i8], align 8               ; 7 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [40 x i8], align 8               ; 5 uses
  %i.bq = alloca [40 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.br = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bs = icmp ult i64 %i.br, 2
  br i1 %i.bs, label %bb.c, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECscVe0kjRb1xs_4perf.exit: ; preds = %.loopexit, %.loopexit.split-lp, %.noexc11.i, %.body.i, %bb.gw, %bb.gp, %bb.gm, %bb.gd, %bb.gc, %bb.ge, %bb.eo, %bb.fa, %bb.cg, %.body215, %.body
  %.sroa.095.0 = phi i8 [ %.sroa.093.2, %.body.i ], [ %.sroa.093.2, %bb.gp ], [ %.sroa.095.1.ph, %.loopexit.split-lp ], [ %.sroa.093.2, %.body ], [ %.sroa.093.2, %bb.eo ], [ %.sroa.093.2, %bb.gw ], [ %.sroa.093.2, %bb.fa ], [ %.sroa.093.2, %bb.cg ], [ %.sroa.093.2, %.noexc11.i ], [ %.sroa.093.2, %.body215 ], [ %.sroa.093.2, %bb.ge ], [ %.sroa.093.2, %bb.gc ], [ %.sroa.093.2, %bb.gd ], [ %.sroa.093.2, %bb.gm ], [ %.sroa.093.2, %.loopexit ]
  %.sroa.093.0 = phi i8 [ %.sroa.093.2, %.body.i ], [ %.sroa.093.2, %bb.gp ], [ %.sroa.093.1.ph, %.loopexit.split-lp ], [ %.sroa.093.2, %.body ], [ %.sroa.093.2, %bb.eo ], [ %.sroa.093.2, %bb.gw ], [ %.sroa.093.2, %bb.fa ], [ %.sroa.093.2, %bb.cg ], [ %.sroa.093.2, %.noexc11.i ], [ %.sroa.093.2, %.body215 ], [ %.sroa.093.2, %bb.ge ], [ %.sroa.093.2, %bb.gc ], [ %.sroa.093.2, %bb.gd ], [ %.sroa.093.2, %bb.gm ], [ %.sroa.093.2, %.loopexit ]
  %.pn182 = phi { ptr, i32 } [ %i.oi, %.body.i ], [ %i.pw, %bb.gp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %eh.lpad-body, %.body ], [ %i.mq, %bb.eo ], [ %lpad.thr_comm.split-lp, %bb.gw ], [ %i.nk, %bb.fa ], [ %i.iy, %bb.cg ], [ %.pn.pn.ph.i, %.noexc11.i ], [ %eh.lpad-body216, %.body215 ], [ %i.ov, %bb.ge ], [ %i.ov, %bb.gc ], [ %i.ov, %bb.gd ], [ %i.pu, %bb.gm ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %i.bt = trunc nuw i8 %.sroa.093.0 to i1
  br i1 %i.bt, label %bb.gx, label %.thread

.loopexit:                                        ; preds = %bb.gj, %bb.gn, %bb.as, %bb.ax, %bb.ay, %bb.bh, %bb.bi, %bb.bk, %bb.bq, %bb.br, %bb.ca, %bb.cb, %bb.cd, %bb.bb, %bb.bd, %.noexc197, %bb.be, %bb.bu, %bb.bw, %.noexc202, %bb.bx, %bb.ct, %bb.fz, %.backedge, %bb.v, %bb.x, %bb.aa, %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.aj, %bb.ao, %bb.dp, %bb.ds, %bb.dt, %bb.eg, %bb.er, %bb.et, %bb.eu, %bb.fc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECscVe0kjRb1xs_4perf.exit

.loopexit.split-lp:                               ; preds = %bb.r, %bb.e, %bb.f, %bb.i, %bb.p, %bb.gk
  %.sroa.095.1.ph = phi i8 [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.f ], [ 1, %bb.p ], [ 1, %bb.r ], [ %.sroa.093.2, %bb.gk ]
  %.sroa.093.1.ph = phi i8 [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.p ], [ 0, %bb.r ], [ %.sroa.093.2, %bb.gk ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECscVe0kjRb1xs_4perf.exit

default.unreachable344:                           ; preds = %bb.cr, %bb.ar
  unreachable

default.unreachable:                              ; preds = %thread-pre-split
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bu = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.bu, 0
  br i1 %.not, label %bb.c, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %.noexc186, %bb.q, %.noexc187, %bb.b
  %.sroa.093.2 = phi i8 [ 0, %bb.b ], [ 1, %.noexc187 ], [ 1, %bb.q ], [ 1, %.noexc186 ] ; 31 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.030.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.039.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.039.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.049.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ec = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.eg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.backedge

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.ej = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ek = icmp ult i64 %i.ej, 2
  br i1 %i.ek, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.el = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.el, label %bb.e [
    i8 0, label %bb.l
    i8 1, label %bb.f
    i8 2, label %bb.f
  ], !prof !44

bb.e:                                             ; preds = %bb.d
  %i.em = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE)
          to label %bb.g unwind label %.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.g
  %.sroa.011.0 = phi i8 [ %i.em, %bb.g ], [ %i.el, %bb.d ], [ %i.el, %bb.d ]
  %i.en = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.eo = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.en, i8 noundef %.sroa.011.0)
          to label %bb.h unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  %.not170 = icmp eq i8 %i.em, 0
  br i1 %.not170, label %bb.l, label %bb.f

bb.h:                                             ; preds = %bb.f
  br i1 %i.eo, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ep = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  store i64 1, ptr %i.bo, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 0, ptr %.sroa.5107.0..sroa_idx, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.eq, ptr %i.er, align 8
  invoke void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ep, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo)
          to label %bb.t unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.l, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.o

bb.k:                                             ; preds = %bb.m
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bn) #41
          to label %.thread.thread263 unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.et = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4poll10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  store i64 2, ptr %i.bn, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr %i.et, ptr %i.eu, align 8
  %i.ev = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not171 = icmp eq i8 %i.ev, 0
  br i1 %.not171, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store i64 1, ptr %i.bm, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4111.0..sroa_idx, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 0, ptr %.sroa.5112.0..sroa_idx, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span10record_all(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bm)
          to label %bb.n unwind label %bb.k       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.j

bb.o:                                             ; preds = %bb.t, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !4466)
  %i.ez = load i64, ptr %i.bq, align 8, !range !15, !alias.scope !4466, !noundef !10
  %.not.i = icmp eq i64 %i.ez, 2
  br i1 %.not.i, label %.noexc186, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fa)
          to label %.noexc186 unwind label %.loopexit.split-lp

.noexc186:                                        ; preds = %bb.o, %bb.p
  %i.fb = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not4.i = icmp eq i8 %i.fb, 0
  br i1 %.not4.i, label %bb.q, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

bb.q:                                             ; preds = %.noexc186
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !4466, !align !14, !noundef !10 ; 3 uses
  %.not5.i = icmp eq ptr %i.fd, null
  br i1 %.not5.i, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4466
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !10, !noundef !10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !10
  store ptr %i.ff, ptr %i.m, align 8, !noalias !4466, !captures !36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.fh, ptr %i.fi, align 8, !noalias !4466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4466
  store ptr %i.m, ptr %i.l, align 8, !noalias !4466
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCscVe0kjRb1xs_4perf, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !4466
  invoke fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 21, ptr noundef nonnull @22, ptr noundef nonnull %i.l) #40
          to label %.noexc187 unwind label %.loopexit.split-lp

.noexc187:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4466
  br label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

bb.s:                                             ; preds = %bb.gw, %bb.ge, %bb.eo, %bb.gx, %bb.fa, %bb.cg, %bb.gy, %bb.gp, %bb.k
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.t:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.o

.backedge:                                        ; preds = %.backedge.backedge, %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit
  %i.fk = invoke noundef i8 @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedzNtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %.backedge
  %i.fl = icmp eq i8 %i.fk, 1
  br i1 %i.fl, label %.backedge.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvXs0_NtNtCsaq3pFONu668_11libp2p_perf6server7handlerNtB5_7HandlerNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17ConnectionHandler4poll(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.bx, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.fm = load i64, ptr %i.bl, align 8, !range !45, !noundef !10 ; 3 uses
  %4 = icmp eq i64 %i.fm, -1
  br i1 %4, label %bb.x, label %5

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.fn = invoke { i64, ptr } @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradezzzEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.an unwind label %.loopexit

5:                                                ; preds = %bb.w
  %6 = icmp ne i64 %i.fm, 3
  call void @llvm.assume(i1 %6)
  switch i64 %i.fm, label %bb.aa [
    i64 4, label %bb.y
    i64 0, label %bb.ab
  ]

bb.y:                                             ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.am

bb.z:                                             ; preds = %bb.al, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.z, %bb.bn, %bb.ga, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECscVe0kjRb1xs_4perf.exit, %bb.u
  br label %.backedge

bb.aa:                                            ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB5_15ProtocolsChange6remove(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.ai unwind label %.loopexit

bb.ab:                                            ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke void @_RNvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB5_15ProtocolsChange3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.bk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.ac unwind label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.fo = load i64, ptr %i.bj, align 8, !range !15, !noundef !10
  %.not172 = icmp eq i64 %i.fo, 2
  br i1 %.not172, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  store i64 -9223372036854775802, ptr %i.bi, align 8
  invoke void @_RNvXs0_NtNtCsaq3pFONu668_11libp2p_perf6server7handlerNtB5_7HandlerNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17ConnectionHandler19on_connection_event(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.bx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.bi)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.af unwind label %.loopexit

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBO_EECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bh)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ac, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.z

bb.ai:                                            ; preds = %bb.aa
  %i.fp = load i64, ptr %i.bf, align 8, !range !15, !noundef !10
  %.not173 = icmp eq i64 %i.fp, 2
  br i1 %.not173, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  store i64 -9223372036854775802, ptr %i.be, align 8
  invoke void @_RNvXs0_NtNtCsaq3pFONu668_11libp2p_perf6server7handlerNtB5_7HandlerNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17ConnectionHandler19on_connection_event(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.bx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.be)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.z

bb.am:                                            ; preds = %bb.em, %bb.ep, %bb.ef, %bb.ei, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_EECscVe0kjRb1xs_4perf.exit, %bb.fg, %bb.ey, %bb.y
  %i.fq = trunc nuw i8 %.sroa.093.2 to i1
  br i1 %i.fq, label %bb.gr, label %bb.gv

bb.an:                                            ; preds = %bb.x
  %i.fr = extractvalue { i64, ptr } %i.fn, 0
  %switch = icmp ugt i64 %i.fr, -3
  br i1 %switch, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvXs5_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeuNtNtB1u_6stream6StreamzEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %.loopexit

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fs = load i64, ptr %i.bd, align 8, !range !46, !noundef !10
  switch i64 %i.fs, label %bb.as [
    i64 -3, label %bb.dd
    i64 -2, label %bb.dd
    i64 -1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ft = load i64, ptr %i.cf, align 8, !range !26, !noundef !10
  switch i64 %i.ft, label %default.unreachable344 [
    i64 0, label %bb.av
    i64 1, label %bb.au
    i64 2, label %bb.bo
    i64 3, label %bb.ch
  ]

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bc, ptr noundef nonnull align 8 dereferenceable(136) %i.bd, i64 136, i1 false)
  invoke void @_RNvXs0_NtNtCsaq3pFONu668_11libp2p_perf6server7handlerNtB5_7HandlerNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17ConnectionHandler19on_connection_event(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.bx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.bc)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.bn

bb.au:                                            ; preds = %bb.ar
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.ar
  %i.fu = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.fv = icmp ult i64 %i.fu, 2
  br i1 %i.fv, label %bb.aw, label %bb.bf

bb.aw:                                            ; preds = %bb.av
  %i.fw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fw, label %bb.ax [
    i8 0, label %bb.bf
    i8 1, label %bb.ay
    i8 2, label %bb.ay
  ], !prof !44

bb.ax:                                            ; preds = %bb.aw
  %i.fx = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE)
          to label %bb.az unwind label %.loopexit ; 2 uses

bb.ay:                                            ; preds = %bb.aw, %bb.aw, %bb.az
  %.sroa.047.0 = phi i8 [ %i.fx, %bb.az ], [ %i.fw, %bb.aw ], [ %i.fw, %bb.aw ]
  %i.fy = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.fz = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fy, i8 noundef %.sroa.047.0)
          to label %bb.ba unwind label %.loopexit

bb.az:                                            ; preds = %bb.ax
  %i.ga = icmp eq i8 %i.fx, 0
  br i1 %i.ga, label %bb.bf, label %bb.ay

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.fz, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.gb = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store <2 x ptr> <ptr @26, ptr inttoptr (i64 65 to ptr)>, ptr %i.ai, align 16
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr @1, ptr %i.cy, align 8
  store i64 1, ptr %i.ak, align 8
  store ptr %i.aj, ptr %.sroa.049.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.049.sroa.5.0..sroa_idx, align 8
  store ptr %i.gc, ptr %.sroa.450.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %.noexc196 unwind label %.loopexit

.noexc196:                                        ; preds = %bb.bb
  %i.gd = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4467
  %.not.i195 = icmp eq i8 %i.gd, 0
  br i1 %.not.i195, label %bb.bc, label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionNtNtNtCsaq3pFONu668_11libp2p_perf6server7handler7HandlerE4polls0_0CscVe0kjRb1xs_4perf.exit

bb.bc:                                            ; preds = %.noexc196
  %i.ge = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4467 ; 2 uses
  %i.gf = icmp ult i64 %i.ge, 6
  call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp samesign ugt i64 %i.ge, 3
  br i1 %i.gg, label %bb.bd, label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionNtNtNtCsaq3pFONu668_11libp2p_perf6server7handler7HandlerE4polls0_0CscVe0kjRb1xs_4perf.exit

bb.bd:                                            ; preds = %bb.bc
  %i.gh = load ptr, ptr @_RNvNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionpE4polls1_10___CALLSITE, align 8, !noalias !4467, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4467
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !nonnull !10, !noundef !10
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !10
  store i64 4, ptr %i.k, align 8, !noalias !4467
  store ptr %i.gj, ptr %i.cz, align 8, !noalias !4467
  store i64 %i.gl, ptr %i.da, align 8, !noalias !4467
  %i.gm = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc197 unwind label %.loopexit ; 2 uses

.noexc197:                                        ; preds = %bb.bd
  %i.gn = extractvalue { ptr, ptr } %i.gm, 0      ; 2 uses
  %i.go = extractvalue { ptr, ptr } %i.gm, 1      ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !invariant.load !10, !nonnull !10
  %i.gr = invoke noundef zeroext i1 %i.gq(ptr noundef %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k) #40
          to label %.noexc198 unwind label %.loopexit, !inline_history !4363

.noexc198:                                        ; preds = %.noexc197
  br i1 %i.gr, label %bb.be, label %.noexc199

bb.be:                                            ; preds = %.noexc198
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gh, ptr noundef nonnull %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.go, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %.noexc199 unwind label %.loopexit

.noexc199:                                        ; preds = %bb.be, %.noexc198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4467
  br label %_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionNtNtNtCsaq3pFONu668_11libp2p_perf6server7handler7HandlerE4polls0_0CscVe0kjRb1xs_4perf.exit

_RNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB7_10ConnectionNtNtNtCsaq3pFONu668_11libp2p_perf6server7handler7HandlerE4polls0_0CscVe0kjRb1xs_4perf.exit: ; preds = %.noexc199, %bb.bc, %.noexc196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
end_hunk_0
