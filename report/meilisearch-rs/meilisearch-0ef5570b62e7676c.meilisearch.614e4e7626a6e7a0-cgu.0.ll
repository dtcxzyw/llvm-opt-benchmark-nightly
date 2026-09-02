Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush17h507df6486ee2ee0eE":bb.a
  store i64 2, ptr %i.fm, align 8, !noalias !14377
  %i.fn = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.fn, align 8, !noalias !14377
  %i.fo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.m, ptr %i.fo, align 8, !noalias !14377
  %i.fp = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 2, ptr %i.fp, align 8, !noalias !14377
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1431) #43
          to label %.noexc147 unwind label %.loopexit.split-lp

.noexc147:                                        ; preds = %bb.ar
  unreachable

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i": ; preds = %bb.aq
  %i.fq = sub nuw i64 %i.fk, %.sroa.0.0.i.i
  store i64 %i.fq, ptr %i.cc, align 8, !alias.scope !14378, !noalias !14357
  %i.fr = load ptr, ptr %i.cj, align 8, !alias.scope !14378, !noalias !14357, !noundef !45
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.0.0.i.i
  store ptr %i.fs, ptr %i.cj, align 8, !alias.scope !14378, !noalias !14357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14376
  %i.ft = sub nuw i64 %i.fj, %.sroa.0.0.i.i
  store i64 %i.ft, ptr %i.cd, align 8, !alias.scope !14374, !noalias !14357
  br label %.thread213

bb.as:                                            ; preds = %bb.an
  %.not.i.i = icmp ult i64 %i.fi, %i.ff
  br i1 %.not.i.i, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i", label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i"

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i": ; preds = %bb.as
  %i.fu = add i64 %i.fi, %i.fh
  store i64 %i.fu, ptr %i.cb, align 8, !alias.scope !14379, !noalias !14357
  %i.fv = sub nuw i64 %i.ff, %i.fi
  br label %bb.ao

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i": ; preds = %bb.as
  %i.fw = add i64 %i.fh, %i.ff
  store i64 %i.fw, ptr %i.cb, align 8, !alias.scope !14380, !noalias !14357
  br label %.thread213

bb.at:                                            ; preds = %.noexc142, %.noexc141, %bb.y, %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ah

bb.au:                                            ; preds = %.noexc145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14357
  br label %bb.bu

bb.av:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14357
  br label %bb.bu

.thread213:                                       ; preds = %"_ZN78_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc9a0af60f789511dE.exit.i", %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i", %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i"
  %.sroa.010.0.in = phi ptr [ %i.fd, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i" ], [ %i.fd, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i" ], [ %i.ih, %"_ZN78_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc9a0af60f789511dE.exit.i" ]
  %i.fx = icmp eq ptr %.sroa.010.0.in, null
  br i1 %i.fx, label %.thread204, label %.backedge.backedge

bb.aw:                                            ; preds = %.split
  %i.fy = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.ax, label %.thread210

bb.ax:                                            ; preds = %bb.aw
  %i.ga = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ga, label %bb.ay [
    i8 0, label %.thread210
    i8 1, label %.thread207
    i8 2, label %.thread207
  ], !prof !64

bb.ay:                                            ; preds = %bb.ax
  %i.gb = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E")
          to label %bb.az unwind label %.loopexit ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %.thread210, label %.thread207

.thread207:                                       ; preds = %bb.ax, %bb.ax, %bb.az
  %.sroa.036.0209 = phi i8 [ %i.gb, %bb.az ], [ %i.ga, %bb.ax ], [ %i.ga, %bb.ax ]
  %i.gd = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.ge = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gd, i8 noundef %.sroa.036.0209)
          to label %bb.ba unwind label %.loopexit

bb.ba:                                            ; preds = %.thread207
  br i1 %i.ge, label %bb.bb, label %.thread210

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.gf = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  store i64 1, ptr %i.ai, align 8
  store ptr @707, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8
  store ptr %i.gg, ptr %.sroa.439.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %.noexc151 unwind label %.loopexit

.noexc151:                                        ; preds = %bb.bb
  %i.gh = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14381
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.bc, label %bb.br

bb.bc:                                            ; preds = %.noexc151
  %i.gj = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !14381 ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 6
  call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i64 %i.gj, 4
  br i1 %i.gl, label %bb.bd, label %bb.br

