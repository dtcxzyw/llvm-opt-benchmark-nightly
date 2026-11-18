Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/chat_example.chat_example.5f8e00b7a503922-cgu.04?download=true
inline.NumInlined: 1054
inline.NumDeleted: 448
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB5_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB7_5timer5TimerNtNtNtB1i_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsvMXERwWlfq_12chat_example:bb.a
  store i64 1, ptr %i.cz, align 8
  store ptr %i.rb, ptr %i.gh, align 8
  store i64 %i.rd, ptr %i.gi, align 8
  %i.re = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.cc unwind label %bb.bl     ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %i.rf = extractvalue { ptr, ptr } %i.re, 0      ; 2 uses
  %i.rg = extractvalue { ptr, ptr } %i.re, 1      ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ri = load ptr, ptr %i.rh, align 8, !invariant.load !10, !nonnull !10
  %i.rj = invoke noundef zeroext i1 %i.ri(ptr noundef %i.rf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.cd unwind label %bb.bl

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.rj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.rk = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls1_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store ptr %i.df, ptr %i.cv, align 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4158.0..sroa_idx, align 8
  store ptr @132, ptr %i.cw, align 8
  store ptr %i.cv, ptr %i.gj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr %i.eo, ptr %i.cu, align 8
  store ptr %i.cw, ptr %i.cx, align 8
  store ptr @5, ptr %i.gk, align 8
  store ptr %i.cu, ptr %i.gl, align 8
  store ptr @11, ptr %i.gm, align 8
  store i64 1, ptr %i.cy, align 8
  store ptr %i.cx, ptr %.sroa.4160.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.5161.0..sroa_idx, align 8
  store ptr %i.rl, ptr %i.gn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false)
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qz, ptr noundef nonnull %i.rf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cy)
          to label %bb.cg unwind label %bb.bl

bb.cf:                                            ; preds = %bb.cd, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.bw

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.cf

bb.ch:                                            ; preds = %bb.bx, %bb.bw, %bb.bw, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %bb.bi

bb.ci:                                            ; preds = %bb.du, %bb.bl, %bb.gg, %bb.df, %bb.fj, %bb.dx, %.thread
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.cj:                                            ; preds = %bb.b, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  %i.rn = call noundef i8 @_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE10poll_readyCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %.not280 = icmp eq i8 %i.rn, -1
  br i1 %.not280, label %bb.cl, label %bb.ck

.thread:                                          ; preds = %bb.bl, %.thread396
  %.pn395 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread396 ], [ %i.ps, %bb.bl ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dq) #27
          to label %common.resume unwind label %bb.ci

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE9pop_frontCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hb)
  %i.ro = load i32, ptr %i.hc, align 8, !range !2120, !noundef !10
  %.not281 = icmp eq i32 %i.ro, -1
  br i1 %.not281, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %bb.cj, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @_RNvXNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour6socket5tokioNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketNtB4_11AsyncSocket9poll_read(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %i.hf, i64 noundef 4096)
  %i.rp = load i16, ptr %i.hg, align 8, !range !2121, !noundef !10
  switch i16 %i.rp, label %bb.cw [
    i16 -1, label %.thread399
    i16 2, label %.thread406
  ]

.thread399:                                       ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %.loopexit

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %i.cs, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.rq = load i8, ptr %i.hd, align 8, !range !31, !noundef !10
  %.not292 = icmp eq i8 %i.rq, 2
  br i1 %.not292, label %bb.cp, label %bb.co

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.cl

bb.co:                                            ; preds = %bb.cm
  call void @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE8try_sendCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.cq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.cr)
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cq, ptr noundef nonnull align 8 dereferenceable(128) %i.cs, i64 128, i1 false)
  store i8 1, ptr %.sroa.4164.0..sroa_idx, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.rr = load i32, ptr %i.he, align 8, !range !2120, !noundef !10
  %.not293 = icmp eq i32 %i.rr, -1
  br i1 %.not293, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rs = load i8, ptr %.sroa.4164.0..sroa_idx, align 8, !range !37, !noundef !10
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %bb.cu, label %bb.ct

