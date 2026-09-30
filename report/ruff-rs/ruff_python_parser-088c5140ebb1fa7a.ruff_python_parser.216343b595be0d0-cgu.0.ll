Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7patternNtB4_6Parser28parse_sequence_match_pattern:bb.a
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !10038, !noalias !10039, !noundef !15 ; 2 uses
  %i.ai = load i64, ptr %i.aa, align 8, !range !26, !alias.scope !10038, !noalias !10039, !noundef !15
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i35

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i35 unwind label %.loopexit.split-lp168.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i35: ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i35
  %.sink9.i.i.i36 = phi i64 [ %i.ah, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i35 ], [ %i.ar, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45.backedge ] ; 2 uses
  %.sink2.i.i.i39 = phi i16 [ %i.af, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i35 ], [ %i.aq, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45.backedge ]
  %.sink.i.i.i40 = phi i8 [ 25, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i35 ], [ %i.ao, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45.backedge ]
  %i.al = phi <2 x i32> [ %i.ad, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i35 ], [ %i.ap, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45.backedge ]
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !10037, !noalias !15, !nonnull !15, !noundef !15
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %.sink9.i.i.i36 ; 3 uses
  store <2 x i32> %i.al, ptr %i.an, align 4, !noalias !15
  %.sroa.5.0..sroa_idx.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i16 %.sink2.i.i.i39, ptr %.sroa.5.0..sroa_idx.i.i.i.i42, align 4, !noalias !15
  %.sroa.6.0..sroa_idx.i.i.i.i43 = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  store i8 %.sink.i.i.i40, ptr %.sroa.6.0..sroa_idx.i.i.i.i43, align 2, !noalias !15
  %storemerge.i.i.i44 = add i64 %.sink9.i.i.i36, 1
  store i64 %storemerge.i.i.i44, ptr %i.ag, align 8, !alias.scope !10037, !noalias !15
  %i.ao = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc48 unwind label %.loopexit167 ; 2 uses

.noexc48:                                         ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45
  switch i8 %i.ao, label %.noexc13 [
    i8 12, label %bb.l
    i8 14, label %bb.l
  ]

bb.l:                                             ; preds = %.noexc48, %.noexc48
  %i.ap = load <2 x i32>, ptr %i.ab, align 8, !alias.scope !10040
  %i.aq = load i16, ptr %i.ae, align 8, !alias.scope !10040, !noundef !15
  %i.ar = load i64, ptr %i.ag, align 8, !alias.scope !10041, !noalias !10042, !noundef !15 ; 2 uses
  %i.as = load i64, ptr %i.aa, align 8, !range !26, !alias.scope !10041, !noalias !10042, !noundef !15
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.m, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45.backedge

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45.backedge unwind label %.loopexit167

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45.backedge: ; preds = %bb.m, %bb.l
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45

.noexc13:                                         ; preds = %.noexc48
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !10036, !noundef !15
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !alias.scope !10036
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit

.noexc13.thread:                                  ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10034
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 25, ptr %i.ax, align 1, !noalias !10034
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.w, ptr %i.ay, align 2, !noalias !10034
  store i8 35, ptr %i.i, align 8, !noalias !10034
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ba = load i32, ptr %i.az, align 8, !alias.scope !10034, !noundef !15
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !10034, !noundef !15
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.i, i32 noundef %i.ba, i32 noundef %i.bc)
          to label %.noexc14 unwind label %.loopexit.split-lp168.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc13.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10034
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit

.loopexit167:                                     ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i45, %bb.m
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp168.loopexit:                   ; preds = %bb.q, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp168.loopexit.split-lp:          ; preds = %bb.k, %bb.r, %bb.o, %.noexc13.thread, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4peek.exit14.i, %bb.g, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4peek.exit.i, %bb.e
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7patternNtB6_6Parser28parse_sequence_match_pattern0B8_.exit: ; preds = %.noexc10, %.noexc12
  %.sroa.06.0.i = phi i64 [ 23, %.noexc12 ], [ 21, %.noexc10 ]
  %.sroa.05.0.i = phi i8 [ %i.t, %.noexc12 ], [ %i.r, %.noexc10 ]
  %i.be = zext nneg i8 %.sroa.05.0.i to i64
  %i.bf = icmp eq i64 %.sroa.06.0.i, %i.be
  br i1 %i.bf, label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7patternNtB6_6Parser28parse_sequence_match_pattern0B8_.exit.thread, label %bb.i

