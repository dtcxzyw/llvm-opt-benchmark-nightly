inline.NumInlined: 291
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvCslVwgvvnzcNb_13syntax_bridge25token_tree_to_syntax_node:bb.a
bb.ft:                                            ; preds = %bb.j
  %i.ox = lshr i32 %.val, 16
  %i.oy = trunc nuw nsw i32 %i.ox to i16
  invoke void @_RNvMs_NtCsjJXvCMGntp8_6syntax11syntax_nodeNtB4_17SyntaxTreeBuilder10start_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bi, i16 noundef range(i16 0, 329) %i.oy)
          to label %_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink10start_node.exit unwind label %.loopexit

bb.fu:                                            ; preds = %bb.g
  invoke void @_RNvMs_NtCsjJXvCMGntp8_6syntax11syntax_nodeNtB4_17SyntaxTreeBuilder11finish_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bi)
          to label %_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink10start_node.exit unwind label %.loopexit

bb.fv:                                            ; preds = %bb.f
  %i.oz = load ptr, ptr %i.cl, align 8, !noalias !298, !nonnull !8, !noundef !8
  %i.pa = getelementptr inbounds nuw [24 x i8], ptr %i.oz, i64 %i.ct ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !noalias !298, !nonnull !8, !noundef !8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !noalias !298, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, i64 noundef %i.pe, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fw unwind label %.loopexit

_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink10start_node.exit: ; preds = %bb.fu, %bb.ft, %_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink11float_split.exit, %_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink5token.exit, %_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink5error.exit
  %.not19 = icmp eq ptr %i.cp, %i.bo
  br i1 %.not19, label %._crit_edge, label %bb.e

bb.fw:                                            ; preds = %bb.fv
  %i.pf = load i64, ptr %i.ar, align 8, !range !20, !noundef !8
  %i.pg = trunc nuw i64 %i.pf to i1
  %i.ph = load i64, ptr %i.cm, align 8, !range !393, !noundef !8 ; 3 uses
  br i1 %i.pg, label %bb.fx, label %bb.fy, !prof !13

bb.fx:                                            ; preds = %bb.fw
  %i.pi = load i64, ptr %i.cn, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ph, i64 %i.pi) #20
          to label %bb.gb unwind label %.body.thread655

bb.fy:                                            ; preds = %bb.fw
  %i.pj = load ptr, ptr %i.cn, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.pk = icmp ule i64 %i.pe, %i.ph
  call void @llvm.assume(i1 %i.pk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.not = icmp eq i64 %i.pe, 0
  br i1 %.not, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.ga, %bb.fy
  store i64 %i.ph, ptr %i.at, align 8
  store ptr %i.pj, ptr %.sroa.415.0..sroa_idx, align 8
  store i64 %i.pe, ptr %.sroa.616.0..sroa_idx, align 8
  %i.pl = load i32, ptr %i.bh, align 8, !alias.scope !399, !noalias !402, !noundef !8
  invoke void @_RNvMs_NtCsjJXvCMGntp8_6syntax11syntax_nodeNtB4_17SyntaxTreeBuilder5error(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.at, i32 noundef %i.pl)
          to label %_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink5error.exit unwind label %.loopexit

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pj, ptr nonnull align 1 %i.pc, i64 %i.pe, i1 false)
  br label %bb.fz

_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink5error.exit: ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %_RNvMs9_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink10start_node.exit

bb.gb:                                            ; preds = %bb.fx
  unreachable

_RNvMs8_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink6finish.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt6buffer6CursorECslVwgvvnzcNb_13syntax_bridge.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6output6OutputECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(48) %i.av)
          to label %bb.gc unwind label %bb.c

bb.gc:                                            ; preds = %_RNvMs8_CslVwgvvnzcNb_13syntax_bridgeNtB5_10TtTreeSink6finish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser5input5InputECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

.body.thread650:                                  ; preds = %bb.ac, %.peel.begin.i114.i.thread, %.loopexit, %.loopexit.split-lp.i39.thread, %.loopexit.split-lp.i, %bb.dl, %.loopexit.split-lp.i39, %.body.thread655
  %eh.lpad-body653 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread655 ], [ %lpad.thr_comm.split-lp667, %.loopexit.split-lp.i39 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi.i664, %.loopexit.split-lp.i39.thread ], [ %.pn52.i, %.loopexit.split-lp.i ], [ %lpad.thr_comm.split-lp660, %bb.dl ], [ %lpad.thr_comm659, %.peel.begin.i114.i.thread ], [ %.pn52.i, %bb.ac ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCslVwgvvnzcNb_13syntax_bridge10TtTreeSinkEBD_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.au) #17
          to label %.body.thread unwind label %bb.gd

