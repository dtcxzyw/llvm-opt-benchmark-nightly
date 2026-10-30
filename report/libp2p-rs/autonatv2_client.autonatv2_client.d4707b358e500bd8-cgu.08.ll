Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonatv2_client.autonatv2_client.d4707b358e500bd8-cgu.08?download=true
inline.NumInlined: 1738
inline.NumDeleted: 797
begin_hunk_0_@_RNvXs0_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_eventCsieOd0lErO6i_16autonatv2_client:bb.a
    i64 3, label %bb.cv
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i163
    i64 1, label %bb.cw
  ], !prof !25

bb.cv:                                            ; preds = %bb.cu
  %i.lu = icmp ult ptr %i.kp, inttoptr (i64 188978561024 to ptr)
  %i.lv = and i64 %i.ls, 1095216660480
  %i.lw = icmp ne i64 %i.lv, 1095216660480
  call void @llvm.assume(i1 %i.lu)
  call void @llvm.assume(i1 %i.lw)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i163

bb.cw:                                            ; preds = %bb.cu
  %i.lx = getelementptr i8, ptr %i.kp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lx) ]
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.lx, ptr %i.ly, align 8, !alias.scope !3086
  store i8 3, ptr %i.a, align 8, !alias.scope !3086
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ly)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i163

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i163: ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_uNtNtNtB4_2io5error5ErrorEEECsieOd0lErO6i_16autonatv2_client.exit

.loopexit.split-lp229.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTRNtCsbli3iz7XG76_9multiaddr9MultiaddrQNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoENCNvXs0_B1R_NtB1R_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_event0E0CsieOd0lErO6i_16autonatv2_client.exit.i, %bb.cr, %bb.cp, %bb.co, %bb.cj, %.noexc159, %bb.ck, %bb.ce, %bb.cd, %bb.b, %bb.bt, %bb.ch
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bd) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCsbli3iz7XG76_9multiaddr9MultiaddrjEECsieOd0lErO6i_16autonatv2_client.exit147 unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour37handle_established_inbound_connectionCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(480) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %3, ptr nofree noundef nonnull readnone align 8 captures(none) %4, ptr nofree noundef nonnull readnone align 8 captures(none) %5) unnamed_addr #0 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client7handler9dial_backNtB2_7Handler3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %.sroa.4.0..sroa_idx)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour38handle_established_outbound_connectionCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(480) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %3, ptr nofree noundef nonnull readnone align 8 captures(none) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client7handler12dial_requestNtB4_7Handler3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4pollCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(480) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [136 x i8], align 8               ; 11 uses
  %i.p = alloca [80 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 11 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 9 uses
  %i.aa = alloca [136 x i8], align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour5EventINtCscu2bAJ62uie_6either6EitherNtNtB20_8protocol11DialRequestzEEE9pop_frontCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.ab = load i64, ptr %i.aa, align 8, !range !3133, !noundef !12
  %.not15 = icmp eq i64 %i.ab, -1
  br i1 %.not15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.08.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.4.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %.sroa.013.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour43issue_dial_requests_for_untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.aa, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour43issue_dial_requests_for_untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.bj = call noundef zeroext i1 @_RNvXs_NtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB4_5DelayNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.bj, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.d, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.bk = load i64, ptr %i.ad, align 8, !noundef !12
  %i.bl = load i32, ptr %i.ae, align 8, !range !43, !noundef !12
  %i.bm = call noundef zeroext i1 @_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay6__reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %i.bk, i32 noundef range(i32 0, 1000000000) %i.bl)
  br i1 %i.bm, label %bb.f, label %_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay5reset.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  %i.bn = load ptr, ptr %i.ac, align 8, !alias.scope !3135, !noundef !12 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1A_5timer14ScheduledTimerEEEECsieOd0lErO6i_16autonatv2_client.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = atomicrmw add ptr %i.bn, i64 -1 release, align 8, !noalias !3136
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1A_5timer14ScheduledTimerEEEECsieOd0lErO6i_16autonatv2_client.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1A_5timer14ScheduledTimerEEEECsieOd0lErO6i_16autonatv2_client.exit.i unwind label %bb.i

