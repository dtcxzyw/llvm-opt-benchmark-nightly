Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_swarm-ca569b56598bf95c.libp2p_swarm.47fafd1ca36ece5e-cgu.8?download=true
inline.NumInlined: 206
inline.NumDeleted: 95
begin_hunk_0_@_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker10rank_dials:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.i)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !124
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc28:                                         ; preds = %.noexc27
  %i.eh = load i8, ptr %i.j, align 8, !range !12, !noalias !124, !noundef !4
  %.not.i.i = icmp eq i8 %i.eh, -1
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, label %.lr.ph.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit.i: ; preds = %.noexc28, %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.cd, ptr %i.n, align 8
  store i64 %i.ce, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !127
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit.i
  %i.ei = load i8, ptr %i.h, align 8, !range !12, !noalias !127, !noundef !4
  %.not10.i19.i = icmp eq i8 %i.ei, -1
  br i1 %.not10.i19.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit28.i, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.noexc29, %.noexc31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false), !noalias !127
  %.val.i.i21.i = load i8, ptr %i.g, align 8, !range !8, !alias.scope !128, !noalias !129, !noundef !4
  %i.ej = icmp eq i8 %.val.i.i21.i, 8
  br i1 %i.ej, label %bb.ah, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i20.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc30:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !127
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc31:                                         ; preds = %.noexc30
  %i.ek = load i8, ptr %i.h, align 8, !range !12, !noalias !127, !noundef !4
  %.not.i22.i = icmp eq i8 %i.ek, -1
  br i1 %.not.i22.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit28.i, label %.lr.ph.i20.i

bb.t:                                             ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(87) %i.bs, i64 87, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !124
  store i8 7, ptr %i.q, align 8
  %i.el = load i32, ptr %.sroa.4.0..sroa_idx.i, align 1 ; 5 uses
  %i.em = trunc i32 %i.el to i8                   ; 6 uses
  %i.en = lshr i32 %i.el, 8
  %i.eo = trunc i32 %i.en to i8                   ; 8 uses
  %i.ep = lshr i32 %i.el, 16
  %i.eq = trunc i32 %i.ep to i8                   ; 4 uses
  switch i32 %i.el, label %bb.u [
    i32 167772352, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i
    i32 150995136, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i
  ]

bb.u:                                             ; preds = %bb.t
  switch i8 %i.em, label %bb.x [
    i8 10, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i
    i8 -84, label %bb.v
    i8 -64, label %bb.w
    i8 127, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i
  ]