bb.bd:                                            ; preds = %bb.bc
  %i.gm = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !noalias !14381, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !45, !align !55, !noundef !45
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !45
  store i64 5, ptr %i.l, align 8, !noalias !14381
  store ptr %i.go, ptr %.sroa.52.0..sroa_idx.i149, align 8, !noalias !14381
  store i64 %i.gq, ptr %.sroa.7.0..sroa_idx.i150, align 8, !noalias !14381
  %i.gr = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc152 unwind label %.loopexit ; 2 uses

.noexc152:                                        ; preds = %bb.bd
  %i.gs = extractvalue { ptr, ptr } %i.gr, 0      ; 2 uses
  %i.gt = extractvalue { ptr, ptr } %i.gr, 1      ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !invariant.load !45, !nonnull !45
  %i.gw = invoke noundef zeroext i1 %i.gv(ptr noundef align 1 %i.gs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %.noexc153 unwind label %.loopexit, !inline_history !14329

.noexc153:                                        ; preds = %.noexc152
  br i1 %i.gw, label %bb.be, label %bb.br

bb.be:                                            ; preds = %.noexc153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !14381
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gm, ptr noundef nonnull align 1 %i.gs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gt, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %.noexc154 unwind label %.loopexit

.noexc154:                                        ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14381
  br label %bb.br

.thread210:                                       ; preds = %bb.ax, %bb.aw, %bb.ba, %bb.az
  %i.gx = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %.thread210
  %i.gz = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.ha = icmp ult i64 %i.gz, 6
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp samesign ugt i64 %i.gz, 4
  br i1 %i.hb, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.hc = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !45, !align !55, !noundef !45
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !noundef !45
  store i64 5, ptr %i.ah, align 8
  store ptr %i.he, ptr %.sroa.5115.0..sroa_idx, align 8
  store i64 %i.hg, ptr %.sroa.7116.0..sroa_idx, align 8
  %i.hh = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.bh unwind label %.loopexit ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.hi = extractvalue { ptr, ptr } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hh, 1      ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !invariant.load !45, !nonnull !45
  %i.hm = invoke noundef zeroext i1 %i.hl(ptr noundef align 1 %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.bi unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.hm, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.hn = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  store i64 1, ptr %i.ag, align 8
  store ptr @707, ptr %.sroa.494.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.595.0..sroa_idx, align 8
  store ptr %i.ho, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hc, ptr noundef nonnull align 1 %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %bb.bk unwind label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bk, %bb.bf, %.thread210, %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !14382)
  %.val.i157 = load i64, ptr %i.ca, align 8, !alias.scope !14383, !noalias !14384, !noundef !45 ; 3 uses
  %.val19.i = load i64, ptr %i.cb, align 8, !alias.scope !14383, !noalias !14384, !noundef !45 ; 5 uses
  %i.hp = icmp ugt i64 %.val.i157, %.val19.i
  br i1 %i.hp, label %bb.bm, label %.thread204

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14385
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %i.hq = phi i64 [ 0, %bb.bm ], [ %i.ic, %bb.bn ] ; 5 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.hr, align 8, !noalias !14385
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 0, ptr %i.hs, align 8, !noalias !14385
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.hu, align 8, !noalias !14385
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i64 0, ptr %i.hv, align 8, !noalias !14385
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.hx, align 8, !noalias !14385
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  store i64 0, ptr %i.hy, align 8, !noalias !14385
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.ia, align 8, !noalias !14385
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 56
  store i64 0, ptr %i.ib, align 8, !noalias !14385
  %i.ic = add nuw nsw i64 %i.hq, 4                ; 2 uses
  %exitcond.not.i160.3 = icmp eq i64 %i.ic, 64
  br i1 %exitcond.not.i160.3, label %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17hd9b876c933d45a44E.exit.i, label %bb.bn

_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17hd9b876c933d45a44E.exit.i: ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !14386)
  call void @llvm.experimental.noalias.scope.decl(metadata !14387)
  %.val.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !14388, !noalias !14389, !nonnull !45, !noundef !45
  %i.id = sub nuw i64 %.val.i157, %.val19.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.val19.i
  store ptr %i.ie, ptr %i.j, align 8, !alias.scope !14387, !noalias !14390
  store i64 %i.id, ptr %i.cg, align 8, !alias.scope !14387, !noalias !14390
  %i.if = invoke { i64, ptr } @"_ZN89_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h5ccb24d75bd1f638E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 1)
          to label %.noexc161 unwind label %.loopexit ; 2 uses

