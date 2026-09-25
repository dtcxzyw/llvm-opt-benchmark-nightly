Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.10?download=true
inline.NumInlined: 2620
inline.NumDeleted: 1264
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXst_CsczYENlYh6wI_8smallvecINtB6_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1S_8adapters10filter_map9FilterMapINtNtNtB1S_7sources4once4OnceBK_ENCINvNtBQ_15listener_select21listener_select_protoNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamB3v_E0EECshnt8FRa5Rut_11native_ping:_RINvCsczYENlYh6wI_8smallvec10infallibleuECshnt8FRa5Rut_11native_ping.exit
  br i1 %i.ah, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E4pushCshnt8FRa5Rut_11native_ping.exit, !prof !25

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i
  invoke fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E21reserve_one_uncheckedCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.f unwind label %bb.d, !noalias !4140

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.x, align 8, !alias.scope !4139, !noalias !4140, !nonnull !10, !noundef !10
  %.pre6.i = load i64, ptr %i.l, align 8, !alias.scope !4139, !noalias !4140
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E4pushCshnt8FRa5Rut_11native_ping.exit

bb.g:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.af, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E4pushCshnt8FRa5Rut_11native_ping.exit: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i, %bb.f
  %i.ak = phi i64 [ %.pre6.i, %bb.f ], [ %i.ag, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.ai, %bb.f ], [ %.sink12.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.l, %bb.f ], [ %.sink11.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshnt8FRa5Rut_11native_ping.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %.sroa.04.0.i, i64 %i.ak
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  %i.am = load i64, ptr %.sroa.0.0.i, align 8, !alias.scope !4139, !noalias !4140, !noundef !10
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %.sroa.0.0.i, align 8, !alias.scope !4139, !noalias !4140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  call void @llvm.experimental.noalias.scope.decl(metadata !4143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4144
  store ptr %i.v, ptr %i.b, align 8, !noalias !4145
  %i.ao = load i64, ptr %i.u, align 8, !alias.scope !4146, !noalias !4125
  %.promoted.i.i.i11 = load ptr, ptr %i.f, align 8, !alias.scope !4146, !noalias !4125 ; 2 uses
  store ptr null, ptr %i.f, align 8, !alias.scope !4146, !noalias !4125
  %.not18.i.i.i12 = icmp eq ptr %.promoted.i.i.i11, null
  br i1 %.not18.i.i.i12, label %.loopexit, label %.lr.ph.split.us.i.i.i13

.loopexit:                                        ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E4pushCshnt8FRa5Rut_11native_ping.exit, %._crit_edge, %._crit_edge.split.us.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.h:                                             ; preds = %.loopexit41, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.031)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.533)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.710.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4129
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %.sink12.i, i64 %.sroa.7.046 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031, i64 16, i1 false)
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.z, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533, i64 16, i1 false)
  %i.aq = add i64 %.sroa.7.046, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.031)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  %exitcond.not = icmp eq i64 %i.aq, %.sink.i9
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.a

.loopexit41:                                      ; preds = %bb.a, %._crit_edge.split.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4129
  store i64 %.sroa.7.046, ptr %.sink11.i, align 8
  br label %bb.h