bb.v:                                             ; preds = %bb.u
  %i.er = and i8 %i.eo, -16
  %or.cond2.i.i = icmp eq i8 %i.er, 16
  br i1 %or.cond2.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.es = icmp eq i8 %i.eo, -88
  br i1 %i.es, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.et = icmp eq i8 %i.em, -87
  %i.eu = icmp eq i8 %i.eo, -2
  %or.cond5.i.i = and i1 %i.et, %i.eu
  %i.ev = icmp eq i32 %i.el, -1
  %or.cond30.i.i = or i1 %i.ev, %or.cond5.i.i
  br i1 %or.cond30.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  switch i8 %i.em, label %bb.ad [
    i8 -64, label %bb.z
    i8 -58, label %bb.aa
    i8 -53, label %bb.ab
    i8 100, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.ew = icmp eq i8 %i.eo, 0
  %i.ex = icmp eq i8 %i.eq, 2
  %or.cond38.i.i = and i1 %i.ew, %i.ex
  br i1 %or.cond38.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i, label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.ey = icmp eq i8 %i.eo, 51
  %i.ez = icmp eq i8 %i.eq, 100
  %or.cond39.i.i = and i1 %i.ey, %i.ez
  br i1 %or.cond39.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i, label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.fa = icmp eq i8 %i.eo, 0
  %i.fb = icmp eq i8 %i.eq, 113
  %or.cond40.i.i = and i1 %i.fa, %i.fb
  br i1 %or.cond40.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i, label %bb.ae

bb.ac:                                            ; preds = %bb.y
  %.old31.i.i = and i8 %i.eo, -64
  %.old32.i.i = icmp eq i8 %.old31.i.i, 64
  br i1 %.old32.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i, label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %.old34.old.i.i = icmp ugt i8 %i.em, -17
  br i1 %.old34.old.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.fc = icmp ne i8 %i.em, -64
  %i.fd = or i8 %i.eq, %i.eo
  %i.fe = icmp ne i8 %i.fd, 0
  %or.cond11.not.i.i = or i1 %i.fc, %i.fe
  %i.ff = icmp ne i8 %i.em, 0
  %spec.select.i.i = and i1 %i.ff, %or.cond11.not.i.i
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.u, %bb.t, %bb.t
  %.sroa.0.0.i.i = phi i1 [ true, %bb.t ], [ true, %bb.t ], [ false, %bb.ad ], [ false, %bb.ab ], [ %spec.select.i.i, %bb.ae ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.ac ], [ false, %bb.u ], [ false, %bb.aa ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.z ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.q)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %.sroa.0.0.i.i, label %bb.bh, label %_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addr.exit.thread

bb.af:                                            ; preds = %bb.av
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit28.i: ; preds = %.noexc31, %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.cd, ptr %i.m, align 8
  store i64 %i.ce, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !130
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit28.i
  %i.fh = load i8, ptr %i.f, align 8, !range !12, !noalias !130, !noundef !4
  %.not5.not.i.i = icmp eq i8 %i.fh, -1
  br i1 %.not5.not.i.i, label %.loopexit.i, label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %.noexc33, %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !130
  %i.fi = load i8, ptr %i.e, align 8, !range !8, !alias.scope !132, !noalias !131, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %.lr.ph.i29.i
  %i.fj = icmp eq i8 %i.fi, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130
  br i1 %i.fj, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %.noexc34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !130
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc35:                                         ; preds = %bb.ag
  %i.fk = load i8, ptr %i.f, align 8, !range !12, !noalias !130, !noundef !4
  %.not.not.i.i = icmp eq i8 %i.fk, -1
  br i1 %.not.not.i.i, label %.loopexit.i, label %.lr.ph.i29.i

bb.ah:                                            ; preds = %.lr.ph.i20.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.424.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(87) %i.bu, i64 87, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !127
  store i8 8, ptr %i.o, align 8
  %.sroa.01.0.copyload.i = load i128, ptr %.sroa.424.0..sroa_idx.i, align 1 ; 8 uses
  %i.fl = trunc i128 %.sroa.01.0.copyload.i to i16 ; 5 uses
  %i.fm = lshr i128 %.sroa.01.0.copyload.i, 16    ; 2 uses
  %i.fn = trunc i128 %i.fm to i16                 ; 7 uses
  switch i128 %.sroa.01.0.copyload.i, label %bb.ai [
    i128 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i
    i128 1329227995784915872903807060280344576, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i
  ]

bb.ai:                                            ; preds = %bb.ah
  %.sroa.3.0.extract.shift.i.i = lshr i128 %.sroa.01.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc i128 %.sroa.3.0.extract.shift.i.i to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i.i = lshr i128 %.sroa.01.0.copyload.i, 48 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i = trunc i128 %.sroa.4.0.extract.shift.i.i to i16 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i128 %.sroa.01.0.copyload.i, 64
  %.sroa.5.0.extract.trunc.i.i = trunc i128 %.sroa.5.0.extract.shift.i.i to i16
  %i.fo = call i16 @llvm.bswap.i16(i16 %i.fl)     ; 2 uses
  %i.fp = call i16 @llvm.bswap.i16(i16 %i.fn)     ; 2 uses
  %i.fq = icmp ne i16 %i.fn, %.sroa.3.0.extract.trunc.i.i ; 2 uses
  %2 = or i16 %i.fn, %i.fl
  %i.fr = icmp ne i16 %2, 0
  %i.fs = icmp ne i16 %.sroa.4.0.extract.trunc.i.i, %.sroa.5.0.extract.trunc.i.i
  %i.ft = or i1 %i.fs, %i.fr
  %or.cond2.i33.i = or i1 %i.fq, %i.ft
  %or.cond2.not.i.i = xor i1 %or.cond2.i33.i, true
  %i.fu = icmp eq i16 %.sroa.4.0.extract.trunc.i.i, 0
  %i.fv = and i128 %.sroa.01.0.copyload.i, 79226953588444722964369244160
  %i.fw = icmp eq i128 %i.fv, 79226953588444722964369244160
  %i.fx = and i1 %i.fw, %or.cond2.not.i.i
  %or.cond4.i.i = and i1 %i.fu, %i.fx
  br i1 %or.cond4.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fy = icmp eq i16 %i.fl, 25600
  %i.fz = icmp eq i16 %i.fn, -25601
  %or.cond5.i34.i = and i1 %i.fy, %i.fz
  %i.ga = icmp eq i16 %.sroa.3.0.extract.trunc.i.i, 256
  %or.cond6.i.i = and i1 %i.ga, %or.cond5.i34.i
  br i1 %or.cond6.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = icmp ne i16 %i.fl, 1
  %i.gc = or i128 %.sroa.4.0.extract.shift.i.i, %i.fm
  %i.gd = and i128 %i.gc, 65535
  %i.ge = icmp ne i128 %i.gd, 0
  %i.gf = or i1 %i.gb, %i.ge
  %or.cond9.not.i.i = or i1 %i.fq, %i.gf
  br i1 %or.cond9.not.i.i, label %bb.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i

bb.al:                                            ; preds = %bb.ak
  %i.gg = icmp eq i16 %i.fl, 288                  ; 2 uses
  %i.gh = icmp ult i16 %i.fp, 512
  %or.cond12.i.i = and i1 %i.gg, %i.gh
  br i1 %or.cond12.i.i, label %switch.early.test.i.i, label %bb.am

switch.early.test.i.i:                            ; preds = %bb.al
  switch i128 %.sroa.01.0.copyload.i, label %bb.an [
    i128 2658455991569831745807614120577466656, label %bb.am
    i128 1329227995784915872903807060297122080, label %bb.am
  ]

bb.am:                                            ; preds = %bb.ao, %bb.an, %switch.early.test.i.i, %switch.early.test.i.i, %bb.al
  %i.gi = icmp eq i16 %i.fn, -18419
  %.sroa.0.0.i.i.i = and i1 %i.gg, %i.gi
  %i.gj = and i16 %i.fo, -512
  %i.gk = icmp eq i16 %i.gj, -1024
  %or.cond.i.i = or i1 %i.gk, %.sroa.0.0.i.i.i
  br i1 %or.cond.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i, label %bb.ap

bb.an:                                            ; preds = %switch.early.test.i.i
  %i.gl = icmp eq i16 %i.fn, 768
  br i1 %i.gl, label %bb.am, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gm = icmp eq i16 %i.fn, 1024
  %i.gn = icmp eq i16 %.sroa.3.0.extract.trunc.i.i, 4609
  %i.go = and i1 %i.gm, %i.gn
  %i.gp = and i16 %i.fp, 496
  %i.gq = icmp eq i16 %i.gp, 32
  %or.cond29.i.i = or i1 %i.go, %i.gq
  br i1 %or.cond29.i.i, label %bb.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i

bb.ap:                                            ; preds = %bb.am
  %i.gr = and i16 %i.fo, -64
  %i.gs = icmp ne i16 %i.gr, -384
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEECs6b9j1MKPRPC_12libp2p_swarm.exit37.i: ; preds = %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ah
  %.sroa.0.0.i32.i = phi i1 [ %i.gs, %bb.ap ], [ false, %bb.ah ], [ false, %bb.ah ], [ false, %bb.ao ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.am ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.o)
          to label %_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.i:                                      ; preds = %.noexc35, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.cd, ptr %i.l, align 8
  store i64 %i.ce, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %.loopexit.i
  %i.gt = load i8, ptr %i.d, align 8, !range !12, !noalias !133, !noundef !4
  %.not12.i.i = icmp eq i8 %i.gt, -1
  br i1 %.not12.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.noexc37, %.noexc39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !133
  %i.gu = load i8, ptr %i.c, align 8, !range !8, !alias.scope !135, !noalias !136, !noundef !4
  %.off3.i.i.i.i = add nsw i8 %i.gu, -1
  %switch4.i.i.i.i = icmp ult i8 %.off3.i.i.i.i, 3
  br i1 %switch4.i.i.i.i, label %_RNCNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addrs1_0B9_.exit.i.i.i, label %_RNCNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addrs1_0B9_.exit.thread.i.i.i

_RNCNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addrs1_0B9_.exit.thread.i.i.i: ; preds = %.lr.ph.i38.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit

.noexc38:                                         ; preds = %_RNCNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addrs1_0B9_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134
  br label %bb.aq

_RNCNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addrs1_0B9_.exit.i.i.i: ; preds = %.lr.ph.i38.i
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.bx, align 8, !noalias !136 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134
  %.not.i.i.i = icmp eq i64 %.sroa.04.0.copyload.i.i.i, -2
  br i1 %.not.i.i.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_RNCNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addrs1_0B9_.exit.i.i.i, %.noexc38
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %bb.aq
  %i.gv = load i8, ptr %i.d, align 8, !range !12, !noalias !133, !noundef !4
  %.not.i39.i = icmp eq i8 %i.gv, -1
  br i1 %.not.i39.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, label %.lr.ph.i38.i

bb.ar:                                            ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addr.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs6b9j1MKPRPC_12libp2p_swarm.exit.i: ; preds = %.noexc39, %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addr.exit.thread

bb.as:                                            ; preds = %_RNCNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addrs1_0B9_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.04.0.copyload.i.i.i, ptr %i.k, align 8
  %i.gw = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !4 ; 3 uses
  %i.gx = load i64, ptr %i.bz, align 8            ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 9
  br i1 %i.gy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gz = load i64, ptr %i.gw, align 1
  %i.ha = xor i64 %i.gz, 8317981851476258668
  %i.hb = getelementptr i8, ptr %i.gw, i64 8
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = zext i8 %i.hc to i64
  %i.he = xor i64 %i.hd, 116
  %i.hf = or i64 %i.ha, %i.he
  %i.hg = icmp ne i64 %i.hf, 0
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hj = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gw, i64 noundef %i.gx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10)
          to label %._crit_edge.i unwind label %bb.av