common.resume:                                    ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit42.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.br, %bb.i ], [ %i.bw, %bb.m ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit42.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ac, align 8, !alias.scope !3137
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1A_5timer14ScheduledTimerEEEECsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  store ptr null, ptr %i.ac, align 8, !alias.scope !3137
  br label %_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay5reset.exit

_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay5reset.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1A_5timer14ScheduledTimerEEEECsieOd0lErO6i_16autonatv2_client.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  call void @llvm.experimental.noalias.scope.decl(metadata !3139)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3140
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af), !noalias !3141
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB38_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBV_B1v_ENCNvMs1_B1x_NtB1x_9Behaviour19untested_candidates0ENCB5f_s_0EE9from_iterCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m), !noalias !3141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3140
  %i.bs = load ptr, ptr %i.ag, align 8, !noalias !3140, !nonnull !12, !noundef !12 ; 5 uses
  %i.bt = load i64, ptr %i.ah, align 8, !noalias !3140, !noundef !12 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3142
  store ptr %i.a, ptr %i.e, align 8, !noalias !3142
  %i.bu = icmp samesign ult i64 %i.bt, 2
  br i1 %i.bu, label %thread-pre-split.i.i, label %bb.j, !prof !18

bb.j:                                             ; preds = %_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay5reset.exit
  %i.bv = icmp samesign ult i64 %i.bt, 21
  br i1 %i.bv, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoENCINvMB6_SBT_20sort_unstable_by_keyjNCNvMs1_B1w_NtB1w_9Behaviour19untested_candidatess0_0E0ECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 164703072086692426) %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #28
          to label %thread-pre-split.thread.i.i unwind label %bb.m, !noalias !3141

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoENCINvMB8_SB1m_20sort_unstable_by_keyjNCNvMs1_B1Z_NtB1Z_9Behaviour19untested_candidatess0_0E0ECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 164703072086692426) %i.bt, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %thread-pre-split.thread.i.i unwind label %bb.m, !noalias !3141

bb.m:                                             ; preds = %bb.ac, %bb.aa, %bb.z, %bb.w, %.noexc30.i.i, %bb.v, %bb.t, %bb.q, %bb.p, %bb.l, %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #27
          to label %common.resume unwind label %bb.af, !noalias !3141

thread-pre-split.thread.i.i:                      ; preds = %bb.l, %bb.k
  %3 = icmp ult i64 %i.bt, 164703072086692426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3142
  call void @llvm.assume(i1 %3)
  br label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i

thread-pre-split.i.i:                             ; preds = %_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay5reset.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3142
  %i.bx = icmp eq i64 %i.bt, 0
  br i1 %i.bx, label %bb.n, label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i

bb.n:                                             ; preds = %thread-pre-split.i.i
  %i.by = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3140
  %i.bz = icmp ult i64 %i.by, 2
  br i1 %i.bz, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.ca = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE19untested_candidates10___CALLSITE, i64 16) monotonic, align 8, !noalias !3140 ; 3 uses
  switch i8 %i.ca, label %bb.p [
    i8 0, label %bb.x
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !45

bb.p:                                             ; preds = %bb.o
  %i.cb = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE19untested_candidates10___CALLSITE)
          to label %bb.r unwind label %bb.m, !noalias !3141 ; 2 uses

bb.q:                                             ; preds = %bb.o, %bb.r, %bb.o
  %.sroa.06.0.i.i = phi i8 [ %i.cb, %bb.r ], [ %i.ca, %bb.o ], [ %i.ca, %bb.o ]
  %i.cc = load ptr, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE19untested_candidates10___CALLSITE, align 8, !noalias !3140, !nonnull !12, !align !20, !noundef !12
  %i.cd = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cc, i8 noundef %.sroa.06.0.i.i)
          to label %bb.s unwind label %bb.m, !noalias !3141

bb.r:                                             ; preds = %bb.p
  %i.ce = icmp eq i8 %i.cb, 0
  br i1 %i.ce, label %bb.x, label %bb.q

bb.s:                                             ; preds = %bb.q
  br i1 %i.cd, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3140
  %i.cf = load ptr, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE19untested_candidates10___CALLSITE, align 8, !noalias !3140, !nonnull !12, !align !20, !noundef !12 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3140
  store <2 x ptr> <ptr @57, ptr inttoptr (i64 61 to ptr)>, ptr %i.j, align 16, !noalias !3140
  store ptr %i.j, ptr %i.k, align 8, !noalias !3140
  store ptr @17, ptr %i.ai, align 8, !noalias !3140
  store i64 1, ptr %i.l, align 8, !noalias !3140
  store ptr %i.k, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3140
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3140
  store ptr %i.cg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3140
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc29.i.i unwind label %bb.m, !noalias !3141

