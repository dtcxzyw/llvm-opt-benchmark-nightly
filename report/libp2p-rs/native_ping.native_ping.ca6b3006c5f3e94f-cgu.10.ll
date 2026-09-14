Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.10?download=true
inline.NumInlined: 2620
inline.NumDeleted: 1264
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCs44McOc0n4RX_13interop_tests9BehaviourE15poll_next_eventCshnt8FRa5Rut_11native_ping:bb.a
  store i64 %.sink12.i7.i.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !5661
  %i.agn = icmp eq i64 %.sink12.i7.i.i, 0
  br i1 %i.agn, label %_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit.i.i, label %.lr.ph.i

bb.et:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i.i
  %lpad.thr_comm.split-lp.i91 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.lr.ph.i:                                         ; preds = %bb.es, %bb.fm
  %i.ago = phi i64 [ %.pre.i26.pre.i, %bb.fm ], [ %spec.select83.i, %bb.es ] ; 2 uses
  %i.agp = phi i64 [ %i.ahv, %bb.fm ], [ %.sink12.i7.i.i, %bb.es ] ; 3 uses
  %i.agq = phi i64 [ %i.ahw, %bb.fm ], [ 0, %bb.es ] ; 2 uses
  %i.agr = add i64 %i.agq, 1                      ; 4 uses
  store i64 %i.agr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !5661
  %i.ags = icmp ugt i64 %i.ago, 10
  %i.agt = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !nonnull !10
  %.sink13.i.i = select i1 %i.ags, ptr %i.agt, ptr %.sroa.0.sroa.2.0..sroa_idx.i
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %.sink13.i.i, i64 %i.agq
  %i.agv = load i64, ptr %i.agu, align 8, !noalias !5662, !noundef !10 ; 2 uses
  %i.agw = invoke noundef align 8 ptr @_RNvMs2_NtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolINtB5_4PoolINtNtNtB9_7handler6select23ConnectionHandlerSelectNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE15get_establishedCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.kt, i64 noundef %i.agv)
          to label %bb.ev unwind label %.loopexit85.i, !noalias !5662 ; 3 uses

bb.eu:                                            ; preds = %bb.fi, %.loopexit.split-lp.i, %.loopexit85.i
  %.pn.i = phi { ptr, i32 } [ %i.ahp, %bb.fi ], [ %lpad.loopexit.i, %.loopexit85.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(112) %i.hk) #32
          to label %.thread.i unwind label %bb.fn, !noalias !5662

.loopexit85.i:                                    ; preds = %bb.fc, %bb.fa, %bb.ew, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit.split-lp.i:                             ; preds = %bb.fd
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ev:                                            ; preds = %.lr.ph.i
  %.not.i90 = icmp eq ptr %i.agw, null
  br i1 %.not.i90, label %bb.fm, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 64
  %i.agy = invoke noundef i8 @_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEE10poll_readyCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.agx, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ex unwind label %.loopexit85.i, !noalias !5662

bb.ex:                                            ; preds = %bb.ew
  switch i8 %i.agy, label %bb.fm [
    i8 -1, label %bb.ey
    i8 2, label %bb.fb
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.agz = load i64, ptr %i.ku, align 8, !alias.scope !5663, !noalias !5664, !noundef !10 ; 3 uses
  %i.aha = icmp ugt i64 %i.agz, 10
  br i1 %i.aha, label %bb.ez, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.ahb = load ptr, ptr %i.kx, align 8, !alias.scope !5663, !noalias !5664, !nonnull !10, !noundef !10
  %.pre96.i = load i64, ptr %.sroa.413.0..sroa_idx.i, align 8, !alias.scope !5665, !noalias !5661
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i.i

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i.i: ; preds = %bb.ey, %bb.ez
  %i.ahc = phi i64 [ %.pre96.i, %bb.ez ], [ %i.agz, %bb.ey ] ; 2 uses
  %.sink12.i.i.i = phi ptr [ %i.ahb, %bb.ez ], [ %.sroa.413.0..sroa_idx.i, %bb.ey ]
  %.sink11.i.i24.i = phi ptr [ %.sroa.413.0..sroa_idx.i, %bb.ez ], [ %i.ku, %bb.ey ]
  %.sink.i.i.i = phi i64 [ %i.agz, %bb.ez ], [ 10, %bb.ey ]
  %i.ahd = icmp eq i64 %i.ahc, %.sink.i.i.i
  br i1 %i.ahd, label %bb.fa, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCshnt8FRa5Rut_11native_ping.exit.i, !prof !25

bb.fa:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i.i
  invoke fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E21reserve_one_uncheckedCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.hm)
          to label %.noexc.i93 unwind label %.loopexit85.i, !noalias !5662

