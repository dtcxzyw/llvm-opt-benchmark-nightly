Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.06?download=true
inline.NumInlined: 310
inline.NumDeleted: 135
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse11inject_data:bb.a
bb.ap:                                            ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.fz = load ptr, ptr %i.ca, align 8, !alias.scope !672, !noalias !675, !noundef !5 ; 2 uses
  %i.ga = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gb = and i64 %i.ga, 1
  %.not.i.i27 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i27, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gc = lshr i64 %i.ga, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !677
  %i.gd = load ptr, ptr %i.x, align 8, !alias.scope !672, !noalias !675, !nonnull !5, !noundef !5
  %i.ge = load i64, ptr %i.cb, align 8, !alias.scope !672, !noalias !675, !noundef !5
  %i.gf = load i64, ptr %i.cc, align 8, !alias.scope !672, !noalias !675, !noundef !5
  %i.gg = sub nsw i64 0, %i.gc
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 %i.gg
  %i.gi = add i64 %i.ge, %i.gc
  %i.gj = add i64 %i.gf, %i.gc                    ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, -1
  call void @llvm.assume(i1 %i.gk)
  store i64 %i.gj, ptr %i.s, align 8, !noalias !677
  store ptr %i.gh, ptr %i.cd, align 8, !noalias !677
  store i64 %i.gi, ptr %i.ce, align 8, !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !677
  invoke void @_RNvXsE_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc.i unwind label %.loopexit.split-lp.i.loopexit, !noalias !647

.noexc.i:                                         ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !677
  store i64 %i.gc, ptr %i.q, align 8, !noalias !681
  %i.gl = load i64, ptr %i.cf, align 8, !alias.scope !678, !noalias !677, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.gc, %i.gl
  br i1 %.not.i.i.i, label %bb.ar, label %bb.au, !prof !263

bb.ar:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !681
  store i64 %i.gl, ptr %i.p, align 8, !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !681
  store ptr %i.q, ptr %i.o, align 8, !noalias !681
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !681
  %i.gm = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.gm, align 8, !noalias !681
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !681
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @134, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #26
          to label %.noexc.i.i unwind label %bb.at, !noalias !682

.noexc.i.i:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.gn = load ptr, ptr %i.x, align 8, !alias.scope !672, !noalias !675, !nonnull !5, !noundef !5
  %i.go = load i64, ptr %i.cb, align 8, !alias.scope !672, !noalias !675, !noundef !5
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.gq = load ptr, ptr %.sroa.8.0..sroa_idx50.i, align 8, !alias.scope !689, !noalias !677, !noundef !5
  %i.gr = load ptr, ptr %i.r, align 8, !alias.scope !689, !noalias !677, !nonnull !5, !align !121, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !690, !nonnull !5, !noundef !5
  %i.gu = load ptr, ptr %i.cg, align 8, !alias.scope !689, !noalias !677, !noundef !5
  invoke void %i.gt(ptr noundef %i.gq, ptr noundef %i.gu, i64 noundef %i.gl)
          to label %.body.i unwind label %bb.av, !noalias !682, !inline_history !691

bb.au:                                            ; preds = %.noexc.i
  %i.gv = sub nuw i64 %i.gl, %i.gc
  %i.gw = load ptr, ptr %i.cg, align 8, !alias.scope !678, !noalias !677, !noundef !5
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !677
  %.sroa.036.0.copyload38.i = load ptr, ptr %i.r, align 8, !noalias !692
  %.sroa.8.0.copyload51.i = load ptr, ptr %.sroa.8.0..sroa_idx50.i, align 8, !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !677
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.av:                                            ; preds = %bb.at
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !682
  unreachable