.noexc29.i.i:                                     ; preds = %bb.t
  %i.ch = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3143
  %.not.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i, label %bb.u, label %_RNCNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB7_9Behaviour19untested_candidatess2_0CsieOd0lErO6i_16autonatv2_client.exit.i.i

bb.u:                                             ; preds = %.noexc29.i.i
  %i.ci = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3143 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 6
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i64 %i.ci, 3
  br i1 %i.ck, label %bb.v, label %_RNCNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB7_9Behaviour19untested_candidatess2_0CsieOd0lErO6i_16autonatv2_client.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.cl = load ptr, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE19untested_candidates10___CALLSITE, align 8, !noalias !3143, !nonnull !12, !align !20, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3143
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !3141, !nonnull !12, !noundef !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !noalias !3141, !noundef !12
  store i64 4, ptr %i.d, align 8, !noalias !3143
  store ptr %i.cn, ptr %i.aj, align 8, !noalias !3143
  store i64 %i.cp, ptr %i.ak, align 8, !noalias !3143
  %i.cq = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc30.i.i unwind label %bb.m, !noalias !3141 ; 2 uses

.noexc30.i.i:                                     ; preds = %bb.v
  %i.cr = extractvalue { ptr, ptr } %i.cq, 0      ; 2 uses
  %i.cs = extractvalue { ptr, ptr } %i.cq, 1      ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !invariant.load !12, !noalias !3141, !nonnull !12
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #23
          to label %.noexc31.i.i unwind label %bb.m, !noalias !3141, !inline_history !3104

.noexc31.i.i:                                     ; preds = %.noexc30.i.i
  br i1 %i.cv, label %bb.w, label %.noexc32.i.i

bb.w:                                             ; preds = %.noexc31.i.i
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cl, ptr noundef nonnull %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc32.i.i unwind label %bb.m, !noalias !3141

.noexc32.i.i:                                     ; preds = %bb.w, %.noexc31.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3143
  br label %_RNCNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB7_9Behaviour19untested_candidatess2_0CsieOd0lErO6i_16autonatv2_client.exit.i.i

_RNCNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB7_9Behaviour19untested_candidatess2_0CsieOd0lErO6i_16autonatv2_client.exit.i.i: ; preds = %.noexc32.i.i, %bb.u, %.noexc29.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3140
  br label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i

bb.x:                                             ; preds = %bb.s, %bb.r, %bb.o, %bb.n
  %i.cw = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3140
  %.not.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i, label %bb.y, label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cx = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3140 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, 6
  call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp samesign ugt i64 %i.cx, 3
  br i1 %i.cz, label %bb.z, label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i