.noexc.i93:                                       ; preds = %bb.fa
  %i.ahe = load ptr, ptr %i.kx, align 8, !alias.scope !5665, !noalias !5661, !nonnull !10, !noundef !10
  %.pre.i.i = load i64, ptr %.sroa.413.0..sroa_idx.i, align 8, !alias.scope !5665, !noalias !5661
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCshnt8FRa5Rut_11native_ping.exit.i

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCshnt8FRa5Rut_11native_ping.exit.i: ; preds = %.noexc.i93, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i.i
  %i.ahf = phi i64 [ %.pre.i.i, %.noexc.i93 ], [ %i.ahc, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i.i ]
  %.sroa.04.0.i.i = phi ptr [ %i.ahe, %.noexc.i93 ], [ %.sink12.i.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.413.0..sroa_idx.i, %.noexc.i93 ], [ %.sink11.i.i24.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i.i ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0.i.i, i64 %i.ahf
  store i64 %i.agv, ptr %i.ahg, align 8, !noalias !5662
  %i.ahh = load i64, ptr %.sroa.0.0.i.i, align 8, !alias.scope !5665, !noalias !5661, !noundef !10
  %i.ahi = add i64 %i.ahh, 1
  store i64 %i.ahi, ptr %.sroa.0.0.i.i, align 8, !alias.scope !5665, !noalias !5661
  %.pre97.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !5661
  %.pre98.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !5661
  br label %bb.fm

bb.fb:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj), !noalias !5661
  %.sroa.03.0.copyload.i = load i64, ptr %i.hl, align 8, !noalias !5661
  store i64 0, ptr %i.hl, align 8, !noalias !5661
  %i.ahj = trunc nuw i64 %.sroa.03.0.copyload.i to i1
  br i1 %i.ahj, label %bb.fc, label %bb.fd, !prof !53

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %i.kv, i64 48, i1 false), !noalias !5661
  invoke void @_RNvMs_NtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolINtB4_21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEE14notify_handlerCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.hi, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.agw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.hj)
          to label %bb.ff unwind label %.loopexit85.i, !noalias !5662

bb.fd:                                            ; preds = %bb.fb
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #38
          to label %bb.fe unwind label %.loopexit.split-lp.i, !noalias !5662

bb.fe:                                            ; preds = %bb.fd
  unreachable

bb.ff:                                            ; preds = %bb.fc
  %i.ahk = load i64, ptr %i.hi, align 8, !range !11, !noalias !5661, !noundef !10
  %i.ahl = trunc nuw i64 %i.ahk to i1
  br i1 %i.ahl, label %bb.fg, label %.loopexit.i

bb.fg:                                            ; preds = %bb.ff
  %i.ahm = load i64, ptr %i.hl, align 8, !range !11, !alias.scope !5666, !noalias !5661, !noundef !10
  %i.ahn = icmp eq i64 %i.ahm, 0
  %i.aho = load ptr, ptr %i.kv, align 8, !noalias !5661
  %.not.i.i.i.i = icmp eq ptr %i.aho, null
  %or.cond.i = select i1 %i.ahn, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.kv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.fi, !noalias !5662

bb.fi:                                            ; preds = %bb.fh
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.hl, align 8, !noalias !5661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kv, ptr noundef nonnull align 8 dereferenceable(48) %i.kw, i64 48, i1 false), !noalias !5661
  br label %bb.eu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.fh, %bb.fg
  store i64 1, ptr %i.hl, align 8, !noalias !5661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kv, ptr noundef nonnull align 8 dereferenceable(48) %i.kw, i64 48, i1 false), !noalias !5661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj), !noalias !5661
  br label %bb.fm

.loopexit.i:                                      ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj), !noalias !5661
  call void @llvm.experimental.noalias.scope.decl(metadata !5667)
  br label %_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit.i.i