_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7patternNtB6_6Parser28parse_sequence_match_pattern0B8_.exit.thread: ; preds = %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7patternNtB6_6Parser28parse_sequence_match_pattern0B8_.exit
  %.pr = load i8, ptr %i.n, align 4, !alias.scope !10043
  %i.bg = icmp eq i8 %.pr, 25
  br i1 %i.bg, label %bb.n, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit

bb.n:                                             ; preds = %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7patternNtB6_6Parser28parse_sequence_match_pattern0B8_.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 436
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bl = load i32, ptr %i.bh, align 4, !alias.scope !10044, !noundef !15
  %i.bm = load <2 x i32>, ptr %i.bk, align 8, !alias.scope !10044
  store i32 %i.bl, ptr %i.bi, align 4, !alias.scope !10044
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 8, !alias.scope !10045, !noundef !15
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !10046, !noalias !10047, !noundef !15 ; 2 uses
  %i.br = load i64, ptr %i.bj, align 8, !range !26, !alias.scope !10046, !noalias !10047, !noundef !15
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %.loopexit.split-lp168.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %.sink9.i.i.i = phi i64 [ %i.bq, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %i.ca, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge ] ; 2 uses
  %.sink2.i.i.i = phi i16 [ %i.bo, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %i.bz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge ]
  %.sink.i.i.i = phi i8 [ 25, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %i.bx, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge ]
  %i.bu = phi <2 x i32> [ %i.bm, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %i.by, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge ]
  %i.bv = load ptr, ptr %i.bt, align 8, !alias.scope !10045, !noalias !15, !nonnull !15, !noundef !15
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %.sink9.i.i.i ; 3 uses
  store <2 x i32> %i.bu, ptr %i.bw, align 4, !noalias !15
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i16 %.sink2.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !15
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 10
  store i8 %.sink.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 2, !noalias !15
  %storemerge.i.i.i = add i64 %.sink9.i.i.i, 1
  store i64 %storemerge.i.i.i, ptr %i.bp, align 8, !alias.scope !10045, !noalias !15
  %i.bx = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc16 unwind label %.loopexit.split-lp168.loopexit ; 2 uses

.noexc16:                                         ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  switch i8 %i.bx, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump.exit.i [
    i8 12, label %bb.p
    i8 14, label %bb.p
  ]

bb.p:                                             ; preds = %.noexc16, %.noexc16
  %i.by = load <2 x i32>, ptr %i.bk, align 8, !alias.scope !10048
  %i.bz = load i16, ptr %i.bn, align 8, !alias.scope !10048, !noundef !15
  %i.ca = load i64, ptr %i.bp, align 8, !alias.scope !10049, !noalias !10050, !noundef !15 ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !26, !alias.scope !10049, !noalias !10050, !noundef !15
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.q, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge unwind label %.loopexit.split-lp168.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge: ; preds = %bb.q, %bb.p
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump.exit.i: ; preds = %.noexc16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !10044, !noundef !15
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !alias.scope !10044
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit: ; preds = %bb.d, %bb.c, %.noexc13, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump.exit.i, %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7patternNtB6_6Parser28parse_sequence_match_pattern0B8_.exit.thread, %.noexc14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.cg = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #42 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.r, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !29

bb.r:                                             ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #41
          to label %.noexc18 unwind label %.loopexit.split-lp168.loopexit.split-lp

.noexc18:                                         ; preds = %bb.r
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  store i64 1, ptr %i.l, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %i.cj, align 8
  %.sroa.48.0.insert.ext = zext nneg i8 %4 to i16
  %.sroa.48.0.insert.shift = shl nuw nsw i16 %.sroa.48.0.insert.ext, 8
  %.sroa.07.0.insert.insert = or disjoint i16 %.sroa.48.0.insert.shift, 15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10051)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 6 uses
  %i.cl = load i32, ptr %i.ck, align 8, !alias.scope !10051, !noalias !10052, !noundef !15 ; 4 uses
  %i.cm = trunc i8 %4 to i1                       ; 3 uses
  %.17.i = select i1 %i.cm, i32 65536, i32 131072
  %.sroa.08.0.i = select i1 %.not, i32 32768, i32 %.17.i
  %i.cn = or i32 %i.cl, %.sroa.08.0.i
  store i32 %i.cn, ptr %i.ck, align 8, !alias.scope !10051, !noalias !10052
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 6 uses
  %.35.i.i = select i1 %i.cm, i64 23, i64 21
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 436 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.cz = load i32, ptr %.phi.trans.insert.i, align 8, !alias.scope !10053, !noalias !10054
  br label %.noexc19