bb.gd:                                            ; preds = %.body.thread650, %.body.thread, %bb.b
  %i.pm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ge:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn21
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCslVwgvvnzcNb_13syntax_bridge31parse_to_token_tree_static_span(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i8 noundef range(i8 0, 4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7151.i = alloca [20 x i8], align 8       ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [20 x i8], align 4                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 12 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [44 x i8], align 4                ; 6 uses
  %i.o = alloca [168 x i8], align 8               ; 20 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [120 x i8], align 8               ; 18 uses
  %i.r = alloca [88 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.r, i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load i64, ptr %i.s, align 8, !noundef !8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser9lexed_str8LexedStrECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(88) %i.r)
  br label %bb.cm

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %i.r, i64 88, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 4 uses
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 116
  store i8 1, ptr %i.x, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !407
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i8 3, ptr %i.z, align 4, !noalias !407
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder3new(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.o, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(44) %i.n)
          to label %.noexc unwind label %bb.cn

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !407
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.v, align 8, !alias.scope !409, !noalias !412, !noundef !8 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !409, !noalias !412, !noundef !8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 4611686018427387904
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nsw i64 %i.ac, -1                   ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %.noexc._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.5150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.az = phi i64 [ %i.ae, %.lr.ph.i ], [ %i.hb, %.backedge.i ]
  %i.ba = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.gy, %.backedge.i ] ; 9 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.v, align 8, !alias.scope !409, !noalias !412
  %i.bc = invoke { i64, i64 } @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr10text_range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, i64 noundef %i.ba)
          to label %.noexc.i unwind label %.thread166.loopexit.split-lp.loopexit.i, !noalias !414 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.bd = extractvalue { i64, i64 } %i.bc, 0      ; 4 uses
  %i.be = extractvalue { i64, i64 } %i.bc, 1      ; 3 uses
  %5 = icmp ugt i64 %i.bd, 4294967295
  %i.bf = icmp ugt i64 %i.be, 4294967295
  %or.cond.i = select i1 %5, i1 true, i1 %i.bf
  br i1 %or.cond.i, label %.noexc._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %.not.i.i = icmp samesign ugt i64 %i.bd, %i.be
  br i1 %.not.i.i, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
          to label %.noexc93.i unwind label %.thread166.loopexit.split-lp.loopexit.split-lp.i, !noalias !414

.noexc93.i:                                       ; preds = %bb.f
  unreachable

.thread166.loopexit.i:                            ; preds = %bb.cj, %bb.ck
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread166.loopexit.split-lp.loopexit.i:          ; preds = %bb.d
  %lpad.loopexit205.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread166.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.f
  %lpad.loopexit.split-lp206.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.noexc._crit_edge.i:                              ; preds = %.backedge.i, %.noexc.i, %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !407, !noundef !8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %._crit_edge256.i, label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %.noexc._crit_edge.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  br label %bb.cj

.loopexit200.i:                                   ; preds = %.preheader.i
  %lpad.loopexit201.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ci, %bb.ch, %.noexc120.i, %bb.bg, %bb.bf, %bb.bc, %.noexc111.i, %bb.as, %bb.aq, %.noexc104.i, %bb.ag, %.noexc102.i, %bb.ad, %bb.ac, %bb.w, %bb.v, %bb.t, %bb.h, %bb.g
  %lpad.loopexit208.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.be, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_char.exit.i, %.invoke.i, %.invoke352.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !407
  store i64 %i.ba, ptr %i.m, align 8, !noalias !407
  %i.bk = invoke noundef range(i16 0, 329) i16 @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr4kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, i64 noundef %i.ba)
          to label %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414 ; 5 uses