_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit.i.i: ; preds = %bb.fm, %.loopexit.i, %bb.es
  %.pre.i26112.i = phi i64 [ %spec.select83.i, %bb.es ], [ %i.ago, %.loopexit.i ], [ %.pre.i26.pre.i, %bb.fm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5668)
  call void @llvm.experimental.noalias.scope.decl(metadata !5669)
  %i.ahq = icmp ugt i64 %.pre.i26112.i, 10
  br i1 %i.ahq, label %bb.fj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECshnt8FRa5Rut_11native_ping.exit.i

bb.fj:                                            ; preds = %_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit.i.i
  %i.ahr = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !alias.scope !5670, !noalias !5661, !nonnull !10, !noundef !10
  %i.ahs = load i64, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !alias.scope !5670, !noalias !5661, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !noalias !5671
  store i64 %.pre.i26112.i, ptr %i.hf, align 8, !noalias !5671
  store ptr %i.ahr, ptr %i.ky, align 8, !noalias !5671
  store i64 %i.ahs, ptr %i.kz, align 8, !noalias !5671
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i.i unwind label %bb.fk, !noalias !5672

bb.fk:                                            ; preds = %bb.fj
  %i.aht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %.thread.i unwind label %bb.fl, !noalias !5672

bb.fl:                                            ; preds = %bb.fk
  %i.ahu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !5672
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i.i: ; preds = %bb.fj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %.noexc27.i unwind label %bb.et, !noalias !5662

.noexc27.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !noalias !5671
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECshnt8FRa5Rut_11native_ping.exit.i

bb.fm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCshnt8FRa5Rut_11native_ping.exit.i, %bb.ex, %bb.ev
  %i.ahv = phi i64 [ %.pre98.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCshnt8FRa5Rut_11native_ping.exit.i ], [ %i.agp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i ], [ %i.agp, %bb.ex ], [ %i.agp, %bb.ev ] ; 2 uses
  %i.ahw = phi i64 [ %.pre97.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCshnt8FRa5Rut_11native_ping.exit.i ], [ %i.agr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i ], [ %i.agr, %bb.ex ], [ %i.agr, %bb.ev ] ; 2 uses
  %i.ahx = icmp eq i64 %i.ahw, %i.ahv
  %.pre.i26.pre.i = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !5661 ; 2 uses
  br i1 %i.ahx, label %_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit.i.i, label %.lr.ph.i

bb.fn:                                            ; preds = %.noexc43.i, %bb.fz, %bb.eu
  %i.ahy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !5662
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit.i.i, %.noexc27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk), !noalias !5661
  %.sroa.08.0.copyload.i = load i64, ptr %i.hl, align 8, !noalias !5661
  %.sroa.0.0.copyload.i = load i64, ptr %i.hm, align 8, !noalias !5661 ; 8 uses
  %.sroa.554.0.copyload.i = load i64, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !5661 ; 4 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %i.kx, align 8, !noalias !5661 ; 4 uses
  %.sroa.761.0.copyload.i = load i64, ptr %i.ku, align 8, !noalias !5661 ; 6 uses
  %i.ahz = trunc nuw i64 %.sroa.08.0.copyload.i to i1
  br i1 %i.ahz, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshnt8FRa5Rut_11native_ping.exit.i.i, label %bb.fv

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshnt8FRa5Rut_11native_ping.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECshnt8FRa5Rut_11native_ping.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg), !noalias !5661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hg, ptr noundef nonnull align 8 dereferenceable(48) %i.kv, i64 48, i1 false), !noalias !5661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh), !noalias !5661
  store i64 %.sroa.0.0.copyload.i, ptr %i.hh, align 8, !noalias !5661
  store i64 %.sroa.554.0.copyload.i, ptr %.sroa.554.0..sroa_idx55.i, align 8, !noalias !5661
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx57.i, align 8, !noalias !5661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.759.0..sroa_idx60.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.759.0..sroa_idx.i, i64 64, i1 false), !noalias !5661
  store i64 %.sroa.761.0.copyload.i, ptr %.sroa.761.0..sroa_idx62.i, align 8, !noalias !5661
  call void @llvm.experimental.noalias.scope.decl(metadata !5673)
  %i.aia = icmp ugt i64 %.sroa.761.0.copyload.i, 10 ; 2 uses
  %i.aib = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %.sink12.i.i28.i = select i1 %i.aia, i64 %.sroa.554.0.copyload.i, i64 %.sroa.761.0.copyload.i
  %i.aic = icmp eq i64 %.sink12.i.i28.i, 0
  br i1 %i.aic, label %bb.fo, label %bb.gs