bb.cs:                                            ; preds = %bb.ct, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %.backedge.backedge

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.cq, i64 128, i1 false)
  %i.ru = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE14push_front_mutCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.v) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cr
  %.sroa.0.0.copyload = load ptr, ptr %i.cq, align 8, !nonnull !10, !noundef !10
  %.sroa.4.0..sroa_idx367 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx367, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.rw = load ptr, ptr %i.rv, align 8, !noalias !2122, !nonnull !10, !noundef !10
  call void %i.rw(ptr noundef %.sroa.6.0.copyload, ptr noundef %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload), !noalias !2122, !inline_history !2091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.hc, %.loopexit, %bb.cu
  %.sroa.0.0 = phi i1 [ false, %bb.cu ], [ true, %.loopexit ], [ false, %bb.hc ]
  ret i1 %.sroa.0.0

.thread406:                                       ; preds = %bb.cl
  %i.rx = load ptr, ptr %i.cp, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cl
  %.sroa.0386.0.copyload = load i64, ptr %i.cp, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.hg, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ry = icmp ult i64 %.sroa.0386.0.copyload, 4097
  br i1 %i.ry, label %bb.cy, label %bb.cx, !prof !2124

bb.cx:                                            ; preds = %bb.cw
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0386.0.copyload, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30, !noalias !2123
  unreachable

bb.cy:                                            ; preds = %bb.cw
  call void @_RNvMNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2_10MdnsPacket14new_from_bytes(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4096) %i.hf, i64 noundef %.sroa.0386.0.copyload, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.h), !noalias !2125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2123
  %.sroa.0381.0.copyload = load i64, ptr %i.x, align 8 ; 5 uses
  %.sroa.4382.0.copyload = load ptr, ptr %.sroa.4382.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5383.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  switch i64 %.sroa.0381.0.copyload, label %bb.de [
    i64 -4, label %.loopexit
    i64 -3, label %bb.cz
    i64 -2, label %bb.fk
    i64 -1, label %bb.he
  ]

.loopexit:                                        ; preds = %bb.cy, %.thread399
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  br label %bb.cv

bb.cz:                                            ; preds = %.thread406, %bb.cy
  %.sroa.10.0410 = phi ptr [ %i.rx, %.thread406 ], [ %.sroa.4382.0.copyload, %bb.cy ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0410) ]
  %i.rz = ptrtoint ptr %.sroa.10.0410 to i64      ; 4 uses
  %i.sa = and i64 %i.rz, 3                        ; 2 uses
  switch i64 %i.sa, label %default.unreachable [
    i64 2, label %bb.da
    i64 3, label %bb.db
    i64 0, label %bb.dc
    i64 1, label %bb.dd
  ], !prof !14

bb.da:                                            ; preds = %bb.cz
  %i.sb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc318 unwind label %bb.df

.noexc318:                                        ; preds = %bb.da
  %i.sc = lshr i64 %i.rz, 32
  %i.sd = trunc nuw i64 %i.sc to i32
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !nonnull !10, !noundef !10
  %i.sg = invoke noundef i8 %i.sf(i32 noundef %i.sd)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.df, !inline_history !2126

bb.db:                                            ; preds = %bb.cz
  %i.sh = lshr i64 %i.rz, 32
  %i.si = icmp ult ptr %.sroa.10.0410, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.sh to i8  ; 2 uses
  %i.sj = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.si)
  call void @llvm.assume(i1 %i.sj)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.dc:                                            ; preds = %bb.cz
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.10.0410, i64 16
  %i.sl = load i8, ptr %i.sk, align 8, !range !38, !noundef !10
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.dd:                                            ; preds = %bb.cz
  %i.sm = getelementptr i8, ptr %.sroa.10.0410, i64 31
  %i.sn = load i8, ptr %i.sm, align 8, !range !38, !noundef !10
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.de:                                            ; preds = %bb.cy
  %i.so = icmp ne i64 %.sroa.0381.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.so)
  %i.sp = xor i64 %.sroa.0381.0.copyload, -9223372036854775808
  %i.sq = icmp slt i64 %.sroa.0381.0.copyload, 0
  %i.sr = select i1 %i.sq, i64 %i.sp, i64 1
  switch i64 %i.sr, label %bb.d [
    i64 0, label %bb.dg
    i64 1, label %bb.dy
    i64 2, label %bb.ex
  ]