.noexc161:                                        ; preds = %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17hd9b876c933d45a44E.exit.i
  %i.ig = extractvalue { i64, ptr } %i.if, 0      ; 2 uses
  %i.ih = extractvalue { i64, ptr } %i.if, 1      ; 4 uses
  %i.ii = icmp eq i64 %i.ig, 2
  br i1 %i.ii, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %.noexc161
  %i.ij = ptrtoint ptr %i.ih to i64               ; 3 uses
  %i.ik = trunc nuw i64 %i.ig to i1
  br i1 %i.ik, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14385
  call void @llvm.experimental.noalias.scope.decl(metadata !14391)
  %2 = call i64 @llvm.usub.sat.i64(i64 %.val.i157, i64 %.val19.i) ; 2 uses
  %i.il = icmp ult i64 %2, %i.ij
  br i1 %i.il, label %bb.bq, label %"_ZN78_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc9a0af60f789511dE.exit.i", !prof !47

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14392
  store i64 %i.ij, ptr %i.i, align 8, !noalias !14392
  %i.im = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %i.im, align 8, !noalias !14392
  invoke void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i) #43
          to label %.noexc162 unwind label %.loopexit.split-lp

.noexc162:                                        ; preds = %bb.bq
  unreachable

"_ZN78_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc9a0af60f789511dE.exit.i": ; preds = %bb.bp
  %i.in = add i64 %.val19.i, %i.ij
  store i64 %i.in, ptr %i.cb, align 8, !alias.scope !14393, !noalias !14384
  br label %.thread213

bb.br:                                            ; preds = %.noexc154, %.noexc153, %bb.bc, %.noexc151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bl

bb.bs:                                            ; preds = %.noexc161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14385
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14385
  br label %bb.bu

.thread204:                                       ; preds = %bb.bl, %bb.ah, %.thread213
  %i.io = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @708, i64 noundef 31)
          to label %bb.bu unwind label %.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %.thread204, %bb.av, %bb.au
  %.sroa.9.1 = phi ptr [ %i.io, %.thread204 ], [ %i.fd, %bb.av ], [ undef, %bb.au ], [ %i.ih, %bb.bt ], [ undef, %bb.bs ] ; 3 uses
  %.sroa.0.1 = phi i64 [ 0, %.thread204 ], [ 0, %bb.av ], [ 1, %bb.au ], [ 0, %bb.bt ], [ 1, %bb.bs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14394)
  %i.ip = load i64, ptr %i.ap, align 8, !range !56, !alias.scope !14394, !noalias !14395, !noundef !45
  %.not.i.i163 = icmp eq i64 %i.ip, 2
  br i1 %.not.i.i163, label %.noexc164, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iq)
          to label %.noexc164 unwind label %bb.p

.noexc164:                                        ; preds = %bb.bv, %bb.bu
  %i.ir = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14395
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %bb.bw, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"

bb.bw:                                            ; preds = %.noexc164
  %i.it = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !14394, !noalias !14395, !align !48, !noundef !45 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.iu, null
  br i1 %.not4.i.i, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit", label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14396
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !14395, !nonnull !45, !align !55, !noundef !45
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iy = load i64, ptr %i.ix, align 8, !noalias !14395, !noundef !45
  store ptr %i.iw, ptr %i.f, align 8, !noalias !14396
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.iy, ptr %i.iz, align 8, !noalias !14396
  store ptr %i.f, ptr %i.g, align 8, !noalias !14396
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !14396
  store ptr @2097, ptr %i.h, align 8, !noalias !14396
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %i.ja, align 8, !noalias !14396
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.jb, align 8, !noalias !14396
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.jc, align 8, !noalias !14396
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.jd, align 8, !noalias !14396
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2098, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %.noexc165 unwind label %bb.p

.noexc165:                                        ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14396
  br label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"

bb.by:                                            ; preds = %bb.r
  br i1 %i.cn, label %bb.bz, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.by, %.thread213
  br label %.backedge

bb.bz:                                            ; preds = %bb.by
  %i.je = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %bb.ca, label %.thread224

bb.ca:                                            ; preds = %bb.bz
  %i.jg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.jg, label %bb.cb [
    i8 0, label %.thread224
    i8 1, label %.thread221
    i8 2, label %.thread221
  ], !prof !64