bb.s:                                             ; preds = %.noexc28.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10055
  %i.da = load i32, ptr %i.cp, align 8, !alias.scope !10056, !noalias !10054, !noundef !15 ; 2 uses
  %i.db = load i32, ptr %i.cq, align 4, !alias.scope !10056, !noalias !10054, !noundef !15 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.val.i78 = load ptr, ptr %i.dc, align 8, !alias.scope !10056, !noalias !10054, !nonnull !15, !noundef !15
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val13.i = load i64, ptr %i.dd, align 8, !alias.scope !10056, !noalias !10054, !noundef !15
  %i.de = invoke fastcc { ptr, i64 } @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser8src_textNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_(ptr nonnull %.val.i78, i64 %.val13.i, i32 noundef %i.da, i32 noundef %i.db)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc79:                                         ; preds = %bb.s
  %i.df = extractvalue { ptr, i64 } %i.de, 0
  %i.dg = extractvalue { ptr, i64 } %i.de, 1
  store ptr %i.df, ptr %i.d, align 8, !noalias !10055
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !noalias !10055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10055
  %i.di = load i8, ptr %i.co, align 4, !range !22, !alias.scope !10056, !noalias !10054, !noundef !15
  store i8 %i.di, ptr %i.c, align 1, !noalias !10055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10055
  store i32 %i.da, ptr %i.b, align 4, !noalias !10055
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.db, ptr %i.dj, align 4, !noalias !10055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10055
  store ptr %i.d, ptr %i.a, align 8, !noalias !10055
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsb6FLkjZuKG_18ruff_python_parser, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10055
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.dk, align 8, !noalias !10055
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsn_NtCskLngH8kgpZI_15ruff_python_ast5tokenNtB5_9TokenKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !10055
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.dl, align 8, !noalias !10055
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size5rangeNtB2_9TextRangeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !10055
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @289, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #41
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %.noexc79
  unreachable

.noexc19:                                         ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, %.noexc28.backedge
  %i.dm = phi i32 [ %i.cz, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit ], [ %i.gf, %.noexc28.backedge ]
  %.sroa.018.0.i193 = phi i1 [ true, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.018.0.i.be, %.noexc28.backedge ]
  %i.dn = phi i64 [ 1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit ], [ %i.ge, %.noexc28.backedge ] ; 4 uses
  %i.do = phi ptr [ %i.cg, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit ], [ %i.gd, %.noexc28.backedge ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10056)
  %i.dp = load i8, ptr %i.co, align 4, !range !22, !alias.scope !10057, !noalias !10052, !noundef !15 ; 4 uses
  %i.dq = icmp eq i8 %i.dp, 27
  br i1 %i.dq, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.i.thread, label %bb.t

bb.t:                                             ; preds = %.noexc19
  %i.dr = zext nneg i8 %i.dp to i128
  %i.ds = shl nuw nsw i128 1, %i.dr
  %i.dt = and i128 %i.ds, 159695473993633670366850187295
  %i.du = icmp ne i128 %i.dt, 0
  %i.dv = add nsw i8 %i.dp, -102
  %spec.select23.i.i = icmp ult i8 %i.dv, 4
  %or.cond = select i1 %i.du, i1 true, i1 %spec.select23.i.i
  br i1 %or.cond, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.i.thread, label %.noexc21.thread

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.i.thread: ; preds = %.noexc19, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10058
  invoke fastcc void @_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7patternNtB4_6Parser19parse_match_pattern(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i1 noundef zeroext false)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !9994

.noexc74:                                         ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.i.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10059)
  %i.dw = load i64, ptr %i.l, align 8, !range !26, !alias.scope !10059, !noalias !10060, !noundef !15
  %i.dx = icmp eq i64 %i.dn, %i.dw
  br i1 %i.dx, label %bb.u, label %.noexc20

bb.u:                                             ; preds = %.noexc74
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %..noexc20_crit_edge unwind label %bb.v, !noalias !10060, !inline_history !9994