bb.df:                                            ; preds = %bb.da, %.noexc318
  %lpad.thr_comm.split-lp431 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsvMXERwWlfq_12chat_example(ptr nonnull %.sroa.10.0410) #27
          to label %common.resume unwind label %bb.ci

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %.sroa.4382.0.copyload, ptr %i.co, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.18.8..sroa_idx378, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.18, i64 28, i1 false)
  %i.ss = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.st = icmp eq i64 %i.ss, 0
  br i1 %i.st, label %bb.dh, label %bb.dp

bb.dh:                                            ; preds = %bb.dg
  %i.su = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls2_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.su, label %bb.di [
    i8 0, label %bb.dp
    i8 1, label %bb.dj
    i8 2, label %bb.dj
  ], !prof !35

bb.di:                                            ; preds = %bb.dh
  %i.sv = call noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls2_10___CALLSITE) ; 2 uses
  %i.sw = icmp eq i8 %i.sv, 0
  br i1 %i.sw, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.dh, %bb.di
  %.sroa.054.0 = phi i8 [ %i.sv, %bb.di ], [ %i.su, %bb.dh ], [ %i.su, %bb.dh ]
  %i.sx = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls2_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10
  %i.sy = call noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sx, i8 noundef %.sroa.054.0)
  br i1 %i.sy, label %.noexc325, label %bb.dp

.noexc325:                                        ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.sz = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls2_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  store <2 x ptr> <ptr @133, ptr inttoptr (i64 91 to ptr)>, ptr %i.cl, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store ptr %i.eo, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store ptr %i.co, ptr %i.ci, align 8
  store ptr %i.ci, ptr %i.cj, align 8
  store ptr %i.cl, ptr %i.cm, align 8
  store ptr @5, ptr %i.jb, align 8
  store ptr %i.ck, ptr %i.jc, align 8
  store ptr @11, ptr %i.jd, align 8
  store ptr %i.cj, ptr %i.je, align 8
  store ptr @134, ptr %i.jf, align 8
  store i64 1, ptr %i.cn, align 8
  store ptr %i.cm, ptr %.sroa.056.sroa.4.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.056.sroa.5.0..sroa_idx, align 8
  store ptr %i.ta, ptr %.sroa.457.0..sroa_idx, align 8
  call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn)
  %i.tb = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2127
  %.not.i324 = icmp eq i8 %i.tb, 0
  br i1 %.not.i324, label %bb.dk, label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls4_0CsvMXERwWlfq_12chat_example.exit

bb.dk:                                            ; preds = %.noexc325
  %i.tc = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2127 ; 2 uses
  %i.td = icmp ult i64 %i.tc, 6
  call void @llvm.assume(i1 %i.td)
  %i.te = icmp samesign ugt i64 %i.tc, 4
  br i1 %i.te, label %.noexc326, label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls4_0CsvMXERwWlfq_12chat_example.exit

.noexc326:                                        ; preds = %bb.dk
  %i.tf = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls2_10___CALLSITE, align 8, !noalias !2127, !nonnull !10, !align !12, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2127
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  %i.th = load ptr, ptr %i.tg, align 8, !nonnull !10, !noundef !10
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 40
  %i.tj = load i64, ptr %i.ti, align 8, !noundef !10
  store i64 5, ptr %i.g, align 8, !noalias !2127
  store ptr %i.th, ptr %i.jg, align 8, !noalias !2127
  store i64 %i.tj, ptr %i.jh, align 8, !noalias !2127
  %i.tk = call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.tl = extractvalue { ptr, ptr } %i.tk, 0      ; 2 uses
  %i.tm = extractvalue { ptr, ptr } %i.tk, 1      ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !invariant.load !10, !nonnull !10
  %i.tp = call noundef zeroext i1 %i.to(ptr noundef %i.tl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #29, !inline_history !2098
  br i1 %i.tp, label %bb.dl, label %.noexc328

bb.dl:                                            ; preds = %.noexc326
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.tf, ptr noundef nonnull %i.tl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tm, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn)
  br label %.noexc328