._crit_edge.i:                                    ; preds = %bb.au
  %.pre.i = load i64, ptr %i.k, align 8, !range !7, !alias.scope !137
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #13
          to label %.body unwind label %bb.af

bb.aw:                                            ; preds = %._crit_edge.i, %bb.at
  %i.hl = phi i64 [ %.sroa.04.0.copyload.i.i.i, %bb.at ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.0.1.i = phi i1 [ true, %bb.at ], [ %i.hj, %._crit_edge.i ]
  %i.hm = icmp eq i64 %i.hl, -1
  br i1 %i.hm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6b9j1MKPRPC_12libp2p_swarm.exit.i.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6b9j1MKPRPC_12libp2p_swarm.exit.i.i: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6b9j1MKPRPC_12libp2p_swarm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6b9j1MKPRPC_12libp2p_swarm.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6b9j1MKPRPC_12libp2p_swarm.exit.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.sroa.0.1.i, label %bb.bh, label %_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker14is_global_addr.exit.thread

bb.ba:                                            ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.hp = load i64, ptr %i.ap, align 8, !alias.scope !138, !noalias !139, !noundef !4 ; 3 uses
  %i.hq = load i64, ptr %i.an, align 8, !range !5, !alias.scope !138, !noalias !139, !noundef !4
  %i.hr = icmp eq i64 %i.hp, %i.hq
  br i1 %i.hr, label %bb.bb, label %bb.bu
end_hunk_0