bb.fo:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshnt8FRa5Rut_11native_ping.exit.i.i
  %i.aid = load ptr, ptr %i.hg, align 8, !alias.scope !5674, !noalias !5675, !noundef !10
  %.not.i.i2.i.i = icmp eq ptr %i.aid, null
  br i1 %.not.i.i2.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit4.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit4.i.i unwind label %bb.fq, !noalias !5676

bb.fq:                                            ; preds = %bb.fp
  %i.aie = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.hh) #32
          to label %.body unwind label %bb.fu, !noalias !5677

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit4.i.i: ; preds = %bb.fp, %bb.fo
  br i1 %i.aia, label %bb.fr, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1N_5range9RangeFullE9index_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i29.i

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1N_5range9RangeFullE9index_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i29.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit4.i.i
  call void @llvm.assume(i1 %i.aib)
  br label %.thread312

bb.fr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit4.i.i
  %3 = icmp ne i64 %.sroa.0.0.copyload.i, 0
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he), !noalias !5678
  store i64 %.sroa.761.0.copyload.i, ptr %i.he, align 8, !noalias !5678
  store ptr %.sroa.6.0.copyload.i, ptr %i.lc, align 8, !noalias !5678
  store i64 %.sroa.554.0.copyload.i, ptr %i.ld, align 8, !noalias !5678
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i30.i unwind label %bb.fs, !noalias !5679

bb.fs:                                            ; preds = %bb.fr
  %i.aif = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %.body unwind label %bb.ft, !noalias !5679

bb.ft:                                            ; preds = %bb.fs
  %i.aig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !5679
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i30.i: ; preds = %bb.fr
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %.noexc94 unwind label %.thread303

.noexc94:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !5678
  br label %.thread312

bb.fu:                                            ; preds = %bb.fq
  %i.aih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !5676
  unreachable

bb.fv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECshnt8FRa5Rut_11native_ping.exit.i
  %i.aii = icmp ugt i64 %.sroa.761.0.copyload.i, 10
  br i1 %i.aii, label %bb.fw, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1N_5range9RangeFullE9index_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i35.i

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1N_5range9RangeFullE9index_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i35.i: ; preds = %bb.fv
  %i.aij = icmp eq i64 %.sroa.0.0.copyload.i, 0
  call void @llvm.assume(i1 %i.aij)
  br label %.sink.split

bb.fw:                                            ; preds = %bb.fv
  %i.aik = icmp ne i64 %.sroa.0.0.copyload.i, 0
  call void @llvm.assume(i1 %i.aik)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !noalias !5680
  store i64 %.sroa.761.0.copyload.i, ptr %i.hd, align 8, !noalias !5680
  store ptr %.sroa.6.0.copyload.i, ptr %i.la, align 8, !noalias !5680
  store i64 %.sroa.554.0.copyload.i, ptr %i.lb, align 8, !noalias !5680
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i37.i unwind label %bb.fx, !noalias !5681

bb.fx:                                            ; preds = %bb.fw
  %i.ail = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %.body unwind label %bb.fy, !noalias !5681

bb.fy:                                            ; preds = %bb.fx
  %i.aim = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !5681
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i37.i: ; preds = %bb.fw
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %.noexc95 unwind label %.thread303

.noexc95:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !noalias !5680
  br label %.sink.split

.thread.i:                                        ; preds = %bb.fk, %bb.eu, %bb.et
  %.pn2169.i = phi { ptr, i32 } [ %.pn.i, %bb.eu ], [ %lpad.thr_comm.split-lp.i91, %bb.et ], [ %i.aht, %bb.fk ]
  %i.ain = load i64, ptr %i.hl, align 8, !range !11, !alias.scope !5682, !noalias !5661, !noundef !10
  %i.aio = icmp eq i64 %i.ain, 0
  %i.aip = load ptr, ptr %i.kv, align 8, !noalias !5661
  %.not.i.i.i42.i = icmp eq ptr %i.aip, null
  %or.cond84.i = select i1 %i.aio, i1 true, i1 %.not.i.i.i42.i
  br i1 %or.cond84.i, label %.noexc43.i, label %bb.fz