bb.cb:                                            ; preds = %bb.ca
  %i.jh = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E")
          to label %bb.cc unwind label %.loopexit.split-lp ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %i.ji = icmp eq i8 %i.jh, 0
  br i1 %i.ji, label %.thread224, label %.thread221

.thread221:                                       ; preds = %bb.ca, %bb.ca, %bb.cc
  %.sroa.057.0223 = phi i8 [ %i.jh, %bb.cc ], [ %i.jg, %bb.ca ], [ %i.jg, %bb.ca ]
  %i.jj = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.jk = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jj, i8 noundef %.sroa.057.0223)
          to label %bb.cd unwind label %.loopexit.split-lp

bb.cd:                                            ; preds = %.thread221
  br i1 %i.jk, label %bb.ce, label %.thread224

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.jl = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E", align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @710, ptr %i.ad, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr null, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.jq, align 8
  store ptr %i.ad, ptr %i.ae, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @93, ptr %i.jr, align 8
  store i64 1, ptr %i.af, align 8
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 1, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.jm, ptr %.sroa.460.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %.noexc170 unwind label %.loopexit.split-lp

.noexc170:                                        ; preds = %bb.ce
  %i.js = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14397
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %bb.cf, label %bb.co

bb.cf:                                            ; preds = %.noexc170
  %i.ju = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !14397 ; 2 uses
  %i.jv = icmp ult i64 %i.ju, 6
  call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp samesign ugt i64 %i.ju, 4
  br i1 %i.jw, label %bb.cg, label %bb.co

bb.cg:                                            ; preds = %bb.cf
  %i.jx = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E", align 8, !noalias !14397, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !nonnull !45, !align !55, !noundef !45
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kb = load i64, ptr %i.ka, align 8, !noundef !45
  store i64 5, ptr %i.e, align 8, !noalias !14397
  %.sroa.52.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.jz, ptr %.sroa.52.0..sroa_idx.i168, align 8, !noalias !14397
  %.sroa.7.0..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.kb, ptr %.sroa.7.0..sroa_idx.i169, align 8, !noalias !14397
  %i.kc = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc171 unwind label %.loopexit.split-lp ; 2 uses

.noexc171:                                        ; preds = %bb.cg
  %i.kd = extractvalue { ptr, ptr } %i.kc, 0      ; 2 uses
  %i.ke = extractvalue { ptr, ptr } %i.kc, 1      ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !invariant.load !45, !nonnull !45
  %i.kh = invoke noundef zeroext i1 %i.kg(ptr noundef align 1 %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %.noexc172 unwind label %.loopexit.split-lp, !inline_history !14349

.noexc172:                                        ; preds = %.noexc171
  br i1 %i.kh, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %.noexc172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !14397
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jx, ptr noundef nonnull align 1 %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %.noexc173 unwind label %.loopexit.split-lp

.noexc173:                                        ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14397
  br label %bb.co

.thread224:                                       ; preds = %bb.ca, %bb.cc, %bb.bz, %bb.cd
  %i.ki = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.kj = icmp eq i8 %i.ki, 0
end_hunk_0
begin_hunk_1_@"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush17hdbe3187738ef2784E":bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ge, align 8, !noalias !14533
  %i.gf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.o, ptr %i.gf, align 8, !noalias !14533
  %i.gg = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 2, ptr %i.gg, align 8, !noalias !14533
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1431) #43
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.au
  unreachable

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i": ; preds = %bb.at
  %i.gh = sub nuw i64 %i.gb, %.sroa.0.0.i.i
  store i64 %i.gh, ptr %i.cf, align 8, !alias.scope !14534, !noalias !14503
  %i.gi = load ptr, ptr %i.cp, align 8, !alias.scope !14534, !noalias !14503, !noundef !45
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sroa.0.0.i.i
  store ptr %i.gj, ptr %i.cp, align 8, !alias.scope !14534, !noalias !14503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !14532
  %i.gk = sub nuw i64 %i.ga, %.sroa.0.0.i.i
  store i64 %i.gk, ptr %i.cg, align 8, !alias.scope !14530, !noalias !14503
  br label %.thread227