.noexc328:                                        ; preds = %bb.dl, %.noexc326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2127
  br label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls4_0CsvMXERwWlfq_12chat_example.exit

_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls4_0CsvMXERwWlfq_12chat_example.exit: ; preds = %.noexc328, %bb.dk, %.noexc325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dt, %bb.dq, %bb.dp, %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls4_0CsvMXERwWlfq_12chat_example.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.tq = load i16, ptr %i.jq, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bz, ptr noundef nonnull align 8 dereferenceable(80) %i.iz, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.tr = load ptr, ptr %i.jr, align 8, !nonnull !10, !noundef !10
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16 ; 4 uses
  %i.tt = load atomic i32, ptr %i.ts monotonic, align 4 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.tt, 1073741822
  br i1 %or.cond3.i, label %bb.dn, label %bb.do, !prof !2128

bb.dn:                                            ; preds = %bb.dm
  %i.tu = add nuw nsw i32 %i.tt, 1
  %i.tv = cmpxchg weak ptr %i.ts, i32 %i.tt, i32 %i.tu acquire monotonic, align 4
  %i.tw = extractvalue { i32, i1 } %i.tv, 1
  br i1 %i.tw, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.do, !prof !42

bb.do:                                            ; preds = %bb.dn, %bb.dm
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.ts)
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit

bb.dp:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.dj
  %i.tx = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not285 = icmp eq i8 %i.tx, 0
  br i1 %.not285, label %bb.dq, label %bb.dm

bb.dq:                                            ; preds = %bb.dp
  %i.ty = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.tz = icmp ult i64 %i.ty, 6
  call void @llvm.assume(i1 %i.tz)
  %i.ua = icmp samesign ugt i64 %i.ty, 4
  br i1 %i.ua, label %bb.dr, label %bb.dm

bb.dr:                                            ; preds = %bb.dq
  %i.ub = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls2_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 32
  %i.ud = load ptr, ptr %i.uc, align 8, !nonnull !10, !noundef !10
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.uf = load i64, ptr %i.ue, align 8, !noundef !10
  store i64 5, ptr %i.ch, align 8
  store ptr %i.ud, ptr %i.ji, align 8
  store i64 %i.uf, ptr %i.jj, align 8
  %i.ug = call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.uh = extractvalue { ptr, ptr } %i.ug, 0      ; 2 uses
  %i.ui = extractvalue { ptr, ptr } %i.ug, 1      ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8, !invariant.load !10, !nonnull !10
  %i.ul = call noundef zeroext i1 %i.uk(ptr noundef %i.uh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch)
  br i1 %i.ul, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.um = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls2_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store <2 x ptr> <ptr @133, ptr inttoptr (i64 91 to ptr)>, ptr %i.ce, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr %i.eo, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store ptr %i.co, ptr %i.cb, align 8
  store ptr %i.cb, ptr %i.cc, align 8
  store ptr %i.ce, ptr %i.cf, align 8
  store ptr @5, ptr %i.jk, align 8
  store ptr %i.cd, ptr %i.jl, align 8
  store ptr @11, ptr %i.jm, align 8
  store ptr %i.cc, ptr %i.jn, align 8
  store ptr @134, ptr %i.jo, align 8
  store i64 1, ptr %i.cg, align 8
  store ptr %i.cf, ptr %.sroa.4174.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.5175.0..sroa_idx, align 8
  store ptr %i.un, ptr %i.jp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ub, ptr noundef nonnull %i.uh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ui, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.dm

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.do, %bb.dn
  call void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16listen_addresses15ListenAddressesE3newCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bw, ptr noundef nonnull align 8 %i.ts)
  %i.uo = load <2 x ptr>, ptr %i.js, align 8
  %i.up = load ptr, ptr %i.js, align 8, !nonnull !10, !noundef !10
  store <2 x ptr> %i.uo, ptr %i.bx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  invoke void @_RNvMNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16listen_addressesNtB2_15ListenAddresses4iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.up)
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB5_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB7_5timer5TimerNtNtNtB1i_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsvMXERwWlfq_12chat_example:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.fd