_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i: ; preds = %bb.g
  switch i16 %i.bk, label %bb.ac [
    i16 150, label %bb.h
    i16 153, label %bb.ad
    i16 53, label %bb.i
    i16 2, label %bb.i
    i16 3, label %bb.i
    i16 4, label %bb.i
    i16 5, label %bb.i
    i16 6, label %bb.i
    i16 7, label %bb.i
    i16 8, label %bb.i
    i16 9, label %bb.i
    i16 10, label %bb.i
    i16 11, label %bb.i
    i16 12, label %bb.i
    i16 13, label %bb.i
    i16 14, label %bb.i
    i16 15, label %bb.i
    i16 16, label %bb.i
    i16 17, label %bb.i
    i16 18, label %bb.i
    i16 19, label %bb.i
    i16 20, label %bb.i
    i16 21, label %bb.i
    i16 22, label %bb.i
    i16 23, label %bb.i
    i16 25, label %bb.i
    i16 26, label %bb.i
    i16 27, label %bb.i
    i16 28, label %bb.i
    i16 29, label %bb.i
    i16 30, label %bb.i
    i16 31, label %bb.i
    i16 32, label %bb.i
    i16 33, label %bb.i
    i16 34, label %bb.i
    i16 35, label %bb.i
    i16 36, label %bb.i
    i16 37, label %bb.i
    i16 38, label %bb.i
    i16 39, label %bb.i
    i16 40, label %bb.i
    i16 41, label %bb.i
    i16 42, label %bb.i
    i16 43, label %bb.i
    i16 44, label %bb.i
    i16 45, label %bb.i
    i16 46, label %bb.i
    i16 47, label %bb.i
    i16 48, label %bb.i
    i16 49, label %bb.i
    i16 50, label %bb.i
    i16 51, label %bb.i
    i16 52, label %bb.i
  ]

bb.h:                                             ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i
  invoke void @_RNvXs3_CslVwgvvnzcNb_13syntax_bridgeNtB5_18StaticRawConverterNtB5_14TokenConverter19convert_doc_comment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.o)
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

bb.i:                                             ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE4kind.exit.i
  %i.bl = load ptr, ptr %i.ag, align 8, !noalias !407, !nonnull !8, !noundef !8 ; 2 uses
  %i.bm = load i64, ptr %i.ah, align 8, !noalias !407, !noundef !8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.loopexit204.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.i
  %.idx199.i = shl nuw nsw i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx199.i
  %i.bp = load i64, ptr %i.ai, align 8, !range !14, !noalias !407, !noundef !8
  %i.bq = load i64, ptr %i.aj, align 8, !noalias !407, !noundef !8 ; 2 uses
  %i.br = load ptr, ptr %i.ak, align 8, !noalias !407, !nonnull !8 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_18StaticRawConverterEs_0E0E0E0B5G_.exit.i.i, %.lr.ph.i.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_18StaticRawConverterEs_0E0E0E0B5G_.exit.i.i ] ; 2 uses
  %i.bs = phi ptr [ %i.bo, %.lr.ph.i.preheader.i ], [ %i.bt, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_18StaticRawConverterEs_0E0E0E0B5G_.exit.i.i ]
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8 ; 3 uses
  %.val.i.i = load i64, ptr %i.bt, align 8, !noalias !415, !noundef !8 ; 5 uses
  %i.bu = icmp ult i64 %.val.i.i, %i.bq           ; 3 uses
  switch i64 %i.bp, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
  ]

default.unreachable:                              ; preds = %.noexc95.i, %.lr.ph.i.i
  unreachable

bb.j:                                             ; preds = %.lr.ph.i.i
  br i1 %i.bu, label %bb.m, label %.invoke352.i

bb.k:                                             ; preds = %.lr.ph.i.i
  br i1 %i.bu, label %bb.n, label %.invoke352.i

bb.l:                                             ; preds = %.lr.ph.i.i
  br i1 %i.bu, label %bb.o, label %.invoke352.i

bb.m:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %.val.i.i ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8, !range !18, !noalias !414, !noundef !8
  %i.bx = icmp eq i8 %i.bw, 3
  br i1 %i.bx, label %.noexc95.i, label %.invoke.i, !prof !19

bb.n:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.val.i.i ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !range !18, !noalias !414, !noundef !8
  %i.ca = icmp eq i8 %i.bz, 3
  br i1 %i.ca, label %.noexc95.i, label %.invoke.i, !prof !19

bb.o:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %.val.i.i ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !range !18, !noalias !414, !noundef !8
  %i.cd = icmp eq i8 %i.cc, 3
  br i1 %i.cd, label %.noexc95.i, label %.invoke.i, !prof !19

.invoke352.i:                                     ; preds = %bb.l, %bb.k, %bb.j
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
          to label %.cont353.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !414

.cont353.i:                                       ; preds = %.invoke352.i
  unreachable