bb.j:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.046, ptr %.sink11.i, align 8
  br label %common.resume
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs1_NtCs5hzaM3VbZx4_5redis6clientNtB8_6Client38get_multiplexed_async_connection_innerNtNtNtBa_3aio5tokio5TokioE0Cshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [128 x i8], align 8               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %.sroa.34.i.i = alloca [272 x i8], align 8      ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 13 uses
  %i.f = alloca [112 x i8], align 8               ; 5 uses
  %i.g = alloca [288 x i8], align 8               ; 6 uses
  %i.h = alloca [280 x i8], align 8               ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 12 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.752.i.i.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.949.i.i.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.5.i.i.i.i.i = alloca [104 x i8], align 8 ; 7 uses
  %i.m = alloca [120 x i8], align 8               ; 10 uses
  %i.n = alloca [120 x i8], align 8               ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 14 uses
  %.sroa.560.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.p = alloca [64 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [64 x i8], align 8                ; 14 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %i.u = alloca [40 x i8], align 8                ; 13 uses
  %.sroa.18.i = alloca [272 x i8], align 8        ; 6 uses
  %.sroa.16113.i = alloca [272 x i8], align 8     ; 8 uses
  %.sroa.787 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.17 = alloca [272 x i8], align 8          ; 2 uses
  %i.v = alloca [280 x i8], align 8               ; 6 uses
  %i.w = alloca [64 x i8], align 8                ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !range !9, !noundef !10
  switch i8 %i.y, label %default.unreachable142 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable142:                           ; preds = %bb.fm, %bb.ei, %bb.bw, %bb.bb, %bb.ay, %bb.n, %bb.m, %bb.j, %bb.d, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.z, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 49
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

.body:                                            ; preds = %bb.ii, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtCs5hzaM3VbZx4_5redis6clientNtBK_6Client27get_simple_async_connectionNtNtNtBM_3aio5tokio5TokioE0ECshnt8FRa5Rut_11native_ping.exit.i
  %i.ac = phi ptr [ %i.qg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtCs5hzaM3VbZx4_5redis6clientNtBK_6Client27get_simple_async_connectionNtNtNtBM_3aio5tokio5TokioE0ECshnt8FRa5Rut_11native_ping.exit.i ], [ %i.ad, %bb.ii ]
  %.pn = phi { ptr, i32 } [ %.pn9.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtCs5hzaM3VbZx4_5redis6clientNtBK_6Client27get_simple_async_connectionNtNtNtBM_3aio5tokio5TokioE0ECshnt8FRa5Rut_11native_ping.exit.i ], [ %i.abg, %bb.ii ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtCs5hzaM3VbZx4_5redis6clientNtBK_6Client41create_multiplexed_async_connection_innerNtNtNtBM_3aio5tokio5TokioE0ECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %i.ac) #32
          to label %.body10 unwind label %bb.ir

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 49
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !32, !noalias !4259
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 23 uses
  switch i8 %.pre, label %default.unreachable142 [
    i8 0, label %bb.e
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
    i8 4, label %bb.ei
  ]

bb.e:                                             ; preds = %.thread, %bb.d
  %i.af = phi ptr [ %i.ab, %.thread ], [ %i.ae, %bb.d ]
  %i.ag = phi ptr [ %i.aa, %.thread ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %i.ah, align 8, !noalias !4259
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !4259, !nonnull !10, !align !16, !noundef !10 ; 3 uses
  store ptr %i.aj, ptr %i.ag, align 8, !noalias !4259, !captures !39
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !noalias !4259, !nonnull !10, !align !16, !noundef !10 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !noalias !4259, !captures !39
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %.val16.i = load ptr, ptr %i.an, align 8, !noalias !4260, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq ptr %.val16.i, null
  br i1 %.not.i.i, label %.thread222.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.am, i64 104
  %.val17.i = load ptr, ptr %i.ao, align 8, !noalias !4260, !nonnull !10, !noundef !10 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val17.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !19, !invariant.load !10, !noalias !4260
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = and i64 %i.ar, -16
  %i.at = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  br label %.thread222.i

.thread222.i:                                     ; preds = %bb.f, %bb.e
  %.sroa.3.0.i.i = phi ptr [ %.val17.i, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.0.i.i = phi ptr [ %i.au, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.not.i18.i = icmp eq ptr %.sroa.0.0.i.i, null  ; 2 uses
  %spec.select5.i.i.a = select i1 %.not.i18.i, ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.0.i.i ; 2 uses
  %spec.select.i.i = select i1 %.not.i18.i, ptr @41, ptr %.sroa.3.0.i.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.aj, ptr %i.av, align 8, !noalias !4259
  %.sroa.854.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %spec.select5.i.i.a, ptr %.sroa.854.0..sroa_idx.i, align 8, !noalias !4259
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %spec.select.i.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !4259
  %.sroa.1156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.1156.0..sroa_idx.i, align 8, !noalias !4259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4259
  %i.aw = insertelement <2 x ptr> poison, ptr %spec.select5.i.i.a, i64 0
  %i.ax = insertelement <2 x ptr> %i.aw, ptr %spec.select.i.i, i64 1
  br label %.thread.i.i

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
          to label %.noexc unwind label %bb.ii

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
          to label %.noexc7 unwind label %bb.ii

.noexc7:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.body.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtBI_5tokio5TokioE0ECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtCs5hzaM3VbZx4_5redis6clientNtBK_6Client27get_simple_async_connectionNtNtNtBM_3aio5tokio5TokioE0ECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.ef, !noalias !4260

bb.j:                                             ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 15 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !9, !noalias !4261
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4259
  switch i8 %.pre.i, label %default.unreachable142 [
    i8 0, label %..thread.i.i_crit_edge
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

..thread.i.i_crit_edge:                           ; preds = %bb.j
  %.pre108 = load ptr, ptr %i.az, align 8, !noalias !4261
  %.phi.trans.insert109 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ba = load <2 x ptr>, ptr %.phi.trans.insert109, align 8, !noalias !4261
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread.i.i_crit_edge, %.thread222.i
  %i.bb = phi ptr [ %i.af, %.thread222.i ], [ %i.ae, %..thread.i.i_crit_edge ]
  %i.bc = phi ptr [ %i.ag, %.thread222.i ], [ %i.ad, %..thread.i.i_crit_edge ]
  %i.bd = phi ptr [ %i.aj, %.thread222.i ], [ %.pre108, %..thread.i.i_crit_edge ] ; 2 uses
  %i.be = phi ptr [ %.sroa.1156.0..sroa_idx.i, %.thread222.i ], [ %.phi.trans.insert.i, %..thread.i.i_crit_edge ]
  %i.bf = phi ptr [ %i.av, %.thread222.i ], [ %i.az, %..thread.i.i_crit_edge ]
  %i.bg = phi <2 x ptr> [ %i.ax, %.thread222.i ], [ %i.ba, %..thread.i.i_crit_edge ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store <2 x ptr> %i.bg, ptr %i.bh, align 8, !noalias !4261
  %.sroa.1012.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.bd, ptr %.sroa.1012.0..sroa_idx.i.i, align 8, !noalias !4261
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 113 ; 2 uses
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i, align 1, !noalias !4261
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.560.i.i.i)
  br label %bb.n

.body.thread.i:                                   ; preds = %bb.ds, %.body.i.i
  %i.bi = phi ptr [ %i.bl, %.body.i.i ], [ %i.nv, %bb.ds ]
  %i.bj = phi ptr [ %i.bm, %.body.i.i ], [ %i.nw, %bb.ds ]
  %i.bk = phi ptr [ %i.bn, %.body.i.i ], [ %i.nx, %bb.ds ]
  %.pn2.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.ob, %bb.ds ]
  store i8 2, ptr %i.bk, align 8, !noalias !4261
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtCs5hzaM3VbZx4_5redis6clientNtBK_6Client27get_simple_async_connectionNtNtNtBM_3aio5tokio5TokioE0ECshnt8FRa5Rut_11native_ping.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.noexc19.i unwind label %.body.i, !noalias !4260

.noexc19.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.noexc20.i unwind label %.body.i, !noalias !4260

.noexc20.i:                                       ; preds = %bb.l
  unreachable

.body.i.i:                                        ; preds = %bb.dq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime12connect_unix0ECshnt8FRa5Rut_11native_ping.exit.i.i.i
  %i.bl = phi ptr [ %i.cq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime12connect_unix0ECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.ae, %bb.dq ]
  %i.bm = phi ptr [ %i.cr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime12connect_unix0ECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.ad, %bb.dq ]
  %i.bn = phi ptr [ %i.cs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime12connect_unix0ECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %.phi.trans.insert.i, %bb.dq ]
  %i.bo = phi ptr [ %i.cu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime12connect_unix0ECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.bp, %bb.dq ]
  %.pn.i.i = phi { ptr, i32 } [ %.pn14.pn.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime12connect_unix0ECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.nr, %bb.dq ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtBI_5tokio5TokioE0ECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %i.bo) #32
          to label %.body.thread.i unwind label %bb.dv, !noalias !4262

bb.m:                                             ; preds = %bb.j
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 113 ; 12 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !34, !noalias !4263
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.560.i.i.i)
  switch i8 %.pre.i.i, label %default.unreachable142 [
    i8 0, label %._crit_edge187.i
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.o
    i8 5, label %bb.ay
  ]

._crit_edge187.i:                                 ; preds = %bb.m
  %.phi.trans.insert188.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre189.i = load ptr, ptr %.phi.trans.insert188.i, align 8, !noalias !4263
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge187.i, %.thread.i.i
  %i.bq = phi ptr [ %i.bb, %.thread.i.i ], [ %i.ae, %._crit_edge187.i ] ; 4 uses
  %i.br = phi ptr [ %i.bc, %.thread.i.i ], [ %i.ad, %._crit_edge187.i ] ; 4 uses
  %i.bs = phi ptr [ %i.be, %.thread.i.i ], [ %.phi.trans.insert.i, %._crit_edge187.i ] ; 4 uses
  %i.bt = phi ptr [ %i.bf, %.thread.i.i ], [ %i.az, %._crit_edge187.i ] ; 3 uses
  %i.bu = phi ptr [ %i.bd, %.thread.i.i ], [ %.pre189.i, %._crit_edge187.i ] ; 7 uses
  %i.bv = phi ptr [ %.sroa.12.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge187.i ] ; 4 uses
  %i.bw = phi ptr [ %i.bh, %.thread.i.i ], [ %i.bp, %._crit_edge187.i ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 0, ptr %i.bx, align 8, !noalias !4263
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.bu, ptr %i.by, align 8, !noalias !4263, !captures !39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.ca = load i8, ptr %i.bz, align 8, !range !31, !noalias !4264, !noundef !10
  switch i8 %i.ca, label %default.unreachable142 [
    i8 0, label %bb.q
    i8 1, label %bb.dr
    i8 2, label %.thread.i.i.i
  ]

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4263
  br label %bb.aj

bb.p:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !4263, !nonnull !10, !align !16, !noundef !10
  %i.ce = load ptr, ptr %i.bw, align 8, !noalias !4263, !nonnull !10, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 130
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !4264, !noundef !10
  %i.ch = getelementptr i8, ptr %i.bu, i64 144
  %.val21.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !4264, !nonnull !10, !noundef !10
  %i.ci = getelementptr i8, ptr %i.bu, i64 152
  %.val22.i.i.i = load i64, ptr %i.ci, align 8, !noalias !4264, !noundef !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !10, !noalias !4264, !nonnull !10
  %i.cl = invoke { ptr, ptr } %i.ck(ptr noundef nonnull %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val21.i.i.i, i64 noundef %.val22.i.i.i, i16 noundef %i.cg)
          to label %bb.r unwind label %bb.p, !noalias !4264 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.cm = extractvalue { ptr, ptr } %i.cl, 0
  %i.cn = extractvalue { ptr, ptr } %i.cl, 1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.cm, ptr %i.co, align 8, !noalias !4263
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.cn, ptr %i.cp, align 8, !noalias !4263
  br label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime12connect_unix0ECshnt8FRa5Rut_11native_ping.exit.i.i.i: ; preds = %.body31.i.i.i, %.body31.thread.i.i.i, %bb.ax, %.body.i.i.i
  %i.cq = phi ptr [ %i.es, %.body.i.i.i ], [ %i.ae, %bb.ax ], [ %i.ae, %.body31.i.i.i ], [ %i.ga, %.body31.thread.i.i.i ]
  %i.cr = phi ptr [ %i.et, %.body.i.i.i ], [ %i.ad, %bb.ax ], [ %i.ad, %.body31.i.i.i ], [ %i.gb, %.body31.thread.i.i.i ]
  %i.cs = phi ptr [ %i.eu, %.body.i.i.i ], [ %.phi.trans.insert.i, %bb.ax ], [ %.phi.trans.insert.i, %.body31.i.i.i ], [ %i.gc, %.body31.thread.i.i.i ]
  %i.ct = phi ptr [ %i.ev, %.body.i.i.i ], [ %.phi.trans.insert.i.i, %bb.ax ], [ %.phi.trans.insert.i.i, %.body31.i.i.i ], [ %i.gd, %.body31.thread.i.i.i ]
  %i.cu = phi ptr [ %i.ew, %.body.i.i.i ], [ %i.bp, %bb.ax ], [ %i.bp, %.body31.i.i.i ], [ %i.ge, %.body31.thread.i.i.i ]
  %.pn14.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn14.pn.i.i.i, %.body.i.i.i ], [ %i.nk, %bb.ax ], [ %i.nk, %.body31.i.i.i ], [ %.pn4.i.i.i.i, %.body31.thread.i.i.i ]
  store i8 2, ptr %i.ct, align 1, !noalias !4263
  br label %.body.i.i

.thread.i.i.i:                                    ; preds = %bb.n
  %i.cv = getelementptr i8, ptr %i.bu, i64 144
  %.val23.i.i.i = load ptr, ptr %i.cv, align 8, !noalias !4264, !nonnull !10, !noundef !10 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bu, i64 152
  %.val24.i.i.i = load i64, ptr %i.cw, align 8, !noalias !4264, !noundef !10 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %.val23.i.i.i, ptr %i.cx, align 8, !noalias !4263
  %.sroa.884.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %.val24.i.i.i, ptr %.sroa.884.0..sroa_idx.i.i.i, align 8, !noalias !4263
  %.sroa.1085.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  store i8 0, ptr %.sroa.1085.0..sroa_idx.i.i.i, align 8, !noalias !4263
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.752.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4263
  br label %.thread.i.i.i.i

bb.s:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #37
          to label %.noexc.i.i unwind label %bb.dq, !noalias !4262

.noexc.i.i:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #37
          to label %.noexc4.i.i unwind label %bb.dq, !noalias !4262

.noexc4.i.i:                                      ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.m
  %i.cy = phi ptr [ %i.ae, %bb.m ], [ %i.bq, %bb.r ] ; 7 uses
  %i.cz = phi ptr [ %i.ad, %bb.m ], [ %i.br, %bb.r ] ; 6 uses
end_hunk_0