_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.au, %bb.as
  %.sroa.7.0.i = phi i64 [ %i.go, %bb.as ], [ %i.gv, %bb.au ] ; 2 uses
  %.sroa.6.065.i = phi ptr [ %i.gn, %bb.as ], [ %i.gx, %bb.au ] ; 2 uses
  %.sroa.036.0.i = phi ptr [ @_RNvNtCs1eA6bChxBZF_5bytes9bytes_mut13SHARED_VTABLE, %bb.as ], [ %.sroa.036.0.copyload38.i, %bb.au ] ; 2 uses
  %.sroa.8.0.i = phi ptr [ %i.fz, %bb.as ], [ %.sroa.8.0.copyload51.i, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !645
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.gz = load ptr, ptr %i.ci, align 8, !alias.scope !699, !noalias !647, !noundef !5
  %i.ha = load ptr, ptr %i.ch, align 8, !alias.scope !699, !noalias !647, !nonnull !5, !align !121, !noundef !5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !700, !nonnull !5, !noundef !5
  %i.hd = load ptr, ptr %i.cj, align 8, !alias.scope !699, !noalias !647, !noundef !5
  %i.he = load i64, ptr %i.ck, align 8, !alias.scope !699, !noalias !647, !noundef !5
  invoke void %i.hc(ptr noundef %i.gz, ptr noundef %i.hd, i64 noundef %i.he)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.aw, !noalias !647, !inline_history !691

bb.aw:                                            ; preds = %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.036.0.i, ptr %i.ch, align 8, !alias.scope !642, !noalias !647
  store ptr %.sroa.6.065.i, ptr %i.cj, align 8, !alias.scope !642, !noalias !647
  store i64 %.sroa.7.0.i, ptr %i.ck, align 8, !alias.scope !642, !noalias !647
  store ptr %.sroa.8.0.i, ptr %i.ci, align 8, !alias.scope !642, !noalias !647
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  store ptr %.sroa.036.0.i, ptr %i.ch, align 8, !alias.scope !642, !noalias !647
  store ptr %.sroa.6.065.i, ptr %i.cj, align 8, !alias.scope !642, !noalias !647
  store i64 %.sroa.7.0.i, ptr %i.ck, align 8, !alias.scope !642, !noalias !647
  store ptr %.sroa.8.0.i, ptr %i.ci, align 8, !alias.scope !642, !noalias !647
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.464.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.hg = load i16, ptr %i.cl, align 8, !range !706, !alias.scope !704, !noalias !707, !noundef !5
  switch i16 %i.hg, label %bb.ax [
    i16 204, label %.loopexit
    i16 304, label %.loopexit
  ]

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @123, i64 32, i1 false), !noalias !708
  %i.hh = invoke noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc34.i unwind label %.loopexit.split-lp.i.loopexit, !noalias !647 ; 3 uses

.noexc34.i:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !708
  %.not.i33.i = icmp eq ptr %i.hh, null
  br i1 %.not.i33.i, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %.noexc34.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !708
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !709, !noundef !5
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !709, !noundef !5
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hj, i64 noundef %i.hl)
          to label %.noexc35.i unwind label %.loopexit.split-lp.i.loopexit, !noalias !647

.noexc35.i:                                       ; preds = %bb.ay
  %i.hm = load i64, ptr %i.n, align 8, !range !262, !noalias !708, !noundef !5
  %i.hn = trunc nuw i64 %i.hm to i1
  br i1 %i.hn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.noexc35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !708
  br label %.loopexit

bb.ba:                                            ; preds = %.noexc35.i
  %i.ho = load ptr, ptr %i.cm, align 8, !noalias !708, !nonnull !5, !noundef !5 ; 3 uses
  %i.hp = load i64, ptr %i.cn, align 8, !noalias !708, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !708
  switch i64 %i.hp, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.hq = load i8, ptr %i.ho, align 1, !alias.scope !710, !noalias !713, !noundef !5 ; 2 uses
  switch i8 %i.hq, label %bb.bc [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.ba
  %.pr.i.i.i = load i8, ptr %i.ho, align 1, !alias.scope !710, !noalias !713
  br label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split.i.i.i, %bb.bb
  %i.hr = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.hq, %bb.bb ]
  %cond.i.i.i = icmp eq i8 %i.hr, 43              ; 2 uses
  %i.hs = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.hp, %i.hs    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ht = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ht, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.bc
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.bd
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i220, i64 1
  %i.hv = add nsw i64 %.sroa.15.1.i.i.i219, -1    ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not52.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.bc, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i220 = phi ptr [ %i.hu, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.bc ] ; 2 uses
  %.sroa.15.1.i.i.i219 = phi i64 [ %i.hv, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.bc ]
  %.sroa.042.0.i.i.i218 = phi i64 [ %i.ib, %.preheader56.i.i.i ], [ 0, %bb.bc ] ; 2 uses
  %4 = icmp ugt i64 %.sroa.042.0.i.i.i218, 1844674407370955161
  br i1 %4, label %.loopexit, label %bb.bd, !prof !263