.invoke.i:                                        ; preds = %bb.o, %bb.n, %bb.m
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !414

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.noexc95.i:                                       ; preds = %bb.o, %bb.n, %bb.m
  %.sink.i138.i = phi ptr [ %i.by, %bb.n ], [ %i.cb, %bb.o ], [ %i.bv, %bb.m ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink.i138.i, i64 1
  %.sroa.0.0.i139.i = load i8, ptr %i.ce, align 1, !range !18, !noalias !414, !noundef !8
  switch i8 %.sroa.0.0.i139.i, label %default.unreachable [
    i8 0, label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_18StaticRawConverterEs_0B4_.exit.i.i.i.i.i
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_18StaticRawConverterEs_0E0E0E0B5G_.exit.i.i
  ]

bb.p:                                             ; preds = %.noexc95.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_18StaticRawConverterEs_0B4_.exit.i.i.i.i.i

bb.q:                                             ; preds = %.noexc95.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_18StaticRawConverterEs_0B4_.exit.i.i.i.i.i

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_18StaticRawConverterEs_0B4_.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc95.i
  %.sink1.i.i.i.i.i.i = phi i16 [ 10, %bb.q ], [ 8, %bb.p ], [ 6, %.noexc95.i ]
  %i.cf = icmp eq i16 %i.bk, %.sink1.i.i.i.i.i.i
  br i1 %i.cf, label %.preheader.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_18StaticRawConverterEs_0E0E0E0B5G_.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_18StaticRawConverterEs_0E0E0E0B5G_.exit.i.i: ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_18StaticRawConverterEs_0B4_.exit.i.i.i.i.i, %.noexc95.i
  %i.cg = icmp eq ptr %i.bl, %i.bt
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.cg, label %.loopexit204.i, label %.lr.ph.i.i

.loopexit204.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_18StaticRawConverterEs_0E0E0E0B5G_.exit.i.i, %bb.i
  switch i16 %i.bk, label %bb.u [
    i16 5, label %bb.t
    i16 7, label %bb.r
    i16 9, label %bb.s
  ]

bb.r:                                             ; preds = %.loopexit204.i
  br label %bb.t

bb.s:                                             ; preds = %.loopexit204.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit204.i
  %.sroa.016.0.i = phi i8 [ 2, %bb.s ], [ 1, %bb.r ], [ 0, %.loopexit204.i ]
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4open(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.o, i8 noundef %.sroa.016.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.w)
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

bb.u:                                             ; preds = %.loopexit204.i
  %.not.i = icmp eq i64 %i.bb, %i.az
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = invoke noundef range(i16 0, 329) i16 @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr4kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, i64 noundef %i.bb)
          to label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_18StaticRawConverterEs0_0B4_.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_18StaticRawConverterEs0_0B4_.exit.i: ; preds = %bb.v
  %switch.tableidx = add nsw i16 %i.ch, -2        ; 2 uses
  %i.ci = icmp ult i16 %switch.tableidx, 153
  br i1 %i.ci, label %switch.lookup, label %bb.w

switch.lookup:                                    ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_18StaticRawConverterEs0_0B4_.exit.i
  %i.cj = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvCslVwgvvnzcNb_13syntax_bridge31parse_to_token_tree_static_span, i64 %i.cj
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.w

end_hunk_0
begin_hunk_1_@_RNvCslVwgvvnzcNb_13syntax_bridge31parse_to_token_tree_static_span:bb.a
    i16 149, label %bb.as
    i16 154, label %bb.bd
  ]

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !407
  %i.dz = invoke { ptr, i64 } @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr4text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, i64 noundef %i.ba)
          to label %.noexc104.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414 ; 2 uses

.noexc104.i:                                      ; preds = %bb.ag
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
  invoke void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.eb)
          to label %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit106.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit106.i: ; preds = %.noexc104.i
  %i.ec = load i8, ptr %i.h, align 8, !range !103, !noalias !407, !noundef !8 ; 2 uses
  %i.ed = icmp samesign ugt i8 %i.ec, 23
  %i.ee = zext nneg i8 %i.ec to i64               ; 2 uses
  %i.ef = add nsw i64 %i.ee, -23
  %i.eg = select i1 %i.ed, i64 %i.ef, i64 0
  switch i64 %i.eg, label %bb.ah [
    i64 0, label %bb.ak
    i64 1, label %bb.ai
    i64 2, label %bb.aj
  ]

bb.ah:                                            ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit.i, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit122.i, %bb.aw, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit106.i
  unreachable

bb.ai:                                            ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit106.i
  %i.eh = load ptr, ptr %i.at, align 8, !noalias !407, !nonnull !8, !noundef !8
  %i.ei = load i64, ptr %i.au, align 8, !noalias !407, !noundef !8
  br label %bb.ak

bb.aj:                                            ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit106.i
  %i.ej = load ptr, ptr %i.at, align 8, !noalias !407, !nonnull !8, !noundef !8
  %i.ek = load i64, ptr %i.au, align 8, !noalias !407, !noundef !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit106.i
  %.sroa.035.0.i = phi ptr [ %i.el, %bb.aj ], [ %i.eh, %bb.ai ], [ %i.av, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit106.i ]
  %.sroa.436.0.i = phi i64 [ %i.ek, %bb.aj ], [ %i.ei, %bb.ai ], [ %i.ee, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit106.i ]
  %i.em = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.035.0.i, i64 noundef %.sroa.436.0.i)
          to label %bb.ao unwind label %bb.al, !noalias !414