..noexc20_crit_edge:                              ; preds = %bb.u
  %.pre = load ptr, ptr %i.ci, align 8, !alias.scope !10059, !noalias !10060
  br label %.noexc20

bb.v:                                             ; preds = %bb.u
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #44
          to label %.body75 unwind label %bb.w, !noalias !10061, !inline_history !9994

bb.w:                                             ; preds = %bb.v
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !10061, !inline_history !9994
  unreachable

.noexc20:                                         ; preds = %..noexc20_crit_edge, %.noexc74
  %i.ea = phi ptr [ %.pre, %..noexc20_crit_edge ], [ %i.do, %.noexc74 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [72 x i8], ptr %i.ea, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eb, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !10061
  %i.ec = add i64 %i.dn, 1                        ; 3 uses
  store i64 %i.ec, ptr %i.cj, align 8, !alias.scope !10059, !noalias !10060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10058
  %i.ed = load <2 x i32>, ptr %i.cp, align 8, !alias.scope !10051, !noalias !10052
  %i.ee = load i8, ptr %i.co, align 4, !range !22, !alias.scope !10062, !noundef !15 ; 2 uses
  %i.ef = icmp eq i8 %i.ee, 25
  br i1 %i.ef, label %bb.x, label %.noexc21.thread

bb.x:                                             ; preds = %.noexc20
  %i.eg = load i32, ptr %i.cq, align 4, !alias.scope !10051, !noalias !10052, !noundef !15
  store i32 %i.eg, ptr %i.cr, align 4, !alias.scope !10063
  %i.eh = load i16, ptr %i.ct, align 8, !alias.scope !10064, !noundef !15
  %i.ei = load i64, ptr %i.cu, align 8, !alias.scope !10065, !noalias !10066, !noundef !15 ; 2 uses
  %i.ej = load i64, ptr %i.cs, align 8, !range !26, !alias.scope !10065, !noalias !10066, !noundef !15
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.y, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.preheader

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.preheader: ; preds = %bb.y, %bb.x
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.preheader
  %.sink9.i.i.i59 = phi i64 [ %i.ei, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.preheader ], [ %i.er, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.backedge ] ; 2 uses
  %.sink2.i.i.i62 = phi i16 [ %i.eh, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.preheader ], [ %i.eq, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.backedge ]
  %.sink.i.i.i63 = phi i8 [ 25, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.preheader ], [ %i.eo, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.backedge ]
  %i.el = phi <2 x i32> [ %i.ed, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.preheader ], [ %i.ep, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.backedge ]
  %i.em = load ptr, ptr %i.cv, align 8, !alias.scope !10064, !noalias !15, !nonnull !15, !noundef !15
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %.sink9.i.i.i59 ; 3 uses
  store <2 x i32> %i.el, ptr %i.en, align 4, !noalias !15
  %.sroa.5.0..sroa_idx.i.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i16 %.sink2.i.i.i62, ptr %.sroa.5.0..sroa_idx.i.i.i.i65, align 4, !noalias !15
  %.sroa.6.0..sroa_idx.i.i.i.i66 = getelementptr inbounds nuw i8, ptr %i.en, i64 10
  store i8 %.sink.i.i.i63, ptr %.sroa.6.0..sroa_idx.i.i.i.i66, align 2, !noalias !15
  %storemerge.i.i.i67 = add i64 %.sink9.i.i.i59, 1
  store i64 %storemerge.i.i.i67, ptr %i.cu, align 8, !alias.scope !10064, !noalias !15
  %i.eo = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc71 unwind label %.loopexit ; 2 uses

.noexc71:                                         ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58
  switch i8 %i.eo, label %.noexc21 [
    i8 12, label %bb.z
    i8 14, label %bb.z
  ]

bb.z:                                             ; preds = %.noexc71, %.noexc71
  %i.ep = load <2 x i32>, ptr %i.cp, align 8, !alias.scope !10067
  %i.eq = load i16, ptr %i.ct, align 8, !alias.scope !10067, !noundef !15
  %i.er = load i64, ptr %i.cu, align 8, !alias.scope !10068, !noalias !10069, !noundef !15 ; 2 uses
  %i.es = load i64, ptr %i.cs, align 8, !range !26, !alias.scope !10068, !noalias !10069, !noundef !15
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %bb.aa, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.backedge

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.backedge unwind label %.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58.backedge: ; preds = %bb.aa, %bb.z
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58

.noexc21:                                         ; preds = %.noexc71
  %i.eu = load i32, ptr %.phi.trans.insert.i, align 8, !alias.scope !10063, !noundef !15
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %.phi.trans.insert.i, align 8, !alias.scope !10063
  br label %.noexc28.backedge

.noexc21.thread:                                  ; preds = %bb.t, %.noexc20
  %i.ew = phi i8 [ %i.ee, %.noexc20 ], [ %i.dp, %bb.t ] ; 9 uses
  %i.ex = phi ptr [ %i.ea, %.noexc20 ], [ %i.do, %bb.t ] ; 3 uses
  %i.ey = phi i64 [ %i.ec, %.noexc20 ], [ %i.dn, %bb.t ] ; 3 uses
  %.sroa.018.1.i = phi i1 [ false, %.noexc20 ], [ %.sroa.018.0.i193, %bb.t ] ; 4 uses
  %i.ez = zext nneg i8 %i.ew to i64
  %i.fa = icmp eq i8 %i.ew, 17
  br i1 %i.fa, label %.noexc24, label %bb.ab

bb.ab:                                            ; preds = %.noexc21.thread
  br i1 %.not, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i, label %.split

.split:                                           ; preds = %bb.ab
  %i.fb = icmp eq i64 %.35.i.i, %i.ez
  br i1 %i.fb, label %.noexc24.thread188, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i.thread

.noexc24.thread188:                               ; preds = %.split
  store i32 %i.cl, ptr %i.ck, align 8, !alias.scope !10051, !noalias !10052
  br label %bb.am

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i: ; preds = %bb.ab
  switch i8 %i.ew, label %bb.ac [
    i8 85, label %.noexc24.thread
    i8 24, label %.noexc24.thread
    i8 27, label %.noexc55.thread
  ]

.noexc24.thread:                                  ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i
  store i32 %i.cl, ptr %i.ck, align 8, !alias.scope !10051, !noalias !10052
  br label %bb.ao

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i.thread: ; preds = %.split
  %i.fc = icmp eq i8 %i.ew, 27
  br i1 %i.fc, label %.noexc55.thread, label %bb.ac

bb.ac:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i.thread
  %i.fd = zext nneg i8 %i.ew to i128
  %i.fe = shl nuw nsw i128 1, %i.fd
  %i.ff = and i128 %i.fe, 159695473993633670366850187295
  %i.fg = icmp eq i128 %i.ff, 0
  br i1 %i.fg, label %.split135, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit64.i.thread

.split135:                                        ; preds = %bb.ac
  %i.fh = add nsw i8 %i.ew, -102
  %spec.select23.i55.i = icmp ult i8 %i.fh, 4
  br i1 %spec.select23.i55.i, label %.noexc55.thread, label %bb.ad, !prof !70

.noexc24:                                         ; preds = %.noexc21.thread, %bb.aj
  store i32 %i.cl, ptr %i.ck, align 8, !alias.scope !10051, !noalias !10052
  br i1 %.not, label %bb.ao, label %bb.am

bb.ad:                                            ; preds = %.split135
  %.val69.i = load i32, ptr %i.ck, align 8, !alias.scope !10051, !noalias !10052, !noundef !15
  %i.fi = invoke fastcc noundef zeroext i1 @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser39is_enclosing_list_element_or_terminator(i8 %i.ew, i32 %.val69.i)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !10012

.noexc22:                                         ; preds = %bb.ad
  br i1 %i.fi, label %bb.aj, label %bb.ai

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit64.i.thread: ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10070)
  %i.fj = icmp eq i8 %i.ew, 25
  br i1 %i.fj, label %bb.ae, label %.noexc55.thread