bb.fj:                                            ; preds = %bb.ft, %.noexc349, %bb.fs, %bb.fq, %bb.ga, %bb.fy, %bb.fx, %bb.fn, %bb.fm
  %i.yt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbTgMbcnmcyu_13hickory_proto5error10ProtoErrorECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ah) #27
          to label %common.resume unwind label %bb.ci

bb.fk:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %.sroa.4382.0.copyload, ptr %i.ah, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, i64 40, i1 false)
  %i.yu = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.yv = icmp ult i64 %i.yu, 2
  br i1 %i.yv, label %bb.fl, label %bb.fv

bb.fl:                                            ; preds = %bb.fk
  %i.yw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls6_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.yw, label %bb.fm [
    i8 0, label %bb.fv
    i8 1, label %bb.fn
    i8 2, label %bb.fn
  ], !prof !35

bb.fm:                                            ; preds = %bb.fl
  %i.yx = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls6_10___CALLSITE)
          to label %bb.fo unwind label %bb.fj     ; 2 uses

bb.fn:                                            ; preds = %bb.fl, %bb.fl, %bb.fo
  %.sroa.097.0 = phi i8 [ %i.yx, %bb.fo ], [ %i.yw, %bb.fl ], [ %i.yw, %bb.fl ]
  %i.yy = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls6_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10
  %i.yz = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.yy, i8 noundef %.sroa.097.0)
          to label %bb.fp unwind label %bb.fj

bb.fo:                                            ; preds = %bb.fm
  %i.za = icmp eq i8 %i.yx, 0
  br i1 %i.za, label %bb.fv, label %bb.fn

bb.fp:                                            ; preds = %bb.fn
  br i1 %i.yz, label %bb.fq, label %bb.fv

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.zb = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls6_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.ah, ptr %i.ad, align 8
  store ptr @_RNvXs1_NtCsbTgMbcnmcyu_13hickory_proto5errorNtB5_10ProtoErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4250.0..sroa_idx, align 8
  store ptr @137, ptr %i.ae, align 8
  store ptr %i.ad, ptr %i.hh, align 8
  store ptr %i.ae, ptr %i.af, align 8
  store ptr @5, ptr %i.hi, align 8
  store i64 1, ptr %i.ag, align 8
  store ptr %i.af, ptr %.sroa.099.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.099.sroa.5.0..sroa_idx, align 8
  store ptr %i.zc, ptr %.sroa.4100.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %.noexc348 unwind label %bb.fj

.noexc348:                                        ; preds = %bb.fq
  %i.zd = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2131
  %.not.i347 = icmp eq i8 %i.zd, 0
  br i1 %.not.i347, label %bb.fr, label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls8_0CsvMXERwWlfq_12chat_example.exit

bb.fr:                                            ; preds = %.noexc348
  %i.ze = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2131 ; 2 uses
  %i.zf = icmp ult i64 %i.ze, 6
  call void @llvm.assume(i1 %i.zf)
  %i.zg = icmp samesign ugt i64 %i.ze, 3
  br i1 %i.zg, label %bb.fs, label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls8_0CsvMXERwWlfq_12chat_example.exit

bb.fs:                                            ; preds = %bb.fr
  %i.zh = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls6_10___CALLSITE, align 8, !noalias !2131, !nonnull !10, !align !12, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2131
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 32
  %i.zj = load ptr, ptr %i.zi, align 8, !nonnull !10, !noundef !10
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 40
  %i.zl = load i64, ptr %i.zk, align 8, !noundef !10
  store i64 4, ptr %i.d, align 8, !noalias !2131
  store ptr %i.zj, ptr %i.hj, align 8, !noalias !2131
  store i64 %i.zl, ptr %i.hk, align 8, !noalias !2131
  %i.zm = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc349 unwind label %bb.fj ; 2 uses