bb.al:                                            ; preds = %bb.ak
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.eo = load i8, ptr %i.h, align 8, !range !103, !alias.scope !430, !noalias !407, !noundef !8
  %switch.i.i.i = icmp samesign ult i8 %i.eo, 25
  br i1 %switch.i.i.i, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.ep = load ptr, ptr %i.at, align 8, !alias.scope !437, !noalias !407, !nonnull !8, !noundef !8
  %i.eq = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !noalias !438
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.an, label %.thread.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at) #21
          to label %.thread.i unwind label %bb.ar, !noalias !414

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.432.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !414
  store ptr %i.em, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !407
  store i8 0, ptr %.sroa.533.0..sroa_idx.i, align 4, !noalias !407
  store i32 2, ptr %i.k, align 8, !noalias !407
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.es = load i8, ptr %i.h, align 8, !range !103, !alias.scope !445, !noalias !407, !noundef !8
  %switch.i.i108.i = icmp samesign ult i8 %i.es, 25
  br i1 %switch.i.i108.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.et = load ptr, ptr %i.at, align 8, !alias.scope !452, !noalias !407, !nonnull !8, !noundef !8
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !noalias !453
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !407
  br label %bb.ci

bb.ar:                                            ; preds = %.thread.i, %bb.cd, %bb.by, %bb.bs, %bb.bn, %bb.av, %bb.an
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !414
  unreachable

bb.as:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !407
  %i.ex = invoke { ptr, i64 } @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr4text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, i64 noundef %i.ba)
          to label %.noexc111.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414 ; 2 uses

.noexc111.i:                                      ; preds = %bb.as
  %i.ey = extractvalue { ptr, i64 } %i.ex, 0      ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %i.ex, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  invoke void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ey, i64 noundef %i.ez)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

bb.at:                                            ; preds = %bb.az
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.fb = load i8, ptr %i.g, align 8, !range !103, !alias.scope !460, !noalias !407, !noundef !8
  %switch.i.i114.i = icmp samesign ult i8 %i.fb, 25
  br i1 %switch.i.i114.i, label %.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.fc = load ptr, ptr %i.aq, align 8, !alias.scope !467, !noalias !407, !nonnull !8, !noundef !8
  %i.fd = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !468
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.av, label %.thread.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq) #21
          to label %.thread.i unwind label %bb.ar, !noalias !414

bb.aw:                                            ; preds = %.noexc111.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.w, i64 20, i1 false), !alias.scope !469, !noalias !414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !407
  %i.ff = load i8, ptr %i.g, align 8, !range !103, !noalias !407, !noundef !8 ; 2 uses
  %i.fg = icmp samesign ugt i8 %i.ff, 23
  %i.fh = zext nneg i8 %i.ff to i64               ; 2 uses
  %i.fi = add nsw i64 %i.fh, -23
  %i.fj = select i1 %i.fg, i64 %i.fi, i64 0
  switch i64 %i.fj, label %bb.ah [
    i64 0, label %bb.az
    i64 1, label %bb.ax
    i64 2, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.fk = load ptr, ptr %i.aq, align 8, !noalias !407, !nonnull !8, !noundef !8
  %i.fl = load i64, ptr %i.ar, align 8, !noalias !407, !noundef !8
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.fm = load ptr, ptr %i.aq, align 8, !noalias !407, !nonnull !8, !noundef !8
  %i.fn = load i64, ptr %i.ar, align 8, !noalias !407, !noundef !8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.037.0.i = phi ptr [ %i.fo, %bb.ay ], [ %i.fk, %bb.ax ], [ %i.as, %bb.aw ]
  %.sroa.438.0.i = phi i64 [ %i.fn, %bb.ay ], [ %i.fl, %bb.ax ], [ %i.fh, %bb.aw ]
  invoke void @_RNvCs4dcH4YgJDq_2tt16token_to_literal(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.037.0.i, i64 noundef %.sroa.438.0.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.f)
          to label %bb.ba unwind label %bb.at, !noalias !414

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !407
  store i32 0, ptr %i.k, align 8, !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !407
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.fp = load i8, ptr %i.g, align 8, !range !103, !alias.scope !479, !noalias !407, !noundef !8
  %switch.i.i117.i = icmp samesign ult i8 %i.fp, 25
  br i1 %switch.i.i117.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.fq = load ptr, ptr %i.aq, align 8, !alias.scope !486, !noalias !407, !nonnull !8, !noundef !8
  %i.fr = atomicrmw sub ptr %i.fq, i64 1 release, align 8, !noalias !487
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !407
  br label %bb.ci

bb.bd:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !407
  %.not81.i = icmp eq i64 %i.bd, 4294967295
  br i1 %.not81.i, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #20
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !414

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.440.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !414
  store i32 39, ptr %i.am, align 4, !noalias !407
  store i8 1, ptr %.sroa.541.0..sroa_idx.i, align 4, !noalias !407
  store i32 1, ptr %i.d, align 8, !noalias !407
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.d)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7151.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !407
  %i.ft = invoke { ptr, i64 } @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr4text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, i64 noundef %i.ba)
          to label %.noexc120.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414 ; 2 uses