bb.ae:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit64.i.thread
  %i.fk = load i32, ptr %i.cq, align 4, !alias.scope !10071, !noundef !15
  %i.fl = load <2 x i32>, ptr %i.cp, align 8, !alias.scope !10071
  store i32 %i.fk, ptr %i.cr, align 4, !alias.scope !10071
  %i.fm = load i16, ptr %i.ct, align 8, !alias.scope !10072, !noundef !15
  %i.fn = load i64, ptr %i.cu, align 8, !alias.scope !10073, !noalias !10074, !noundef !15 ; 2 uses
  %i.fo = load i64, ptr %i.cs, align 8, !range !26, !alias.scope !10073, !noalias !10074, !noundef !15
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.af, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.preheader

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.preheader: ; preds = %bb.af, %bb.ae
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.preheader
  %.sink9.i.i.i85 = phi i64 [ %i.fn, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.preheader ], [ %i.fw, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.backedge ] ; 2 uses
  %.sink2.i.i.i88 = phi i16 [ %i.fm, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.preheader ], [ %i.fv, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.backedge ]
  %.sink.i.i.i89 = phi i8 [ 25, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.preheader ], [ %i.ft, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.backedge ]
  %i.fq = phi <2 x i32> [ %i.fl, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.preheader ], [ %i.fu, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.backedge ]
  %i.fr = load ptr, ptr %i.cv, align 8, !alias.scope !10072, !noalias !15, !nonnull !15, !noundef !15
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fr, i64 %.sink9.i.i.i85 ; 3 uses
  store <2 x i32> %i.fq, ptr %i.fs, align 4, !noalias !15
  %.sroa.5.0..sroa_idx.i.i.i.i91 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i16 %.sink2.i.i.i88, ptr %.sroa.5.0..sroa_idx.i.i.i.i91, align 4, !noalias !15
  %.sroa.6.0..sroa_idx.i.i.i.i92 = getelementptr inbounds nuw i8, ptr %i.fs, i64 10
  store i8 %.sink.i.i.i89, ptr %.sroa.6.0..sroa_idx.i.i.i.i92, align 2, !noalias !15
  %storemerge.i.i.i93 = add i64 %.sink9.i.i.i85, 1
  store i64 %storemerge.i.i.i93, ptr %i.cu, align 8, !alias.scope !10072, !noalias !15
  %i.ft = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc97:                                         ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84
  switch i8 %i.ft, label %.noexc55 [
    i8 12, label %bb.ag
    i8 14, label %bb.ag
  ]