.noexc349:                                        ; preds = %bb.fs
  %i.zn = extractvalue { ptr, ptr } %i.zm, 0      ; 2 uses
  %i.zo = extractvalue { ptr, ptr } %i.zm, 1      ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zq = load ptr, ptr %i.zp, align 8, !invariant.load !10, !nonnull !10
  %i.zr = invoke noundef zeroext i1 %i.zq(ptr noundef %i.zn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #29
          to label %.noexc350 unwind label %bb.fj, !inline_history !2107

.noexc350:                                        ; preds = %.noexc349
  br i1 %i.zr, label %bb.ft, label %.noexc351

bb.ft:                                            ; preds = %.noexc350
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zh, ptr noundef nonnull %i.zn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zo, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %.noexc351 unwind label %bb.fj

.noexc351:                                        ; preds = %bb.ft, %.noexc350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2131
  br label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls8_0CsvMXERwWlfq_12chat_example.exit

_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls8_0CsvMXERwWlfq_12chat_example.exit: ; preds = %.noexc351, %bb.fr, %.noexc348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.gb, %bb.fw, %bb.fv, %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls8_0CsvMXERwWlfq_12chat_example.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbTgMbcnmcyu_13hickory_proto5error10ProtoErrorECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.he

bb.fv:                                            ; preds = %bb.fo, %bb.fl, %bb.fk, %bb.fp
  %i.zs = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not286 = icmp eq i8 %i.zs, 0
  br i1 %.not286, label %bb.fw, label %bb.fu

bb.fw:                                            ; preds = %bb.fv
  %i.zt = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.zu = icmp ult i64 %i.zt, 6
  call void @llvm.assume(i1 %i.zu)
  %i.zv = icmp samesign ugt i64 %i.zt, 3
  br i1 %i.zv, label %bb.fx, label %bb.fu

bb.fx:                                            ; preds = %bb.fw
  %i.zw = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls6_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  %i.zy = load ptr, ptr %i.zx, align 8, !nonnull !10, !noundef !10
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 40
  %i.aaa = load i64, ptr %i.zz, align 8, !noundef !10
  store i64 4, ptr %i.ac, align 8
  store ptr %i.zy, ptr %i.hl, align 8
  store i64 %i.aaa, ptr %i.hm, align 8
  %i.aab = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.fy unwind label %bb.fj     ; 2 uses

bb.fy:                                            ; preds = %bb.fx
  %i.aac = extractvalue { ptr, ptr } %i.aab, 0    ; 2 uses
  %i.aad = extractvalue { ptr, ptr } %i.aab, 1    ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 24
  %i.aaf = load ptr, ptr %i.aae, align 8, !invariant.load !10, !nonnull !10
  %i.aag = invoke noundef zeroext i1 %i.aaf(ptr noundef %i.aac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.fz unwind label %bb.fj

bb.fz:                                            ; preds = %bb.fy
  br i1 %i.aag, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.aah = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls6_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ah, ptr %i.y, align 8
  store ptr @_RNvXs1_NtCsbTgMbcnmcyu_13hickory_proto5errorNtB5_10ProtoErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4257.0..sroa_idx, align 8
  store ptr @137, ptr %i.z, align 8
  store ptr %i.y, ptr %i.hn, align 8
  store ptr %i.z, ptr %i.aa, align 8
  store ptr @5, ptr %i.ho, align 8
  store i64 1, ptr %i.ab, align 8
  store ptr %i.aa, ptr %.sroa.4259.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5260.0..sroa_idx, align 8
  store ptr %i.aai, ptr %i.hp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zw, ptr noundef nonnull %i.aac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aad, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.gc unwind label %bb.fj

bb.gb:                                            ; preds = %bb.fz, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.fu

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.gb

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.dd, %bb.dc, %bb.db, %.noexc318
  %.sroa.0.0.i316 = phi i8 [ %i.sn, %bb.dd ], [ %switch.idx.cast.i.i.i, %bb.db ], [ %i.sl, %bb.dc ], [ %i.sg, %.noexc318 ]
  %i.aaj = icmp eq i8 %.sroa.0.0.i316, 13
  br i1 %i.aaj, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  switch i64 %i.sa, label %default.unreachable [
    i64 2, label %bb.hd
    i64 3, label %bb.ge
    i64 0, label %bb.hd
    i64 1, label %bb.gf
  ], !prof !14

bb.ge:                                            ; preds = %bb.gd
  %i.aak = icmp ult ptr %.sroa.10.0410, inttoptr (i64 188978561024 to ptr)
  %i.aal = and i64 %i.rz, 1095216660480
  %i.aam = icmp ne i64 %i.aal, 1095216660480
  call void @llvm.assume(i1 %i.aak)
  call void @llvm.assume(i1 %i.aam)
  br label %bb.hd

bb.gf:                                            ; preds = %bb.gd
  %i.aan = getelementptr i8, ptr %.sroa.10.0410, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aan) ]
  store ptr %i.aan, ptr %i.hq, align 8, !alias.scope !2132
  store i8 3, ptr %i.c, align 8, !alias.scope !2132
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hq)
  br label %bb.hd