.noexc120.i:                                      ; preds = %bb.bg
  %i.fu = extractvalue { ptr, i64 } %i.ft, 0      ; 2 uses
  %i.fv = extractvalue { ptr, i64 } %i.ft, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  invoke void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fu, i64 noundef %i.fv)
          to label %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit122.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit122.i: ; preds = %.noexc120.i
  %i.fw = load i8, ptr %i.c, align 8, !range !103, !noalias !407, !noundef !8 ; 2 uses
  %i.fx = icmp samesign ugt i8 %i.fw, 23
  %i.fy = zext nneg i8 %i.fw to i64               ; 2 uses
  %i.fz = add nsw i64 %i.fy, -23
  %i.ga = select i1 %i.fx, i64 %i.fz, i64 0
  switch i64 %i.ga, label %bb.ah [
    i64 0, label %bb.bj
    i64 1, label %bb.bh
    i64 2, label %bb.bi
  ]

bb.bh:                                            ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit122.i
  %i.gb = load ptr, ptr %i.an, align 8, !noalias !407, !nonnull !8, !noundef !8
  %i.gc = load i64, ptr %i.ao, align 8, !noalias !407, !noundef !8
  br label %bb.bj

bb.bi:                                            ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit122.i
  %i.gd = load ptr, ptr %i.an, align 8, !noalias !407, !nonnull !8, !noundef !8
  %i.ge = load i64, ptr %i.ao, align 8, !noalias !407, !noundef !8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit122.i
  %.sroa.047.0.i = phi ptr [ %i.gf, %bb.bi ], [ %i.gb, %bb.bh ], [ %i.ap, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit122.i ] ; 3 uses
  %.sroa.650.0.i = phi i64 [ %i.ge, %bb.bi ], [ %i.gc, %bb.bh ], [ %i.fy, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit122.i ] ; 5 uses
  %.not.i123.i = icmp ugt i64 %.sroa.650.0.i, 1
  br i1 %.not.i123.i, label %bb.bk, label %.split.i.i

.split.i.i:                                       ; preds = %bb.bj
  %i.gg = icmp eq i64 %.sroa.650.0.i, 1
  br i1 %i.gg, label %bb.bo, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.047.0.i, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !488, !noalias !414, !noundef !8
  %i.gj = icmp sgt i8 %i.gi, -65
  br i1 %i.gj, label %bb.bo, label %bb.bp

bb.bl:                                            ; preds = %bb.bs, %.loopexit.split-lp211.i, %.loopexit210.i
  %.pn.i = phi { ptr, i32 } [ %i.gr, %bb.bs ], [ %lpad.loopexit212.i, %.loopexit210.i ], [ %lpad.loopexit.split-lp213.i, %.loopexit.split-lp211.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.gk = load i8, ptr %i.c, align 8, !range !103, !alias.scope !497, !noalias !407, !noundef !8
  %switch.i.i126.i = icmp samesign ult i8 %i.gk, 25
  br i1 %switch.i.i126.i, label %.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.gl = load ptr, ptr %i.an, align 8, !alias.scope !504, !noalias !407, !nonnull !8, !noundef !8
  %i.gm = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !505
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.bn, label %.thread.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an) #21
          to label %.thread.i unwind label %bb.ar, !noalias !414

.loopexit210.i:                                   ; preds = %bb.bo
  %lpad.loopexit212.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp211.i:                          ; preds = %bb.bp
  %lpad.loopexit.split-lp213.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bo:                                            ; preds = %bb.bk, %.split.i.i
  %i.go = add i64 %.sroa.650.0.i, -1
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.047.0.i, i64 1
  %i.gq = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gp, i64 noundef %i.go)
          to label %bb.bq unwind label %.loopexit210.i, !noalias !414 ; 3 uses

bb.bp:                                            ; preds = %bb.bk, %.split.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.047.0.i, i64 noundef %.sroa.650.0.i, i64 noundef 1, i64 noundef %.sroa.650.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #20
          to label %bb.aa unwind label %.loopexit.split-lp211.i, !noalias !414