bb.z:                                             ; preds = %bb.y
  %i.da = load ptr, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE19untested_candidates10___CALLSITE, align 8, !noalias !3140, !nonnull !12, !align !20, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3140
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !3141, !nonnull !12, !noundef !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !noalias !3141, !noundef !12
  store i64 4, ptr %i.i, align 8, !noalias !3140
  store ptr %i.dc, ptr %i.al, align 8, !noalias !3140
  store i64 %i.de, ptr %i.am, align 8, !noalias !3140
  %i.df = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.aa unwind label %bb.m, !noalias !3141 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.dg = extractvalue { ptr, ptr } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.df, 1      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !invariant.load !12, !noalias !3141, !nonnull !12
  %i.dk = invoke noundef zeroext i1 %i.dj(ptr noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.ab unwind label %bb.m, !noalias !3141

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3140
  %i.dl = load ptr, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE19untested_candidates10___CALLSITE, align 8, !noalias !3140, !nonnull !12, !align !20, !noundef !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3140
  store <2 x ptr> <ptr @57, ptr inttoptr (i64 61 to ptr)>, ptr %i.f, align 16, !noalias !3140
  store ptr %i.f, ptr %i.g, align 8, !noalias !3140
  store ptr @17, ptr %i.an, align 8, !noalias !3140
  store i64 1, ptr %i.h, align 8, !noalias !3140
  store ptr %i.g, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !3140
  store i64 1, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !3140
  store ptr %i.dm, ptr %i.ao, align 8, !noalias !3140
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.da, ptr noundef nonnull %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.ae unwind label %bb.m, !noalias !3141

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3140
  br label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3140
  br label %bb.ad

bb.af:                                            ; preds = %bb.m
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !3141
  unreachable

_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.ad, %bb.y, %bb.x, %_RNCNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB7_9Behaviour19untested_candidatess2_0CsieOd0lErO6i_16autonatv2_client.exit.i.i, %thread-pre-split.i.i, %thread-pre-split.thread.i.i
  %i.do = load i64, ptr %i.n, align 8, !range !23, !noalias !3140, !noundef !12
  %4 = icmp samesign ult i64 %i.bt, 164703072086692426
  call void @llvm.assume(i1 %4)
  %i.dp = getelementptr inbounds nuw [56 x i8], ptr %i.bs, i64 %i.bt
  %i.dq = load i64, ptr %i.ap, align 8, !alias.scope !3144, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3138
  store ptr %i.bs, ptr %i.z, align 8, !noalias !3138
  store ptr %i.bs, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !3138
  store i64 %i.do, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !3138
  store ptr %i.dp, ptr %.sroa.4.0..sroa_idx43.i, align 8, !noalias !3138
  store i64 %i.dq, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour43issue_dial_requests_for_untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i, %bb.ar
  %i.ds = phi i64 [ %.pr.i, %bb.ar ], [ %i.dq, %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour19untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit.i ]
  %i.dt = add i64 %i.ds, -1
  store i64 %i.dt, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3138
  call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  %i.du = load ptr, ptr %.sroa.4.0..sroa_idx43.i, align 8, !alias.scope !3145, !noalias !3138, !nonnull !12, !noundef !12 ; 3 uses
  %i.dv = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !3145, !noalias !3138, !nonnull !12, !noundef !12
  %i.dw = icmp eq ptr %i.dv, %i.du
  br i1 %i.dw, label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour43issue_dial_requests_for_untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit, label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsieOd0lErO6i_16autonatv2_client.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit42.i: ; preds = %.loopexit.split-lp58.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp42, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp58.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %common.resume unwind label %bb.bl

_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 -56 ; 2 uses
  store ptr %i.dx, ptr %.sroa.4.0..sroa_idx43.i, align 8, !alias.scope !3145, !noalias !3138
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.du, i64 -24
  %.sroa.547.0.copyload.i = load i64, ptr %.sroa.547.0..sroa_idx.i, align 8, !noalias !3145
  %.not.i = icmp eq i64 %.sroa.547.0.copyload.i, -1
  br i1 %.not.i, label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour43issue_dial_requests_for_untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsieOd0lErO6i_16autonatv2_client.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !3138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3146
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour14ConnectionInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.ag
  %i.dy = invoke { ptr, ptr } @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour14ConnectionInfoENCNvMs1_B2M_NtB2M_9Behaviour21random_autonat_server0ENtNtNtCshhqnaxk4GqT_4rand3seq8iterator14IteratorRandom6chooseNtNtNtB4U_4rngs3std6StdRngECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.ar)
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc32.i:                                       ; preds = %.noexc.i
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3146
  %.not.i30.i = icmp eq ptr %i.dz, null
  br i1 %.not.i30.i, label %bb.as, label %bb.ah

.loopexit.split-lp58.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, %bb.bc
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit42.i

bb.ah:                                            ; preds = %.noexc32.i
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
  %i.eb = load i64, ptr %i.dz, align 8, !noalias !3147, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.ea, i64 80, i1 false)
  %i.ec = load i32, ptr %i.ar, align 8, !alias.scope !3148, !noundef !12 ; 4 uses
  %i.ed = icmp ult i32 %i.ec, 63
  br i1 %i.ed, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = load i32, ptr %i.as, align 4, !alias.scope !3148, !noundef !12
  invoke void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.at, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.ar)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33.i:                                       ; preds = %bb.ai
  %i.ef = load i32, ptr %i.ar, align 8, !alias.scope !3148, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ec, 63
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.noexc33.i
  %i.eg = load i32, ptr %i.au, align 4, !alias.scope !3148, !noundef !12
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.eh = zext nneg i32 %i.ec to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !alias.scope !3148, !noundef !12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !alias.scope !3148, !noundef !12
  %i.em = add nuw nsw i32 %i.ec, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.noexc33.i
  %.sroa.0.018.i.i.i.i.i = phi i32 [ %i.em, %bb.ak ], [ 1, %.noexc33.i ], [ 2, %bb.aj ]
  %.sroa.02.017.i.i.i.i.i = phi i32 [ %i.ej, %bb.ak ], [ %i.ee, %.noexc33.i ], [ %i.ef, %bb.aj ]
  %.sroa.03.016.i.i.i.i.i = phi i32 [ %i.el, %bb.ak ], [ %i.ef, %.noexc33.i ], [ %i.eg, %bb.aj ]
  store i32 %.sroa.0.018.i.i.i.i.i, ptr %i.ar, align 8, !alias.scope !3148
  %i.en = zext i32 %.sroa.03.016.i.i.i.i.i to i64
  %i.eo = shl nuw i64 %i.en, 32
  %i.ep = zext i32 %.sroa.02.017.i.i.i.i.i to i64
  %i.eq = or disjoint i64 %i.eo, %i.ep            ; 2 uses
  %i.er = invoke noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE7get_mutBO_ECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 %i.x)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.am:                                            ; preds = %bb.al
  %.not28.i = icmp eq ptr %i.er, null
  br i1 %.not28.i, label %bb.ap, label %bb.an, !prof !15