bb.gg:                                            ; preds = %bb.gq, %.noexc360, %bb.gp, %bb.gn, %bb.gz, %bb.gx, %bb.gw, %bb.gk, %bb.gj
  %i.aao = landingpad { ptr, i32 }
          cleanup
  %.val296 = load ptr, ptr %i.ar, align 8, !nonnull !10, !noundef !10
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsvMXERwWlfq_12chat_example(ptr nonnull %.val296) #27
          to label %common.resume unwind label %bb.ci

bb.gh:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %.sroa.10.0410, ptr %i.ar, align 8
  %i.aap = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aaq = icmp ult i64 %i.aap, 5
  br i1 %i.aaq, label %bb.gi, label %bb.gu

bb.gi:                                            ; preds = %bb.gh
  %i.aar = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls5_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.aar, label %bb.gj [
    i8 0, label %bb.gu
    i8 1, label %bb.gk
    i8 2, label %bb.gk
  ], !prof !35

bb.gj:                                            ; preds = %bb.gi
  %i.aas = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls5_10___CALLSITE)
          to label %bb.gl unwind label %bb.gg     ; 2 uses

bb.gk:                                            ; preds = %bb.gi, %bb.gi, %bb.gl
  %.sroa.087.0 = phi i8 [ %i.aas, %bb.gl ], [ %i.aar, %bb.gi ], [ %i.aar, %bb.gi ]
  %i.aat = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls5_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10
  %i.aau = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aat, i8 noundef %.sroa.087.0)
          to label %bb.gm unwind label %bb.gg

bb.gl:                                            ; preds = %bb.gj
  %i.aav = icmp eq i8 %i.aas, 0
  br i1 %i.aav, label %bb.gu, label %bb.gk

bb.gm:                                            ; preds = %bb.gk
  br i1 %i.aau, label %bb.gn, label %bb.gu

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.aaw = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls5_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.ar, ptr %i.an, align 8
  %.sroa.4235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4235.0..sroa_idx, align 8
  store ptr @138, ptr %i.ao, align 8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.aay, align 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @5, ptr %i.aaz, align 8
  store i64 1, ptr %i.aq, align 8
  %.sroa.089.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %.sroa.089.sroa.4.0..sroa_idx, align 8
  %.sroa.089.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 1, ptr %.sroa.089.sroa.5.0..sroa_idx, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.aax, ptr %.sroa.490.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aaw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %.noexc359 unwind label %bb.gg

.noexc359:                                        ; preds = %bb.gn
  %i.aba = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2133
  %.not.i357 = icmp eq i8 %i.aba, 0
  br i1 %.not.i357, label %bb.go, label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls7_0CsvMXERwWlfq_12chat_example.exit

bb.go:                                            ; preds = %.noexc359
  %i.abb = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2133 ; 2 uses
  %i.abc = icmp ult i64 %i.abb, 6
  call void @llvm.assume(i1 %i.abc)
  %.not1.i358 = icmp eq i64 %i.abb, 0
  br i1 %.not1.i358, label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls7_0CsvMXERwWlfq_12chat_example.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.abd = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls5_10___CALLSITE, align 8, !noalias !2133, !nonnull !10, !align !12, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2133
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 32
  %i.abf = load ptr, ptr %i.abe, align 8, !nonnull !10, !noundef !10
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 40
  %i.abh = load i64, ptr %i.abg, align 8, !noundef !10
  store i64 1, ptr %i.b, align 8, !noalias !2133
  %i.abi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.abf, ptr %i.abi, align 8, !noalias !2133
  %i.abj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.abh, ptr %i.abj, align 8, !noalias !2133
  %i.abk = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc360 unwind label %bb.gg ; 2 uses