bb.av:                                            ; preds = %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i"
  %.not.i.i = icmp ult i64 %i.fz, %i.fx
  br i1 %.not.i.i, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i", label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i"

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i": ; preds = %bb.av
  %i.gl = add i64 %i.fz, %i.fy
  store i64 %i.gl, ptr %i.ce, align 8, !alias.scope !14535, !noalias !14503
  %i.gm = sub nuw i64 %i.fx, %i.fz
  br label %bb.ar

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i": ; preds = %bb.av
  %i.gn = add i64 %i.fy, %i.fx
  store i64 %i.gn, ptr %i.ce, align 8, !alias.scope !14536, !noalias !14503
  br label %.thread227

bb.aw:                                            ; preds = %.noexc144, %.noexc143, %bb.x, %.noexc141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.ag

bb.ax:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14503
  br label %.thread246

.loopexit253:                                     ; preds = %.noexc148, %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread12.i"
  %.sroa.6.1.i.i.i415.i = phi ptr [ %i.fq, %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread12.i" ], [ %i.fv, %.noexc148 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1.i.i.i415.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14503
  br label %.thread246

.thread227:                                       ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i", %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i"
  %i.go = icmp eq ptr %.sroa.6.1.i.i.i4.ph.i, null
  br i1 %i.go, label %.thread218, label %.backedge.backedge

bb.ay:                                            ; preds = %.split
  %i.gp = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %bb.az, label %.thread224

bb.az:                                            ; preds = %bb.ay
  %i.gr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.gr, label %bb.ba [
    i8 0, label %.thread224
    i8 1, label %.thread221
    i8 2, label %.thread221
  ], !prof !64

bb.ba:                                            ; preds = %bb.az
  %i.gs = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E")
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %.thread224, label %.thread221

.thread221:                                       ; preds = %bb.az, %bb.az, %bb.bb
  %.sroa.036.0223 = phi i8 [ %i.gs, %bb.bb ], [ %i.gr, %bb.az ], [ %i.gr, %bb.az ]
  %i.gu = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.gv = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gu, i8 noundef %.sroa.036.0223)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bc:                                            ; preds = %.thread221
  br i1 %i.gv, label %bb.bd, label %.thread224

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.gw = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  store i64 1, ptr %i.al, align 8
  store ptr @707, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8
  store ptr %i.gx, ptr %.sroa.439.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc154:                                        ; preds = %bb.bd
  %i.gy = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14537
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %bb.be, label %bb.bw

bb.be:                                            ; preds = %.noexc154
  %i.ha = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !14537 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 6
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i64 %i.ha, 4
  br i1 %i.hc, label %bb.bf, label %bb.bw

bb.bf:                                            ; preds = %bb.be
  %i.hd = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !noalias !14537, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !nonnull !45, !align !55, !noundef !45
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hh = load i64, ptr %i.hg, align 8, !noundef !45
  store i64 5, ptr %i.n, align 8, !noalias !14537
  store ptr %i.hf, ptr %.sroa.52.0..sroa_idx.i152, align 8, !noalias !14537
  store i64 %i.hh, ptr %.sroa.7.0..sroa_idx.i153, align 8, !noalias !14537
  %i.hi = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc155:                                        ; preds = %bb.bf
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !45, !nonnull !45
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef align 1 %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !14455

.noexc156:                                        ; preds = %.noexc155
  br i1 %i.hn, label %bb.bg, label %bb.bw

bb.bg:                                            ; preds = %.noexc156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !14537
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hd, ptr noundef nonnull align 1 %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc157:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14537
  br label %bb.bw