bb.bq:                                            ; preds = %bb.bo
  %.not83.not.i = icmp samesign ult i64 %i.bd, %i.be
  br i1 %.not83.not.i, label %bb.bt, label %bb.br, !prof !19

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #20
          to label %bb.aa unwind label %bb.bs, !noalias !414

bb.bs:                                            ; preds = %bb.br
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslVwgvvnzcNb_13syntax_bridge(ptr nonnull %i.gq) #17
          to label %bb.bl unwind label %bb.ar, !noalias !414

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7151.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !414
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.gs = load i8, ptr %i.c, align 8, !range !103, !alias.scope !512, !noalias !407, !noundef !8
  %switch.i.i129.i = icmp samesign ult i8 %i.gs, 25
  br i1 %switch.i.i129.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.gt = load ptr, ptr %i.an, align 8, !alias.scope !519, !noalias !407, !nonnull !8, !noundef !8
  %i.gu = atomicrmw sub ptr %i.gt, i64 1 release, align 8, !noalias !520
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %bb.bv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i unwind label %bb.by, !noalias !414

bb.bw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i: ; preds = %bb.bv, %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !407
  store i32 2, ptr %i.b, align 8, !noalias !407
  store ptr %i.gq, ptr %.sroa.5150.0..sroa_idx.i, align 8, !noalias !407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7151.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7151.i, i64 20, i1 false), !noalias !407
  store i8 0, ptr %.sroa.8152.0..sroa_idx.i, align 4, !noalias !407
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b)
          to label %bb.bx unwind label %bb.bw, !noalias !414

bb.bx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7151.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !407
  br label %.backedge.i

bb.by:                                            ; preds = %bb.bv
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECslVwgvvnzcNb_13syntax_bridge(i32 2, ptr nonnull %i.gq) #17
          to label %.thread.i unwind label %bb.ar, !noalias !414

.backedge.i:                                      ; preds = %bb.ab, %bb.ci, %bb.bx, %bb.af, %bb.t, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !407
  %i.gy = load i64, ptr %i.v, align 8, !alias.scope !409, !noalias !412, !noundef !8 ; 2 uses
  %i.gz = load i64, ptr %i.aa, align 8, !alias.scope !409, !noalias !412, !noundef !8 ; 2 uses
  %i.ha = icmp ult i64 %i.gz, 4611686018427387904
  call void @llvm.assume(i1 %i.ha)
  %i.hb = add nsw i64 %i.gz, -1                   ; 2 uses
  %i.hc = icmp eq i64 %i.gy, %i.hb
  br i1 %i.hc, label %.noexc._crit_edge.i, label %bb.d

_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit.i: ; preds = %.noexc102.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !407
  %i.hd = load i8, ptr %i.j, align 8, !range !103, !noalias !407, !noundef !8 ; 2 uses
  %i.he = icmp samesign ugt i8 %i.hd, 23
  %i.hf = zext nneg i8 %i.hd to i64               ; 2 uses
  %i.hg = add nsw i64 %i.hf, -23
  %i.hh = select i1 %i.he, i64 %i.hg, i64 0
  switch i64 %i.hh, label %bb.ah [
    i64 0, label %bb.ce
    i64 1, label %bb.bz
    i64 2, label %bb.ca
  ]

bb.bz:                                            ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit.i
  %i.hi = load ptr, ptr %i.aw, align 8, !noalias !407, !nonnull !8, !noundef !8
  %i.hj = load i64, ptr %i.ax, align 8, !noalias !407, !noundef !8
  br label %bb.ce

bb.ca:                                            ; preds = %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit.i
  %i.hk = load ptr, ptr %i.aw, align 8, !noalias !407, !nonnull !8, !noundef !8
  %i.hl = load i64, ptr %i.ax, align 8, !noalias !407, !noundef !8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  br label %bb.ce

bb.cb:                                            ; preds = %bb.ce
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ho = load i8, ptr %i.j, align 8, !range !103, !alias.scope !527, !noalias !407, !noundef !8
  %switch.i.i132.i = icmp samesign ult i8 %i.ho, 25
  br i1 %switch.i.i132.i, label %.thread.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.hp = load ptr, ptr %i.aw, align 8, !alias.scope !534, !noalias !407, !nonnull !8, !noundef !8
  %i.hq = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !noalias !535
  %i.hr = icmp eq i64 %i.hq, 1
  br i1 %i.hr, label %bb.cd, label %.thread.i

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #21
          to label %.thread.i unwind label %bb.ar, !noalias !414