.noexc360:                                        ; preds = %bb.gp
  %i.abl = extractvalue { ptr, ptr } %i.abk, 0    ; 2 uses
  %i.abm = extractvalue { ptr, ptr } %i.abk, 1    ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  %i.abo = load ptr, ptr %i.abn, align 8, !invariant.load !10, !nonnull !10
  %i.abp = invoke noundef zeroext i1 %i.abo(ptr noundef %i.abl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #29
          to label %.noexc361 unwind label %bb.gg, !inline_history !2112

.noexc361:                                        ; preds = %.noexc360
  br i1 %i.abp, label %bb.gq, label %.noexc362

bb.gq:                                            ; preds = %.noexc361
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abd, ptr noundef nonnull %i.abl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.abm, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %.noexc362 unwind label %bb.gg

.noexc362:                                        ; preds = %bb.gq, %.noexc361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2133
  br label %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls7_0CsvMXERwWlfq_12chat_example.exit

_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls7_0CsvMXERwWlfq_12chat_example.exit: ; preds = %.noexc362, %bb.go, %.noexc359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.gr

bb.gr:                                            ; preds = %bb.ha, %bb.gv, %bb.gu, %_RNCNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketINtNtB9_5timer5TimerNtNtNtB1k_4time8interval8IntervalEENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls7_0CsvMXERwWlfq_12chat_example.exit
  %.val295 = load ptr, ptr %i.ar, align 8, !nonnull !10, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.abq = ptrtoint ptr %.val295 to i64           ; 2 uses
  %i.abr = and i64 %i.abq, 3
  switch i64 %i.abr, label %default.unreachable [
    i64 2, label %bb.hc
    i64 3, label %bb.gs
    i64 0, label %bb.hc
    i64 1, label %bb.gt
  ], !prof !14

bb.gs:                                            ; preds = %bb.gr
  %i.abs = icmp ult ptr %.val295, inttoptr (i64 188978561024 to ptr)
  %i.abt = and i64 %i.abq, 1095216660480
  %i.abu = icmp ne i64 %i.abt, 1095216660480
  call void @llvm.assume(i1 %i.abs)
  call void @llvm.assume(i1 %i.abu)
  br label %bb.hc

bb.gt:                                            ; preds = %bb.gr
  %i.abv = getelementptr i8, ptr %.val295, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abv) ]
  %i.abw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.abv, ptr %i.abw, align 8, !alias.scope !2134
  store i8 3, ptr %i.a, align 8, !alias.scope !2134
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.abw)
  br label %bb.hc

bb.gu:                                            ; preds = %bb.gl, %bb.gi, %bb.gh, %bb.gm
  %i.abx = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not287 = icmp eq i8 %i.abx, 0
  br i1 %.not287, label %bb.gv, label %bb.gr

bb.gv:                                            ; preds = %bb.gu
  %i.aby = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.abz = icmp ult i64 %i.aby, 6
  call void @llvm.assume(i1 %i.abz)
  %.not288 = icmp eq i64 %i.aby, 0
  br i1 %.not288, label %bb.gr, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aca = load ptr, ptr @_RNvNvXs1_NtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5ifaceINtB7_14InterfaceStateppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls5_10___CALLSITE, align 8, !nonnull !10, !align !12, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 32
  %i.acc = load ptr, ptr %i.acb, align 8, !nonnull !10, !noundef !10
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 40
  %i.ace = load i64, ptr %i.acd, align 8, !noundef !10
  store i64 1, ptr %i.am, align 8
  %i.acf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.acc, ptr %i.acf, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.ace, ptr %i.acg, align 8
  %i.ach = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.gx unwind label %bb.gg     ; 2 uses

bb.gx:                                            ; preds = %bb.gw
  %i.aci = extractvalue { ptr, ptr } %i.ach, 0    ; 2 uses
  %i.acj = extractvalue { ptr, ptr } %i.ach, 1    ; 2 uses
end_hunk_1