.thread224:                                       ; preds = %bb.az, %bb.ay, %bb.bc, %bb.bb
  %i.ho = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %.thread224
  %i.hq = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.hr = icmp ult i64 %i.hq, 6
  call void @llvm.assume(i1 %i.hr)
  %i.hs = icmp samesign ugt i64 %i.hq, 4
  br i1 %i.hs, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.ht = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !nonnull !45, !align !55, !noundef !45
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hx = load i64, ptr %i.hw, align 8, !noundef !45
  store i64 5, ptr %i.ak, align 8
  store ptr %i.hv, ptr %.sroa.5115.0..sroa_idx, align 8
  store i64 %i.hx, ptr %.sroa.7116.0..sroa_idx, align 8
  %i.hy = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hz = extractvalue { ptr, ptr } %i.hy, 0      ; 2 uses
  %i.ia = extractvalue { ptr, ptr } %i.hy, 1      ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !invariant.load !45, !nonnull !45
  %i.id = invoke noundef zeroext i1 %i.ic(ptr noundef align 1 %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.id, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ie = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  store i64 1, ptr %i.aj, align 8
  store ptr @707, ptr %.sroa.494.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.595.0..sroa_idx, align 8
  store ptr %i.if, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ht, ptr noundef nonnull align 1 %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm, %bb.bh, %.thread224, %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !14538)
  call void @llvm.experimental.noalias.scope.decl(metadata !14539)
  %.val.i160 = load i64, ptr %i.cd, align 8, !alias.scope !14540, !noalias !14541, !noundef !45 ; 3 uses
  %.val19.i = load i64, ptr %i.ce, align 8, !alias.scope !14540, !noalias !14541, !noundef !45 ; 5 uses
  %i.ig = icmp ugt i64 %.val.i160, %.val19.i
  br i1 %i.ig, label %bb.bo, label %.thread218

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14542
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %bb.bo
  %i.ih = phi i64 [ 0, %bb.bo ], [ %i.it, %bb.bp ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ih ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ii, align 8, !noalias !14542
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 0, ptr %i.ij, align 8, !noalias !14542
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ih ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.il, align 8, !noalias !14542
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store i64 0, ptr %i.im, align 8, !noalias !14542
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ih ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.io, align 8, !noalias !14542
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 40
  store i64 0, ptr %i.ip, align 8, !noalias !14542
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ih ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.ir, align 8, !noalias !14542
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  store i64 0, ptr %i.is, align 8, !noalias !14542
  %i.it = add nuw nsw i64 %i.ih, 4                ; 2 uses
  %exitcond.not.i163.3 = icmp eq i64 %i.it, 64
  br i1 %exitcond.not.i163.3, label %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17hd9b876c933d45a44E.exit.i, label %bb.bp

_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17hd9b876c933d45a44E.exit.i: ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !14543)
  call void @llvm.experimental.noalias.scope.decl(metadata !14544)
  %.val.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !14545, !noalias !14546, !nonnull !45, !noundef !45
  %i.iu = sub nuw i64 %.val.i160, %.val19.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.val19.i
  store ptr %i.iv, ptr %i.l, align 8, !alias.scope !14544, !noalias !14547
  store i64 %i.iu, ptr %i.cj, align 8, !alias.scope !14544, !noalias !14547
  call void @llvm.experimental.noalias.scope.decl(metadata !14548)
  call void @llvm.experimental.noalias.scope.decl(metadata !14549)
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i165"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i165": ; preds = %bb.bs, %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17hd9b876c933d45a44E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14550
  store ptr %i.ck, ptr %i.k, align 8, !noalias !14550
  store ptr @2202, ptr %i.cl, align 8, !noalias !14550
  %i.iw = invoke { i64, ptr } @"_ZN67_$LT$rustls..conn..connection..Writer$u20$as$u20$std..io..Write$GT$14write_vectored17hb9072ed3480c9cfbE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.l, i64 noundef range(i64 0, 65) 1)
          to label %.noexc172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc172:                                        ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i165"
  %i.ix = extractvalue { i64, ptr } %i.iw, 0
  %i.iy = extractvalue { i64, ptr } %i.iw, 1      ; 5 uses
  %i.iz = trunc nuw i64 %i.ix to i1
  br i1 %i.iz, label %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread31.i", label %bb.bq

"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread31.i": ; preds = %.noexc172
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iy) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14550
  br label %.loopexit256

bb.bq:                                            ; preds = %.noexc172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14550
  br label %bb.br

bb.br:                                            ; preds = %bb.bu, %bb.bq
  %i.ja = load i64, ptr %i.cm, align 8, !alias.scope !14551, !noalias !14552, !noundef !45
  %.not.not.i.i.i.i166 = icmp eq i64 %i.ja, 0
  br i1 %.not.not.i.i.i.i166, label %bb.bs, label %bb.bt

.thread.i.i.i.i167:                               ; preds = %bb.bu, %.noexc173
  %.not5.i.i.i.i168 = icmp eq ptr %i.iy, null
  br i1 %.not5.i.i.i.i168, label %bb.bx, label %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i169"

bb.bs:                                            ; preds = %bb.br
  %.not.i.i.i.i171 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i171, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i165", label %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i169"