bb.an:                                            ; preds = %bb.am
  store i64 1, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %i.eq, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3138
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.et = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 1217) 32, i64 noundef range(i64 8, 129) 8) #29 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ao, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.am
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #26
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !noalias !3138
  store i64 0, ptr %i.aw, align 8, !noalias !3138
  store i64 %i.eb, ptr %i.ax, align 8, !noalias !3138
  store i64 1, ptr %i.ay, align 8, !noalias !3138
  store ptr %i.et, ptr %.sroa.013.sroa.4.0..sroa_idx.i, align 8, !noalias !3138
  store i64 1, ptr %.sroa.013.sroa.5.0..sroa_idx.i, align 8, !noalias !3138
  store i64 %i.eq, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !3138
  store i64 4, ptr %i.o, align 8, !noalias !3138
  %i.ev = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour5EventINtCscu2bAJ62uie_6either6EitherNtNtB20_8protocol11DialRequestzEEE13push_back_mutCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(480) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.o)
          to label %bb.ar unwind label %.loopexit.split-lp58.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ar:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.pr.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ew = icmp eq i64 %.pr.i, 0
  br i1 %i.ew, label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour43issue_dial_requests_for_untested_candidatesCsieOd0lErO6i_16autonatv2_client.exit, label %.lr.ph.i

bb.as:                                            ; preds = %.noexc32.i
  %i.ex = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3138
  %i.ey = icmp ult i64 %i.ex, 2
  br i1 %i.ey, label %bb.at, label %bb.bd

bb.at:                                            ; preds = %bb.as
  %i.ez = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE43issue_dial_requests_for_untested_candidates10___CALLSITE, i64 16) monotonic, align 8, !noalias !3138 ; 3 uses
  switch i8 %i.ez, label %bb.au [
    i8 0, label %bb.bd
    i8 1, label %bb.av
    i8 2, label %bb.av
  ], !prof !45

bb.au:                                            ; preds = %bb.at
  %i.fa = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE43issue_dial_requests_for_untested_candidates10___CALLSITE)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %bb.at, %bb.aw, %bb.at
  %.sroa.06.0.i = phi i8 [ %i.fa, %bb.aw ], [ %i.ez, %bb.at ], [ %i.ez, %bb.at ]
  %i.fb = load ptr, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE43issue_dial_requests_for_untested_candidates10___CALLSITE, align 8, !noalias !3138, !nonnull !12, !align !20, !noundef !12
  %i.fc = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fb, i8 noundef %.sroa.06.0.i)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.au
  %i.fd = icmp eq i8 %i.fa, 0
  br i1 %i.fd, label %bb.bd, label %bb.av

bb.ax:                                            ; preds = %bb.av
  br i1 %i.fc, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3138
  %i.fe = load ptr, ptr @_RNvNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourINtB7_9BehaviourpE43issue_dial_requests_for_untested_candidates10___CALLSITE, align 8, !noalias !3138, !nonnull !12, !align !20, !noundef !12 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3138
  store <2 x ptr> <ptr @66, ptr inttoptr (i64 73 to ptr)>, ptr %i.u, align 16, !noalias !3138
  store ptr %i.u, ptr %i.v, align 8, !noalias !3138
  store ptr @17, ptr %i.az, align 8, !noalias !3138
  store i64 1, ptr %i.w, align 8, !noalias !3138
  store ptr %i.v, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !3138
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !3138
  store ptr %i.ff, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3138
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_0