bb.ce:                                            ; preds = %bb.ca, %bb.bz, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit.i
  %.sroa.029.0.i = phi ptr [ %i.hm, %bb.ca ], [ %i.hi, %bb.bz ], [ %i.ay, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit.i ]
  %.sroa.430.0.i = phi i64 [ %i.hl, %bb.ca ], [ %i.hj, %bb.bz ], [ %i.hf, %_RNvXs1_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_18StaticRawConverterE7to_text.exit.i ]
  invoke void @_RNvMsc_Cs4dcH4YgJDq_2ttNtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.0.i, i64 noundef %.sroa.430.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.w)
          to label %bb.cf unwind label %bb.cb, !noalias !414

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !407
  store i32 2, ptr %i.k, align 8, !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !407
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.hs = load i8, ptr %i.j, align 8, !range !103, !alias.scope !542, !noalias !407, !noundef !8
  %switch.i.i135.i = icmp samesign ult i8 %i.hs, 25
  br i1 %switch.i.i135.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.ht = load ptr, ptr %i.aw, align 8, !alias.scope !549, !noalias !407, !nonnull !8, !noundef !8
  %i.hu = atomicrmw sub ptr %i.ht, i64 1 release, align 8, !noalias !550
  %i.hv = icmp eq i64 %i.hu, 1
  br i1 %i.hv, label %bb.ch, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i: ; preds = %bb.ch, %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !407
  br label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i, %bb.z
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.k)
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !414

bb.cj:                                            ; preds = %bb.cl, %.lr.ph255.i
  %i.hw = phi i64 [ %i.bh, %.lr.ph255.i ], [ %i.ia, %bb.cl ]
  %i.hx = load ptr, ptr %i.bj, align 8, !noalias !407, !nonnull !8, !noundef !8
  %.idx.i = shl nuw nsw i64 %i.hw, 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx.i
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -8
  %.val90.i = load i64, ptr %i.hz, align 8, !noalias !414, !noundef !8
  invoke fastcc void @_RNCNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB7_17TopSubtreeBuilder19expected_delimiters0CslVwgvvnzcNb_13syntax_bridge(ptr nonnull %i.o, i64 %.val90.i)
          to label %bb.ck unwind label %.thread166.loopexit.i

._crit_edge256.i:                                 ; preds = %bb.cl, %.noexc._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %i.o, i64 168, i1 false), !noalias !407
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder22build_skip_top_subtree(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a)
          to label %bb.co unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder5close(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.w)
          to label %bb.cl unwind label %.thread166.loopexit.i, !noalias !414

bb.cl:                                            ; preds = %bb.ck
  %i.ia = load i64, ptr %i.bg, align 8, !noalias !407, !noundef !8 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %._crit_edge256.i, label %bb.cj

.thread.i:                                        ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.by, %bb.bw, %bb.bn, %bb.bm, %bb.bl, %bb.av, %bb.au, %bb.at, %bb.an, %bb.am, %bb.al, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit200.i, %.thread166.loopexit.split-lp.loopexit.split-lp.i, %.thread166.loopexit.split-lp.loopexit.i, %.thread166.loopexit.i
  %.pn85164.i = phi { ptr, i32 } [ %i.hn, %bb.cc ], [ %i.fa, %bb.au ], [ %i.gw, %bb.bw ], [ %i.gx, %bb.by ], [ %i.en, %bb.am ], [ %lpad.loopexit.split-lp206.i, %.thread166.loopexit.split-lp.loopexit.split-lp.i ], [ %.pn.i, %bb.bm ], [ %i.en, %bb.an ], [ %i.en, %bb.al ], [ %i.fa, %bb.av ], [ %i.fa, %bb.at ], [ %.pn.i, %bb.bn ], [ %.pn.i, %bb.bl ], [ %i.hn, %bb.cd ], [ %i.hn, %bb.cb ], [ %lpad.loopexit.i, %.thread166.loopexit.i ], [ %lpad.loopexit205.i, %.thread166.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit201.i, %.loopexit200.i ], [ %lpad.loopexit208.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage17TopSubtreeBuilderECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(168) %i.o) #17
          to label %.body unwind label %bb.ar, !noalias !414

bb.cm:                                            ; preds = %bb.co, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.cn:                                            ; preds = %._crit_edge256.i, %bb.c
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.cn
  %eh.lpad-body = phi { ptr, i32 } [ %i.ic, %bb.cn ], [ %.pn85164.i, %.thread.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser9lexed_str8LexedStrECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCslVwgvvnzcNb_13syntax_bridge18StaticRawConverterEBD_.exit unwind label %bb.cp

bb.co:                                            ; preds = %._crit_edge256.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
end_hunk_1