bb.bd:                                            ; preds = %.preheader56.i.i.i.preheader
  %5 = mul nuw i64 %.sroa.042.0.i.i.i218, 10      ; 2 uses
  %i.hw = load i8, ptr %.sroa.0.1.i.i.i220, align 1, !alias.scope !710, !noalias !713, !noundef !5
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nsw i32 %i.hx, -48                  ; 2 uses
  %i.hz = icmp ugt i32 %i.hy, 9
  %i.ia = zext nneg i32 %i.hy to i64
  %i.ib = add i64 %5, %i.ia                       ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %5
  %or.cond.i.i = select i1 %i.hz, i1 true, i1 %i.ic, !prof !715
  br i1 %or.cond.i.i, label %.loopexit, label %.preheader56.i.i.i, !prof !715

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.be
  %.sroa.0.269.i.i.i = phi ptr [ %i.ij, %bb.be ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.ii, %bb.be ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.il, %bb.be ], [ 0, %.preheader.i.i.i ]
  %i.id = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !710, !noalias !713, !noundef !5
  %i.ie = zext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -48                  ; 2 uses
  %i.ig = icmp ult i32 %i.if, 10
  br i1 %i.ig, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.ih = mul i64 %.sroa.042.267.i.i.i, 10
  %i.ii = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.ik = zext nneg i32 %i.if to i64
  %i.il = add i64 %i.ih, %i.ik                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %.preheader56.i.i.i, %bb.be
  %.sroa.115.0.i.i = phi i64 [ %i.il, %bb.be ], [ %i.ib, %.preheader56.i.i.i ] ; 2 uses
  %i.im = icmp eq i64 %.sroa.115.0.i.i, 0
  br i1 %i.im, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  store i64 %.sroa.115.0.i.i, ptr %.sroa.464.i, align 8, !alias.scope !701, !noalias !716
  br label %.loopexit

.body30:                                          ; preds = %.loopexit78, %.loopexit.split-lp, %bb.ck, %bb.by, %bb.cf, %bb.bn, %bb.bj, %.body.i, %bb.u, %bb.p, %bb.o, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.lg, %bb.cf ], [ %i.iy, %bb.bn ], [ %.pn.i, %.body.i ], [ %i.et, %bb.u ], [ %i.dz, %bb.m ], [ %i.dz, %bb.p ], [ %i.dz, %bb.o ], [ %i.dz, %bb.n ], [ %i.kf, %bb.by ], [ %i.iq, %bb.bj ], [ %i.lw, %bb.ck ], [ %lpad.loopexit, %.loopexit78 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq) #22
          to label %common.resume unwind label %bb.co

.loopexit78:                                      ; preds = %bb.l, %bb.s, %bb.bu, %bb.bv, %bb.cb, %bb.cc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.loopexit.split-lp:                               ; preds = %_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseNtNtCsexYYUdYSQU6_5alloc6string6StringNtCs1ll6eLl40nD_8httparse5ErrorECset5b41vfmiv_13pingora_cache.exit.i, %.split.i, %.noexc28, %bb.x, %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.thread:                                          ; preds = %.noexc32, %.noexc35
  %.sroa.960.0.ph = phi ptr [ %i.fw, %.noexc35 ], [ %i.ei, %.noexc32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.loopexit82

.loopexit:                                        ; preds = %.preheader56.i.i.i.preheader, %bb.bd, %.lr.ph.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i, %.noexc34.i, %bb.az, %bb.ba, %bb.bb, %bb.bb, %.preheader.i.i.i, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, %bb.bf
  %.sink25.sink.i.sroa.phi.i = phi ptr [ %.sroa.464.i, %.noexc34.i ], [ %.sroa.464.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i ], [ %.sroa.464.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i ], [ %.sroa.464.i, %.preheader.i.i.i ], [ %.sroa.464.i, %.lr.ph.i.i.i ], [ %.sroa.464.i, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i ], [ %.sroa.464.i, %bb.bb ], [ %.sroa.464.i, %bb.bb ], [ %.sroa.464.i, %bb.ba ], [ %.sroa.464.i, %bb.az ], [ %.sroa.17.i, %bb.bf ], [ %.sroa.464.i, %bb.bd ], [ %.sroa.464.i, %.preheader56.i.i.i.preheader ]
  %storemerge.sink.i.i = phi i8 [ 3, %.noexc34.i ], [ 4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i ], [ 4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECset5b41vfmiv_13pingora_cache.exit.i ], [ 4, %.preheader.i.i.i ], [ 3, %.lr.ph.i.i.i ], [ 4, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i ], [ 3, %bb.bb ], [ 3, %bb.bb ], [ 3, %bb.ba ], [ 3, %bb.az ], [ 2, %bb.bf ], [ 3, %bb.bd ], [ 3, %.preheader56.i.i.i.preheader ]
  store i64 0, ptr %.sink25.sink.i.sroa.phi.i, align 8, !alias.scope !701, !noalias !716
  store i8 %storemerge.sink.i.i, ptr %1, align 8, !alias.scope !642, !noalias !647
  %.sroa.464.i.0..sroa.464.i.0..sroa.464.i.0..sroa.464.0..sroa.464.0..sroa.464.0.copyload.i = load i64, ptr %.sroa.464.i, align 8, !noalias !645
  store i64 %.sroa.464.i.0..sroa.464.i.0..sroa.464.i.0..sroa.464.0..sroa.464.0..sroa.464.0.copyload.i, ptr %.sroa.464.0..sroa_idx.i, align 8, !alias.scope !642, !noalias !647
  %.sroa.17.i.0..sroa.17.i.0..sroa.17.i.0..sroa.17.0..sroa.17.0..sroa.17.0.copyload.i = load i64, ptr %.sroa.17.i, align 8, !noalias !645
  store i64 %.sroa.17.i.0..sroa.17.i.0..sroa.17.i.0..sroa.17.0..sroa.17.0..sroa.17.0.copyload.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !642, !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.464.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i)
  %.sroa.0.0.copyload = load i64, ptr %i.ac, align 8, !noalias !642 ; 2 uses
  %.sroa.960.0.copyload = load ptr, ptr %.sroa.960.0..sroa_idx, align 8, !noalias !642 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.13.0..sroa_idx, i64 216, i1 false), !noalias !642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.in = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %i.in, label %.loopexit82, label %bb.bg