bb.ag:                                            ; preds = %.noexc97, %.noexc97
  %i.fu = load <2 x i32>, ptr %i.cp, align 8, !alias.scope !10075
  %i.fv = load i16, ptr %i.ct, align 8, !alias.scope !10075, !noundef !15
  %i.fw = load i64, ptr %i.cu, align 8, !alias.scope !10076, !noalias !10077, !noundef !15 ; 2 uses
  %i.fx = load i64, ptr %i.cs, align 8, !range !26, !alias.scope !10076, !noalias !10077, !noundef !15
  %i.fy = icmp eq i64 %i.fw, %i.fx
  br i1 %i.fy, label %bb.ah, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.backedge

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.backedge unwind label %.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84.backedge: ; preds = %bb.ah, %bb.ag
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84

.noexc55:                                         ; preds = %.noexc97
  %i.fz = load i32, ptr %.phi.trans.insert.i, align 8, !alias.scope !10071, !noundef !15
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %.phi.trans.insert.i, align 8, !alias.scope !10071
  br label %.noexc28.backedge

.noexc55.thread:                                  ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind20list_terminator_kind.exit.i.thread, %.split135, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit64.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10070
  store i8 25, ptr %i.cx, align 1, !noalias !10070
  store i8 %i.ew, ptr %i.cy, align 2, !noalias !10070
  store i8 35, ptr %i.f, align 8, !noalias !10070
  %i.gb = load i32, ptr %i.cp, align 8, !alias.scope !10070, !noundef !15
  %i.gc = load i32, ptr %i.cq, align 4, !alias.scope !10070, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f, i32 noundef %i.gb, i32 noundef %i.gc)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc56:                                         ; preds = %.noexc55.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10070
  br label %.noexc28.backedge

.noexc28.backedge:                                ; preds = %.noexc56, %.noexc55, %.noexc27, %.noexc21
  %i.gd = phi ptr [ %i.ea, %.noexc21 ], [ %i.ex, %.noexc27 ], [ %i.ex, %.noexc55 ], [ %i.ex, %.noexc56 ]
  %i.ge = phi i64 [ %i.ec, %.noexc21 ], [ %i.ey, %.noexc27 ], [ %i.ey, %.noexc55 ], [ %i.ey, %.noexc56 ]
  %.sroa.018.0.i.be = phi i1 [ false, %.noexc21 ], [ %.sroa.018.1.i, %.noexc27 ], [ %.sroa.018.1.i, %.noexc55 ], [ %.sroa.018.1.i, %.noexc56 ]
  %i.gf = load i32, ptr %.phi.trans.insert.i, align 8, !alias.scope !10078, !noalias !10054 ; 2 uses
  %.not.i77 = icmp eq i32 %i.dm, %i.gf
  br i1 %.not.i77, label %bb.s, label %.noexc19, !prof !23