bb.bt:                                            ; preds = %bb.br
  %i.jb = invoke fastcc { i64, ptr } @"_ZN12tokio_rustls6common20Stream$LT$IO$C$C$GT$8write_io17hf4cda4144493f4f5E"(ptr nonnull align 8 dereferenceable(1208) %0, ptr nonnull %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc173:                                        ; preds = %bb.bt
  %i.jc = extractvalue { i64, ptr } %i.jb, 0
  %i.jd = extractvalue { i64, ptr } %i.jb, 1      ; 2 uses
  switch i64 %i.jc, label %.loopexit256 [
    i64 2, label %.thread.i.i.i.i167
    i64 0, label %bb.bu
  ]

bb.bu:                                            ; preds = %.noexc173
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %.thread.i.i.i.i167, label %bb.br

"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i169": ; preds = %bb.bs, %.thread.i.i.i.i167
  %i.jf = ptrtoint ptr %i.iy to i64               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14542
  call void @llvm.experimental.noalias.scope.decl(metadata !14553)
  %2 = call i64 @llvm.usub.sat.i64(i64 %.val.i160, i64 %.val19.i) ; 2 uses
  %i.jg = icmp ult i64 %2, %i.jf
  br i1 %i.jg, label %bb.bv, label %.thread227.thread, !prof !47

bb.bv:                                            ; preds = %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i169"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14554
  store i64 %i.jf, ptr %i.j, align 8, !noalias !14554
  %i.jh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %2, ptr %i.jh, align 8, !noalias !14554
  invoke void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j) #43
          to label %.noexc174 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc174:                                        ; preds = %bb.bv
  unreachable

.thread227.thread:                                ; preds = %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i169"
  %i.ji = add i64 %.val19.i, %i.jf
  store i64 %i.ji, ptr %i.ce, align 8, !alias.scope !14555, !noalias !14541
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread227.thread, %bb.cb, %.thread227
  br label %.backedge

bb.bw:                                            ; preds = %.noexc157, %.noexc156, %bb.be, %.noexc154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bn

bb.bx:                                            ; preds = %.thread.i.i.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14542
  br label %.thread246

.loopexit256:                                     ; preds = %.noexc173, %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread31.i"
  %.sroa.6.1.i.i.i2334.i = phi ptr [ %i.iy, %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread31.i" ], [ %i.jd, %.noexc173 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1.i.i.i2334.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14542
  br label %.thread246

.thread218:                                       ; preds = %bb.bn, %bb.ag, %.thread227
  %i.jj = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @708, i64 noundef 31)
          to label %.thread246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread246:                                       ; preds = %.noexc189, %bb.cu, %.noexc188, %bb.ct, %bb.bx, %.loopexit256, %.thread218, %.loopexit253, %bb.ax
  %.sroa.9.3 = phi ptr [ undef, %bb.bx ], [ %i.jj, %.thread218 ], [ %.sroa.6.1.i.i.i415.i, %.loopexit253 ], [ undef, %bb.ax ], [ %.sroa.6.1.i.i.i2334.i, %.loopexit256 ], [ %i.mg, %bb.ct ], [ %i.mc, %.noexc188 ], [ inttoptr (i64 98784247811 to ptr), %bb.cu ], [ inttoptr (i64 98784247811 to ptr), %.noexc189 ] ; 3 uses
  %.sroa.0.3 = phi i64 [ 1, %bb.bx ], [ 0, %.thread218 ], [ 0, %.loopexit253 ], [ 1, %bb.ax ], [ 0, %.loopexit256 ], [ 0, %bb.ct ], [ 0, %.noexc188 ], [ 1, %.noexc189 ], [ 0, %bb.cu ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14556)
  %i.jk = load i64, ptr %i.as, align 8, !range !56, !alias.scope !14556, !noalias !14557, !noundef !45
  %.not.i.i175 = icmp eq i64 %i.jk, 2
  br i1 %.not.i.i175, label %.noexc176, label %bb.by

bb.by:                                            ; preds = %.thread246
  %i.jl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jl)
          to label %.noexc176 unwind label %bb.p

.noexc176:                                        ; preds = %bb.by, %.thread246
  %i.jm = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14557
  %i.jn = icmp eq i8 %i.jm, 0
  br i1 %i.jn, label %bb.bz, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"