bb.bg:                                            ; preds = %.thread66, %.loopexit
  %.sroa.0.070 = phi i64 [ -1, %.thread66 ], [ %.sroa.0.0.copyload, %.loopexit ] ; 2 uses
  %.sroa.960.069 = phi ptr [ undef, %.thread66 ], [ %.sroa.960.0.copyload, %.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.47, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.13, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %.not = icmp eq i64 %.sroa.0.070, -1
  br i1 %.not, label %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 %.sroa.0.070, ptr %i.ap, align 8
  store ptr %.sroa.960.069, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.47, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !717
  %i.io = call noundef align 8 dereferenceable_or_null(232) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 833) 232, i64 noundef 8) #24, !noalias !717 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.bi, label %bb.bl, !prof !263

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #25
          to label %.noexc36 unwind label %bb.bj

.noexc36:                                         ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskspKcFIsYcD_12pingora_http14ResponseHeaderECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ap) #22
          to label %.body30 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.io, ptr noundef nonnull align 8 dereferenceable(232) %i.ap, i64 232, i1 false)
  %i.is = load i8, ptr %1, align 8, !range !228, !noundef !5
  %i.it = icmp eq i8 %i.is, 4
  store ptr %i.io, ptr %i.co, align 8
  %i.iu = zext i1 %i.it to i8
  store i8 %i.iu, ptr %i.cp, align 1
  store i8 0, ptr %i.ao, align 8
  %i.iv = load i64, ptr %i.bl, align 8, !alias.scope !720, !noalias !723, !noundef !5 ; 3 uses
  %i.iw = load i64, ptr %i.aq, align 8, !range !53, !alias.scope !720, !noalias !723, !noundef !5
  %i.ix = icmp eq i64 %i.iv, %i.iw
  br i1 %i.ix, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskE8grow_oneCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.bp unwind label %bb.bn, !noalias !723

bb.bn:                                            ; preds = %bb.bm
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.ao) #22
          to label %.body30 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !723
  unreachable

bb.bp:                                            ; preds = %bb.bm, %bb.bl
  %i.ja = load ptr, ptr %i.bk, align 8, !alias.scope !720, !noalias !723, !nonnull !5, !noundef !5
  %i.jb = getelementptr inbounds nuw [40 x i8], ptr %i.ja, i64 %i.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jb, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ao, i64 40, i1 false)
  %i.jc = add i64 %i.iv, 1
  store i64 %i.jc, ptr %i.bl, align 8, !alias.scope !720, !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %.backedge