bb.ai:                                            ; preds = %.noexc22
  %.val70.i.pre = load i8, ptr %i.co, align 4, !alias.scope !10051, !noalias !10052 ; 2 uses
  %i.gg = icmp eq i8 %.val70.i.pre, 25
  %or.cond191 = select i1 %.sroa.018.1.i, i1 true, i1 %i.gg
  br i1 %or.cond191, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %.noexc22
  invoke fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource20re_lex_logical_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !10012

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10079
  invoke fastcc void @_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind12create_error(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.h, i16 range(i16 15, 528) %.sroa.07.0.insert.insert, i8 %.val70.i.pre)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !10012

.noexc25:                                         ; preds = %bb.ak
  %i.gh = load i32, ptr %i.cp, align 8, !alias.scope !10051, !noalias !10052, !noundef !15
  %i.gi = load i32, ptr %i.cq, align 4, !alias.scope !10051, !noalias !10052, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.h, i32 noundef %i.gh, i32 noundef %i.gi)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc26:                                         ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10079
  br label %.noexc27

bb.al:                                            ; preds = %bb.ai
  invoke fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect(ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i8 noundef 25)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %bb.al, %.noexc26
  invoke fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser8bump_any(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc28.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !10012

.loopexit:                                        ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i58, %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.loopexit.split-lp.loopexit:                      ; preds = %bb.ah, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i84
  %lpad.loopexit162 = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.al, %bb.ad, %bb.ak, %.noexc27, %.noexc25, %.noexc55.thread, %bb.y, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.i.thread, %bb.af
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.am, %bb.an, %bb.s, %.noexc79
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.body75:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.v
  %eh.lpad-body76 = phi { ptr, i32 } [ %i.dy, %bb.v ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit162, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit165, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(24) %i.l) #44
          to label %bb.aq unwind label %bb.ap

bb.am:                                            ; preds = %.noexc24.thread188, %.noexc24
  %..i = select i1 %i.cm, i8 23, i8 21            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10080)
  %i.gj = invoke fastcc noundef zeroext i1 @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat(ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i8 noundef range(i8 7, 88) %..i)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.am
  br i1 %i.gj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10080
  %i.gk = load i8, ptr %i.co, align 4, !range !22, !alias.scope !10080, !noundef !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %..i, ptr %i.gl, align 1, !noalias !10080
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.gk, ptr %i.gm, align 2, !noalias !10080
  store i8 35, ptr %i.g, align 8, !noalias !10080
  %i.gn = load i32, ptr %i.cp, align 8, !alias.scope !10080, !noundef !15
  %i.go = load i32, ptr %i.cq, align 4, !alias.scope !10080, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g, i32 noundef %i.gn, i32 noundef %i.go)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10080
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc24.thread, %.noexc24, %.noexc32, %.noexc33
  %.val = load i32, ptr %i.cr, align 4, !noundef !15 ; 2 uses
  %.sroa.0.0.i31 = tail call i32 @llvm.umin.i32(i32 %.val, i32 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -2, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.i31, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val, ptr %i.gr, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.ap:                                            ; preds = %.thread, %.body75
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.aq:                                            ; preds = %.body75, %.thread
  %.pn105 = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %eh.lpad-body76, %.body75 ]
  resume { ptr, i32 } %.pn105