bb.fz:                                            ; preds = %.thread.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.kv)
          to label %.noexc43.i unwind label %bb.fn, !noalias !5662

.noexc43.i:                                       ; preds = %bb.fz, %.thread.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(96) %i.hm) #32
          to label %.body unwind label %bb.fn, !noalias !5662

bb.ga:                                            ; preds = %bb.y
  %i.aiq = invoke noundef align 8 ptr @_RNvMs2_NtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolINtB5_4PoolINtNtNtB9_7handler6select23ConnectionHandlerSelectNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE15get_establishedCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.kt, i64 noundef %.sroa.6.sroa.0.0.copyload)
          to label %bb.gb unwind label %bb.vr     ; 3 uses

.thread303:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i37.i, %bb.gh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEECshnt8FRa5Rut_11native_ping.exit.i.i.i30.i, %bb.gf, %bb.gg
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gb:                                            ; preds = %bb.ga
  %.not63 = icmp eq ptr %i.aiq, null
  br i1 %.not63, label %bb.gl, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kg, ptr noundef nonnull align 8 dereferenceable(48) %i.kh, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5683)
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 64
  %i.ais = invoke noundef i8 @_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEE10poll_readyCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.air, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.gd unwind label %bb.gi, !noalias !5684

bb.gd:                                            ; preds = %bb.gc
  switch i8 %i.ais, label %bb.ge [
    i8 -1, label %bb.gn
    i8 2, label %bb.gg
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.ait = load ptr, ptr %i.kg, align 8, !alias.scope !5685, !noalias !5686, !noundef !10
  %.not.i.i.i100 = icmp eq ptr %i.ait, null
  br i1 %.not.i.i.i100, label %bb.go, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.kg)
          to label %bb.go unwind label %.thread303

bb.gg:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !noalias !5687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb), !noalias !5687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hb, ptr noundef nonnull align 8 dereferenceable(48) %i.kg, i64 48, i1 false), !noalias !5686
  invoke void @_RNvMs_NtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4poolINtB4_21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEE14notify_handlerCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.hc, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.aiq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.hb)
          to label %.noexc102 unwind label %.thread303

.noexc102:                                        ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !5687
  %i.aiu = load i64, ptr %i.hc, align 8, !range !11, !alias.scope !5688, !noalias !5687, !noundef !10
  %i.aiv = icmp eq i64 %i.aiu, 0
  %i.aiw = load ptr, ptr %i.le, align 8
  %.not.i.i.i.i99 = icmp eq ptr %i.aiw, null
  %or.cond = select i1 %i.aiv, i1 true, i1 %.not.i.i.i.i99
  br i1 %or.cond, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i, label %bb.gh

bb.gh:                                            ; preds = %.noexc102
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.le)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i unwind label %.thread303

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.gh, %.noexc102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !5687
  br label %bb.go

bb.gi:                                            ; preds = %bb.gc
  %lpad.thr_comm.split-lp.i98 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aix = load ptr, ptr %i.kg, align 8, !alias.scope !5689, !noalias !5686, !noundef !10
  %.not.i.i4.i = icmp eq ptr %i.aix, null
  br i1 %.not.i.i4.i, label %.body, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.kg)
          to label %.body unwind label %bb.gk, !noalias !5690

bb.gk:                                            ; preds = %bb.gj
  %i.aiy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !5690
  unreachable

bb.gl:                                            ; preds = %bb.gb
  %i.aiz = load ptr, ptr %i.kh, align 8, !alias.scope !5691, !noundef !10
  %.not.i.i107 = icmp eq ptr %i.aiz, null
  br i1 %.not.i.i107, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.kh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit unwind label %.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.gs, %.sink.split, %bb.gl, %bb.gm, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  br label %.backedge.backedge

bb.gn:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %i.kg, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(224) %i.ks)
          to label %bb.gq unwind label %bb.gp

bb.go:                                            ; preds = %bb.ge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEECshnt8FRa5Rut_11native_ping.exit.i, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEECshnt8FRa5Rut_11native_ping.exit

bb.gp:                                            ; preds = %bb.gn
  %i.aja = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.ks, align 8
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.sroa.0, i64 72, i1 false)
  store i64 %.sroa.6.sroa.5.sroa.5.0.copyload, ptr %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.kf, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, i64 48, i1 false)
end_hunk_0