.loopexit82:                                      ; preds = %.loopexit, %.thread
  %.sroa.960.065 = phi ptr [ %.sroa.960.0.ph, %.thread ], [ %.sroa.960.0.copyload, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.960.065, ptr %i.jd, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.bq

bb.bq:                                            ; preds = %.loopexit82
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body30, %bb.bq
  %common.resume.op = phi { ptr, i32 } [ %i.je, %bb.bq ], [ %.pn, %.body30 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECset5b41vfmiv_13pingora_cache.exit: ; preds = %.loopexit82
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.cn

bb.bs:                                            ; preds = %bb.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.jg = load i64, ptr %i.av, align 8, !alias.scope !725, !noalias !728, !noundef !5 ; 4 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ji = icmp eq i8 %i.dg, 3
  %i.jj = load i64, ptr %.sroa.464.0..sroa_idx.i, align 8, !alias.scope !725, !noalias !728, !noundef !5 ; 5 uses
  br i1 %i.ji, label %bb.cb, label %bb.bu, !prof !730

bb.bu:                                            ; preds = %bb.bt
  %i.jk = load i64, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !725, !noalias !728, !noundef !5 ; 3 uses
  %i.jl = add i64 %i.jk, %i.jg
  %i.jm = icmp ult i64 %i.jj, %i.jl
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvXs_NtCsh8kAdcUVRtT_9rmp_serde6decodeNtB5_5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error6customReECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error13unknown_fieldCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_NtCsh8kAdcUVRtT_9rmp_serde6decodeQINtB6_12DeserializerINtB6_13ReadRefReaderShEENtNtCs54qMqBN3zRt_10serde_core2de12Deserializer15deserialize_u32NtNvXs14_NtB1p_5implsmNtB1p_11Deserialize11deserialize16PrimitiveVisitorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_NtCsh8kAdcUVRtT_9rmp_serde6decodeQINtB6_12DeserializerINtB6_13ReadRefReaderShEENtNtCs54qMqBN3zRt_10serde_core2de12Deserializer15deserialize_u64NtNvXs17_NtB1p_5implsyNtB1p_11Deserialize11deserialize16PrimitiveVisitorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error13invalid_valueCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error15duplicate_fieldCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error13missing_fieldCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error14invalid_lengthCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtCsh8kAdcUVRtT_9rmp_serde6decodeINtB6_12DeserializerINtB6_10ReadReaderRShEE9any_innerINtNtNtCs54qMqBN3zRt_10serde_core2de5impls12ArrayVisitorAhj10_EECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtCsh8kAdcUVRtT_9rmp_serde6decodeINtB6_12DeserializerINtB6_13ReadRefReaderShEE9any_innerINtNtNtCs54qMqBN3zRt_10serde_core2de5impls12ArrayVisitorAhj10_EECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtCsh8kAdcUVRtT_9rmp_serde6decodeINtB6_12DeserializerINtB6_13ReadRefReaderShEE9any_innerNtNvXNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtB1J_11Deserialize11deserializeNtB1B_5FieldB2W_11deserialize12FieldVisitorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsQ_NtNtCs54qMqBN3zRt_10serde_core2de5valueINtB6_15SeqDeserializerINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtB1f_5slice4iter4IterhEENtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorENtB8_9SeqAccess17next_element_seedINtNtB1f_6marker11PhantomDatamEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsQ_NtNtCs54qMqBN3zRt_10serde_core2de5valueINtB6_15SeqDeserializerINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtB1f_5slice4iter4IterhEENtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorENtB8_9SeqAccess17next_element_seedINtNtB1f_6marker11PhantomDatayEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap7get_allReECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13insert_headerReRNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(232), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerReRNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(232), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtCsfsXztIhCltD_13pingora_error5ErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCset5b41vfmiv_13pingora_cache5traceNtB2_13CacheTraceCTX15start_miss_span(ptr noalias nofree noundef align 8 dereferenceable(696)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCset5b41vfmiv_13pingora_cache5traceNtB2_13CacheTraceCTX14start_hit_span(ptr noalias nofree noundef align 8 dereferenceable(696), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), i8 noundef range(i8 0, 6)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCset5b41vfmiv_13pingora_cache5traceNtB2_13CacheTraceCTX20log_meta_in_hit_span(ptr noalias nofree noundef align 8 dereferenceable(696), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCset5b41vfmiv_13pingora_cache3keyNtB5_8CacheKey10to_compact(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCset5b41vfmiv_13pingora_cache5traceNtB2_13CacheTraceCTX12get_hit_span(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(696)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCset5b41vfmiv_13pingora_cache5traceNtB2_13CacheTraceCTX13get_miss_span(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(696)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCset5b41vfmiv_13pingora_cache5traceNtB2_13CacheTraceCTX6enable(ptr noalias nofree noundef align 8 dereferenceable(696), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCset5b41vfmiv_13pingora_cache5traceNtB2_13CacheTraceCTX14get_cache_span(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(696)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCset5b41vfmiv_13pingora_cache5traceNtB2_13CacheTraceCTX21log_meta_in_miss_span(ptr noalias nofree noundef align 8 dereferenceable(696), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtCs8cfXl8C2jC4_13cf_rustracing4spanINtB6_4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateE5childReNCNvMNtCset5b41vfmiv_13pingora_cache5traceNtB26_13CacheTraceCTX5child0EB28_(ptr dead_on_unwind noalias nofree noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCs2awuzAz5vY4_5tokio4task5spawn5spawnNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtBP_9HttpCache17spawn_async_purge0EBP_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(968), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtCs8cfXl8C2jC4_13cf_rustracing4spanINtB6_4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateE8set_tagsNCINvB2_7set_tagNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB2q_9HttpCache17tag_as_subrequest0E0INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtB8_3tag3TagEEB2q_(ptr noalias nofree noundef align 8 dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCset5b41vfmiv_13pingora_cache4metaNtB2_9CacheMeta20serve_stale_if_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_CskspKcFIsYcD_12pingora_httpNtB5_14ResponseHeaderNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([232 x i8]) align 8 captures(none) dereferenceable(232), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCset5b41vfmiv_13pingora_cache4metaNtB2_9CacheMeta28serve_stale_while_revalidate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtCs8cfXl8C2jC4_13cf_rustracing4spanINtB6_4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateE8set_tagsNCINvB2_7set_tagNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB2q_9HttpCache6bypass0E0INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtB8_3tag3TagEEB2q_(ptr noalias nofree noundef align 8 dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdYyxaOYRLxS_3log13___private_api3loguNtB2_12GlobalLoggerECset5b41vfmiv_13pingora_cache(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtCs8cfXl8C2jC4_13cf_rustracing4spanINtB6_4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateE8set_tagsNCINvB2_7set_tagNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB2q_9HttpCache7disable0E0INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtB8_3tag3TagEEB2q_(ptr noalias nofree noundef align 8 dereferenceable(232), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskE8grow_oneCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCs1eA6bChxBZF_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut5split(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_Cs1ll6eLl40nD_8httparseNtB5_12ParserConfig14parse_response(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(7), ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader5buildtECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([232 x i8]) align 8 captures(none) dereferenceable(232), i16 noundef, i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1c_3vec3VechEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(232), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs1DOjokLtCNv_4bstr4bstr4BStrNtB6_5Debug3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCs1ll6eLl40nD_8httparse5ErrorNtB6_5Debug3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtCs1ll6eLl40nD_8httparse5ErrorE4fromCset5b41vfmiv_13pingora_cache(i8 noundef range(i8 0, 7)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtBQ_6marker4SendNtB3r_4SyncEL_E9drop_slowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEE9drop_slowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserializeNtB5_5FieldB1q_11deserializeNtB2_12FieldVisitorNtBd_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs14_NtNtCs54qMqBN3zRt_10serde_core2de5implsmNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs17_NtNtCs54qMqBN3zRt_10serde_core2de5implsyNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs1a_NtNtCs54qMqBN3zRt_10serde_core2de5implsjNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXsY_NtNtCs54qMqBN3zRt_10serde_core2de5implshNtBa_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBa_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBc_11Deserialize11deserializeNtB4_15DurationVisitorNtBc_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsD_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9ValueIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRReNtB6_5Debug3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { cold }
attributes #23 = { noinline }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { noinline noreturn }
attributes #27 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{!7, !9}
!7 = distinct !{!7, !8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECset5b41vfmiv_13pingora_cache: argument 0"}
!8 = distinct !{!8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECset5b41vfmiv_13pingora_cache"}
!9 = distinct !{!9, !10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8cfXl8C2jC4_13cf_rustracing4span9SpanInnerNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEECset5b41vfmiv_13pingora_cache: argument 0"}
!10 = distinct !{!10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8cfXl8C2jC4_13cf_rustracing4span9SpanInnerNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEECset5b41vfmiv_13pingora_cache"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8cfXl8C2jC4_13cf_rustracing4span18FinishSpanCallbackNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEECset5b41vfmiv_13pingora_cache: argument 0"}
!13 = distinct !{!13, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8cfXl8C2jC4_13cf_rustracing4span18FinishSpanCallbackNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEECset5b41vfmiv_13pingora_cache"}
!14 = !{!12, !9}
!15 = !{!16, !18, !20, !12}
!16 = distinct !{!16, !17, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtBQ_6marker4SendNtB3r_4SyncEL_ENtNtBO_4drop4Drop4dropCset5b41vfmiv_13pingora_cache: argument 0"}
!17 = distinct !{!17, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtBQ_6marker4SendNtB3r_4SyncEL_ENtNtBO_4drop4Drop4dropCset5b41vfmiv_13pingora_cache"}
!18 = distinct !{!18, !19, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtB4_6marker4SendNtB3E_4SyncEL_EECset5b41vfmiv_13pingora_cache: argument 0"}
!19 = distinct !{!19, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtB4_6marker4SendNtB3E_4SyncEL_EECset5b41vfmiv_13pingora_cache"}
!20 = distinct !{!20, !21, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8cfXl8C2jC4_13cf_rustracing4span18FinishSpanCallbackNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEECset5b41vfmiv_13pingora_cache: argument 0"}
!21 = distinct !{!21, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8cfXl8C2jC4_13cf_rustracing4span18FinishSpanCallbackNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEECset5b41vfmiv_13pingora_cache"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8cfXl8C2jC4_13cf_rustracing4span18FinishSpanCallbackNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEECset5b41vfmiv_13pingora_cache: argument 0"}
!24 = distinct !{!24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8cfXl8C2jC4_13cf_rustracing4span18FinishSpanCallbackNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEECset5b41vfmiv_13pingora_cache"}
!25 = !{!23, !9}
!26 = !{!27, !29, !31, !23}
!27 = distinct !{!27, !28, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtBQ_6marker4SendNtB3r_4SyncEL_ENtNtBO_4drop4Drop4dropCset5b41vfmiv_13pingora_cache: argument 0"}
!28 = distinct !{!28, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtBQ_6marker4SendNtB3r_4SyncEL_ENtNtBO_4drop4Drop4dropCset5b41vfmiv_13pingora_cache"}
!29 = distinct !{!29, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtB4_6marker4SendNtB3E_4SyncEL_EECset5b41vfmiv_13pingora_cache: argument 0"}
!30 = distinct !{!30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTQL0_INtNtCs8cfXl8C2jC4_13cf_rustracing4span4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEp6OutputuNtNtB4_6marker4SendNtB3E_4SyncEL_EECset5b41vfmiv_13pingora_cache"}
!31 = distinct !{!31, !32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8cfXl8C2jC4_13cf_rustracing4span18FinishSpanCallbackNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEECset5b41vfmiv_13pingora_cache: argument 0"}
!32 = distinct !{!32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8cfXl8C2jC4_13cf_rustracing4span18FinishSpanCallbackNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEECset5b41vfmiv_13pingora_cache"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache: argument 0"}
!35 = distinct !{!35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache: argument 0"}
!38 = distinct !{!38, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache"}
!39 = !{!37, !34, !40, !42, !9}
!40 = distinct !{!40, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBG_9unbounded9SemaphoreEECset5b41vfmiv_13pingora_cache: argument 0"}
!41 = distinct !{!41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBG_9unbounded9SemaphoreEECset5b41vfmiv_13pingora_cache"}
!42 = distinct !{!42, !43, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc9unbounded15UnboundedSenderINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEECset5b41vfmiv_13pingora_cache: argument 0"}
!43 = distinct !{!43, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc9unbounded15UnboundedSenderINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEECset5b41vfmiv_13pingora_cache"}
!44 = !{!37, !34}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache: argument 0"}
!47 = distinct !{!47, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache: argument 0"}
!50 = distinct !{!50, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache"}
!51 = !{!49, !46, !40, !42, !9}
!52 = !{!49, !46}
!53 = !{i64 0, i64 -9223372036854775808}
!54 = !{i64 1, i64 536870913}
!55 = !{i64 -1, i64 3}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECset5b41vfmiv_13pingora_cache: argument 0"}
!58 = distinct !{!58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECset5b41vfmiv_13pingora_cache"}
!59 = !{i32 -2, i32 1000000000}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache7LockCtxEBD_: argument 0"}
!62 = distinct !{!62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache7LockCtxEBD_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache4lock6LockedEEB11_: argument 0"}
!65 = distinct !{!65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache4lock6LockedEEB11_"}
!66 = !{i8 -1, i8 3}
!67 = !{!64, !61}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock6LockedEBF_: argument 0"}
!70 = distinct !{!70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock6LockedEBF_"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_: argument 0"}
!73 = distinct !{!73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_: argument 0"}
!76 = distinct !{!76, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_"}
!77 = !{!75, !72, !78, !69, !64, !61}
!78 = distinct !{!78, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock11WritePermitEBF_: argument 0"}
!79 = distinct !{!79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock11WritePermitEBF_"}
!80 = !{!75, !72}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_: argument 0"}
!83 = distinct !{!83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_: argument 0"}
!86 = distinct !{!86, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_"}
!87 = !{!85, !82, !78, !69, !64, !61}
!88 = !{!85, !82}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock8ReadLockEBF_: argument 0"}
!91 = distinct !{!91, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock8ReadLockEBF_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_: argument 0"}
!94 = distinct !{!94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_: argument 0"}
!97 = distinct !{!97, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_"}
!98 = !{!96, !93, !90, !69, !64, !61}
!99 = !{i64 0, i64 3}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECset5b41vfmiv_13pingora_cache: argument 0"}
!102 = distinct !{!102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECset5b41vfmiv_13pingora_cache"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache: argument 0"}
!105 = distinct !{!105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache: argument 0"}
!108 = distinct !{!108, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache"}
!109 = !{!107, !104, !110}
!110 = distinct !{!110, !111, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBG_9unbounded9SemaphoreEECset5b41vfmiv_13pingora_cache: argument 0"}
!111 = distinct !{!111, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBG_9unbounded9SemaphoreEECset5b41vfmiv_13pingora_cache"}
!112 = !{!107, !104}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache: argument 0"}
!115 = distinct !{!115, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache: argument 0"}
!118 = distinct !{!118, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache"}
!119 = !{!117, !114, !110}
!120 = !{!117, !114}
!121 = !{i64 8}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_: argument 0"}
!124 = distinct !{!124, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_: argument 0"}
!127 = distinct !{!127, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCset5b41vfmiv_13pingora_cache7LockCtxEEBZ_: argument 0"}
!130 = distinct !{!130, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCset5b41vfmiv_13pingora_cache7LockCtxEEBZ_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache7LockCtxEBD_: argument 0"}
!133 = distinct !{!133, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache7LockCtxEBD_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache4lock6LockedEEB11_: argument 0"}
!136 = distinct !{!136, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache4lock6LockedEEB11_"}
!137 = !{!135, !132, !129}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock6LockedEBF_: argument 0"}
!140 = distinct !{!140, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock6LockedEBF_"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_: argument 0"}
!143 = distinct !{!143, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_: argument 0"}
!146 = distinct !{!146, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_"}
!147 = !{!145, !142, !148, !139, !135, !132, !129}
!148 = distinct !{!148, !149, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock11WritePermitEBF_: argument 0"}
!149 = distinct !{!149, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock11WritePermitEBF_"}
!150 = !{!145, !142}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_: argument 0"}
!153 = distinct !{!153, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_: argument 0"}
!156 = distinct !{!156, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_"}
!157 = !{!155, !152, !148, !139, !135, !132, !129}
!158 = !{!155, !152}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock8ReadLockEBF_: argument 0"}
!161 = distinct !{!161, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock8ReadLockEBF_"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_: argument 0"}
!164 = distinct !{!164, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_: argument 0"}
!167 = distinct !{!167, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_"}
!168 = !{!166, !163, !160, !139, !135, !132, !129}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECset5b41vfmiv_13pingora_cache: argument 0"}
!171 = distinct !{!171, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECset5b41vfmiv_13pingora_cache"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECset5b41vfmiv_13pingora_cache: argument 0"}
!174 = distinct !{!174, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECset5b41vfmiv_13pingora_cache"}
!175 = !{!173, !170}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECset5b41vfmiv_13pingora_cache: argument 0"}
!178 = distinct !{!178, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECset5b41vfmiv_13pingora_cache"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECset5b41vfmiv_13pingora_cache: argument 0"}
!181 = distinct !{!181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECset5b41vfmiv_13pingora_cache"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_: argument 0"}
!184 = distinct !{!184, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_: argument 0"}
!187 = distinct !{!187, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_"}
!188 = !{!186, !183}
end_hunk_1