.thread:                                          ; preds = %.loopexit167, %.loopexit.split-lp168.loopexit.split-lp, %.loopexit.split-lp168.loopexit, %common.resume.i
  %eh.lpad-body = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %lpad.loopexit169, %.loopexit167 ], [ %lpad.loopexit172, %.loopexit.split-lp168.loopexit ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp168.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %2) #44
          to label %bb.aq unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB4_6Parser10parse_body(ptr noalias noundef nonnull align 8 dereferenceable(464) %0, i8 noundef range(i8 0, 12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 4                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 4                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [88 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 19 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.y = load <2 x i32>, ptr %i.w, align 8        ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 13 uses
  %i.aa = load i8, ptr %i.z, align 4, !range !22, !alias.scope !10184, !noundef !15 ; 3 uses
  %i.ab = icmp eq i8 %i.aa, 13
  br i1 %i.ab, label %bb.b, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 8, !alias.scope !10185, !noundef !15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !10186, !noalias !10187, !noundef !15 ; 2 uses
  %i.ah = load i64, ptr %i.ac, align 8, !range !26, !alias.scope !10186, !noalias !10187, !noundef !15
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.c, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac), !noalias !10187
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %.sink9.i.i.i = phi i64 [ %i.ag, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %i.aq, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge ] ; 2 uses
  %.sink2.i.i.i = phi i16 [ %i.ae, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %i.ap, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge ]
  %.sink.i.i.i = phi i8 [ 13, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %i.an, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge ]
  %i.ak = phi <2 x i32> [ %i.y, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %i.ao, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge ]
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !10185, !noalias !15, !nonnull !15, !noundef !15
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %.sink9.i.i.i ; 3 uses
  store <2 x i32> %i.ak, ptr %i.am, align 4, !noalias !15
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i16 %.sink2.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !15
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  store i8 %.sink.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 2, !noalias !15
  %storemerge.i.i.i = add i64 %.sink9.i.i.i, 1
  store i64 %storemerge.i.i.i, ptr %i.af, align 8, !alias.scope !10185, !noalias !15
  %i.an = tail call noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %0) ; 2 uses
  switch i8 %i.an, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit [
    i8 12, label %bb.d
    i8 14, label %bb.d
  ]

bb.d:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.ao = load <2 x i32>, ptr %i.w, align 8, !alias.scope !10188
  %i.ap = load i16, ptr %i.ad, align 8, !alias.scope !10188, !noundef !15
  %i.aq = load i64, ptr %i.af, align 8, !alias.scope !10189, !noalias !10190, !noundef !15 ; 2 uses
  %i.ar = load i64, ptr %i.ac, align 8, !range !26, !alias.scope !10189, !noalias !10190, !noundef !15
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac), !noalias !10190
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.backedge: ; preds = %bb.e, %bb.d
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 7 uses
  %i.au = load i32, ptr %i.at, align 8, !alias.scope !10191, !noundef !15
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8, !alias.scope !10191
  %.val26 = load i8, ptr %i.z, align 4, !range !22, !noundef !15
  %i.aw = icmp eq i8 %.val26, 15
  br i1 %i.aw, label %bb.t, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit39

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread: ; preds = %bb.a
  %i.ax = zext nneg i8 %i.aa to i128
  %i.ay = shl nuw nsw i128 1, %i.ax
  %i.az = and i128 %i.ay, 43406618264075839438615892461887
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = add nsw i8 %i.aa, -102
  %spec.select.i = icmp ult i8 %i.bb, 4
  %.sroa.0.0.i = or i1 %spec.select.i, %i.ba
  br i1 %.sroa.0.0.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !10192
  %i.bc = tail call noundef dereferenceable_or_null(27) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 27, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !10192 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.s, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit

bb.g:                                             ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10193)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %.val16.i = load i64, ptr %i.bf, align 8, !alias.scope !10193, !noundef !15 ; 2 uses
  %i.bg = icmp ult i64 %.val16.i, 104811045873349726
  tail call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10193
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @2, ptr %i.bh, align 8, !noalias !10193
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 42, ptr %i.bi, align 8, !noalias !10193
  store i64 -1, ptr %i.n, align 8, !noalias !10193
  call void @_RNvMs2_Cs2ejIrJBd6Qk_9drop_bombNtB5_8FakeBomb3new(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !10193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10193
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bp = load i32, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !10194, !noalias !10195
  br label %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i

.noexc.i:                                         ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10196
  %i.bq = load i32, ptr %i.w, align 8, !alias.scope !10197, !noalias !10195, !noundef !15 ; 2 uses
  %i.br = load i32, ptr %i.x, align 4, !alias.scope !10197, !noalias !10195, !noundef !15 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !10197, !noalias !10195, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val13.i.i = load i64, ptr %i.bt, align 8, !alias.scope !10197, !noalias !10195, !noundef !15
  %i.bu = call fastcc { ptr, i64 } @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser8src_textNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_(ptr nonnull %.val.i.i, i64 %.val13.i.i, i32 noundef %i.bq, i32 noundef %i.br) ; 2 uses
end_hunk_0