bb.bz:                                            ; preds = %.noexc176
  %i.jo = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !alias.scope !14556, !noalias !14557, !align !48, !noundef !45 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.jp, null
  br i1 %.not4.i.i, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit", label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14558
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !14557, !nonnull !45, !align !55, !noundef !45
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jt = load i64, ptr %i.js, align 8, !noalias !14557, !noundef !45
  store ptr %i.jr, ptr %i.g, align 8, !noalias !14558
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.jt, ptr %i.ju, align 8, !noalias !14558
  store ptr %i.g, ptr %i.h, align 8, !noalias !14558
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !14558
  store ptr @2097, ptr %i.i, align 8, !noalias !14558
  %i.jv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 2, ptr %i.jv, align 8, !noalias !14558
  %i.jw = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.jw, align 8, !noalias !14558
  %i.jx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.h, ptr %i.jx, align 8, !noalias !14558
  %i.jy = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %i.jy, align 8, !noalias !14558
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2098, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.i)
          to label %.noexc177 unwind label %bb.p

.noexc177:                                        ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14558
  br label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"

bb.cb:                                            ; preds = %bb.q
  br i1 %i.cw, label %bb.cc, label %.backedge.backedge

bb.cc:                                            ; preds = %bb.cb
  %i.jz = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %bb.cd, label %.thread238

bb.cd:                                            ; preds = %bb.cc
  %i.kb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.kb, label %bb.ce [
    i8 0, label %.thread238
    i8 1, label %.thread235
    i8 2, label %.thread235
  ], !prof !64

bb.ce:                                            ; preds = %bb.cd
  %i.kc = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E")
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %i.kd = icmp eq i8 %i.kc, 0
  br i1 %i.kd, label %.thread238, label %.thread235

.thread235:                                       ; preds = %bb.cd, %bb.cd, %bb.cf
  %.sroa.057.0237 = phi i8 [ %i.kc, %bb.cf ], [ %i.kb, %bb.cd ], [ %i.kb, %bb.cd ]
  %i.ke = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.kf = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ke, i8 noundef %.sroa.057.0237)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %.thread235
  br i1 %i.kf, label %bb.ch, label %.thread238

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.kg = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E", align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr @710, ptr %i.ag, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 1, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr null, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 0, ptr %i.kl, align 8
  store ptr %i.ag, ptr %i.ah, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @93, ptr %i.km, align 8
  store i64 1, ptr %i.ai, align 8
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 1, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.kh, ptr %.sroa.460.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %.noexc182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc182:                                        ; preds = %bb.ch
  %i.kn = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14559
  %i.ko = icmp eq i8 %i.kn, 0
  br i1 %i.ko, label %bb.ci, label %bb.cv

bb.ci:                                            ; preds = %.noexc182
  %i.kp = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !14559 ; 2 uses
  %i.kq = icmp ult i64 %i.kp, 6
  call void @llvm.assume(i1 %i.kq)
  %i.kr = icmp samesign ugt i64 %i.kp, 4
  br i1 %i.kr, label %bb.cj, label %bb.cv

bb.cj:                                            ; preds = %bb.ci
  %i.ks = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17h79547f321c2f3874E", align 8, !noalias !14559, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !nonnull !45, !align !55, !noundef !45
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.kw = load i64, ptr %i.kv, align 8, !noundef !45
  store i64 5, ptr %i.f, align 8, !noalias !14559
  %.sroa.52.0..sroa_idx.i180 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ku, ptr %.sroa.52.0..sroa_idx.i180, align 8, !noalias !14559
  %.sroa.7.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.kw, ptr %.sroa.7.0..sroa_idx.i181, align 8, !noalias !14559
  %i.kx = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc183:                                        ; preds = %bb.cj
  %i.ky = extractvalue { ptr, ptr } %i.kx, 0      ; 2 uses
  %i.kz = extractvalue { ptr, ptr } %i.kx, 1      ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !invariant.load !45, !nonnull !45
  %i.lc = invoke noundef zeroext i1 %i.lb(ptr noundef align 1 %i.ky, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc184 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !14486

.noexc184:                                        ; preds = %.noexc183
  br i1 %i.lc, label %bb.ck, label %bb.cv

bb.ck:                                            ; preds = %.noexc184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !14559
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ks, ptr noundef nonnull align 1 %i.ky, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc185:                                        ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14559
  br label %bb.cv

.thread238:                                       ; preds = %bb.cd, %bb.cf, %bb.cc, %bb.cg
  %i.ld = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
end_hunk_1
