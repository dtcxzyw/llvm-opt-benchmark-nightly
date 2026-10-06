Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE6atomicNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0EB12_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.ah = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1302, i64 noundef 2) #64 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 15 uses
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.09.0.copyload.i.i.i9.i = load i64, ptr %i.aj, align 8, !alias.scope !9449
  %.sroa.510.0..sroa_idx.i.i.i10.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = trunc nuw i64 %.sroa.09.0.copyload.i.i.i9.i to i1
  br i1 %i.al, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.sroa.6.0..sroa_idx.i.i.i22.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.0.copyload.i.i.i23.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i22.i, align 8, !alias.scope !9449
  %.sroa.510.0.copyload.i.i.i24.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i10.i, align 8, !alias.scope !9449 ; 2 uses
  %.not.i.i.i25.i = icmp ult i64 %.sroa.510.0.copyload.i.i.i24.i, %.sroa.6.0.copyload.i.i.i23.i
  br i1 %.not.i.i.i25.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.am = add nuw i64 %.sroa.510.0.copyload.i.i.i24.i, 1
  store i64 %i.am, ptr %.sroa.510.0..sroa_idx.i.i.i10.i, align 8, !alias.scope !9449
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.an = tail call fastcc { i64, ptr } @_RNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBl_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBl_4RuleE5parse5rules7visible7COMMENT0s_0000Bn_(ptr noalias noundef nonnull align 8 %i.aj) ; 2 uses
  %.sroa.0.01820.i.i.i11.i = extractvalue { i64, ptr } %i.an, 0
  %storemerge21.i.i.i12.i = extractvalue { i64, ptr } %i.an, 1 ; 2 uses
  %i.ao = trunc nuw i64 %.sroa.0.01820.i.i.i11.i to i1
  br i1 %i.ao, label %.loopexit.i, label %.lr.ph.i.i.i13.i

.lr.ph.i.i.i13.i:                                 ; preds = %bb.t, %.lr.ph.i.i.i13.i
  %storemerge22.i.i.i14.i = phi ptr [ %storemerge.i.i.i16.i, %.lr.ph.i.i.i13.i ], [ %storemerge21.i.i.i12.i, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge22.i.i.i14.i) ]
  %i.ap = tail call fastcc { i64, ptr } @_RNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBl_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBl_4RuleE5parse5rules7visible7COMMENT0s_0000Bn_(ptr noalias noundef nonnull align 8 %storemerge22.i.i.i14.i) ; 2 uses
  %.sroa.0.018.i.i.i15.i = extractvalue { i64, ptr } %i.ap, 0
  %storemerge.i.i.i16.i = extractvalue { i64, ptr } %i.ap, 1 ; 2 uses
  %i.aq = trunc nuw i64 %.sroa.0.018.i.i.i15.i to i1
  br i1 %i.aq, label %.loopexit.i, label %.lr.ph.i.i.i13.i

bb.u:                                             ; preds = %bb.r, %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !9450, !noundef !67 ; 2 uses
  %i.au = icmp ugt i64 %i.ae, %i.at
  br i1 %i.au, label %.thread61.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.ae, ptr %i.as, align 8, !alias.scope !9450
  br label %.thread61.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i13.i, %bb.t
  %storemerge.lcssa.i.i.sink.i18.i = phi ptr [ %storemerge21.i.i.i12.i, %bb.t ], [ %storemerge.i.i.i16.i, %.lr.ph.i.i.i13.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.lcssa.i.i.sink.i18.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40

.thread61.i:                                      ; preds = %bb.v, %bb.u
  %i.av = phi i64 [ %i.ae, %bb.v ], [ %i.at, %bb.u ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.012.0.copyload.i30.pre.i = load i64, ptr %i.aj, align 8, !alias.scope !9451
  %i.aw = trunc nuw i64 %.sroa.012.0.copyload.i30.pre.i to i1
  br i1 %i.aw, label %.thread61.thread.i, label %bb.x

.thread61.thread.i:                               ; preds = %.thread61.i
  %.sroa.6.0..sroa_idx.i48.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.0.copyload.i49.i.pre = load i64, ptr %.sroa.6.0..sroa_idx.i48.i.phi.trans.insert, align 8, !alias.scope !9451
  %.sroa.513.0..sroa_idx.i3183.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.513.0.copyload.i50.i.pre = load i64, ptr %.sroa.513.0..sroa_idx.i3183.i.phi.trans.insert, align 8, !alias.scope !9451 ; 2 uses
  %i.ax = icmp ult i64 %.sroa.513.0.copyload.i50.i.pre, %.sroa.6.0.copyload.i49.i.pre
  br i1 %i.ax, label %bb.w, label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread

bb.w:                                             ; preds = %.thread61.thread.i
  %.sroa.513.0..sroa_idx.i3183.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ay = add nuw i64 %.sroa.513.0.copyload.i50.i.pre, 1
  store i64 %i.ay, ptr %.sroa.513.0..sroa_idx.i3183.i, align 8, !alias.scope !9451
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.pre23 = load i64, ptr %.phi.trans.insert22, align 8, !alias.scope !9451
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread61.i
  %i.az = phi i64 [ %.pre23, %bb.w ], [ %i.av, %.thread61.i ] ; 3 uses
  %i.ba = icmp ult i64 %i.az, 230584300921369396
  tail call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  %i.bc = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1301, i64 noundef 2) #64 ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bc, 0
  %i.be = extractvalue { i64, ptr } %i.bc, 1      ; 5 uses
  %i.bf = trunc nuw i64 %i.bd to i1
  br i1 %i.bf, label %.thread.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.09.0.copyload.i.i.i32.i = load i64, ptr %i.be, align 8, !alias.scope !9452
  %.sroa.510.0..sroa_idx.i.i.i33.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = trunc nuw i64 %.sroa.09.0.copyload.i.i.i32.i to i1
  br i1 %i.bg, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.sroa.6.0..sroa_idx.i.i.i44.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.6.0.copyload.i.i.i45.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i44.i, align 8, !alias.scope !9452
  %.sroa.510.0.copyload.i.i.i46.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i33.i, align 8, !alias.scope !9452 ; 2 uses
  %.not.i.i.i47.i = icmp ult i64 %.sroa.510.0.copyload.i.i.i46.i, %.sroa.6.0.copyload.i.i.i45.i
  br i1 %.not.i.i.i47.i, label %bb.aa, label %.thread.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bh = add nuw i64 %.sroa.510.0.copyload.i.i.i46.i, 1
  store i64 %i.bh, ptr %.sroa.510.0..sroa_idx.i.i.i33.i, align 8, !alias.scope !9452
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.bi = tail call fastcc { i64, ptr } @_RNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBl_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBl_4RuleE5parse5rules7visible7COMMENT0s0_0000Bn_(ptr noalias noundef nonnull align 8 %i.be) ; 2 uses
  %.sroa.0.01820.i.i.i34.i = extractvalue { i64, ptr } %i.bi, 0
  %storemerge21.i.i.i35.i = extractvalue { i64, ptr } %i.bi, 1 ; 2 uses
  %i.bj = trunc nuw i64 %.sroa.0.01820.i.i.i34.i to i1
  br i1 %i.bj, label %.loopexit.i.i.i, label %.lr.ph.i.i.i36.i

.lr.ph.i.i.i36.i:                                 ; preds = %bb.ab, %.lr.ph.i.i.i36.i
  %storemerge22.i.i.i37.i = phi ptr [ %storemerge.i.i.i39.i, %.lr.ph.i.i.i36.i ], [ %storemerge21.i.i.i35.i, %bb.ab ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge22.i.i.i37.i) ]
  %i.bk = tail call fastcc { i64, ptr } @_RNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBl_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBl_4RuleE5parse5rules7visible7COMMENT0s0_0000Bn_(ptr noalias noundef nonnull align 8 %storemerge22.i.i.i37.i) ; 2 uses
  %.sroa.0.018.i.i.i38.i = extractvalue { i64, ptr } %i.bk, 0
  %storemerge.i.i.i39.i = extractvalue { i64, ptr } %i.bk, 1 ; 2 uses
  %i.bl = trunc nuw i64 %.sroa.0.018.i.i.i38.i to i1
  br i1 %i.bl, label %.loopexit.i.i.i, label %.lr.ph.i.i.i36.i

.thread.i.i.i:                                    ; preds = %bb.z, %bb.x
  %i.bm = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.be, 1
  br label %_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7COMMENT0s0_00Bj_.exit.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i36.i, %bb.ab
  %storemerge.lcssa.i.i.i.i = phi ptr [ %storemerge21.i.i.i35.i, %bb.ab ], [ %storemerge.i.i.i39.i, %.lr.ph.i.i.i36.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.lcssa.i.i.i.i) ]
  %i.bn = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %storemerge.lcssa.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1294, i64 noundef 2) #64
  br label %_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7COMMENT0s0_00Bj_.exit.i.i

_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7COMMENT0s0_00Bj_.exit.i.i: ; preds = %.loopexit.i.i.i, %.thread.i.i.i
  %.merged.i.i.i = phi { i64, ptr } [ %i.bm, %.thread.i.i.i ], [ %i.bn, %.loopexit.i.i.i ] ; 2 uses
  %i.bo = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.bp = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 5 uses
  %i.bq = trunc nuw i64 %i.bo to i1
  br i1 %i.bq, label %bb.ac, label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit

bb.ac:                                            ; preds = %_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7COMMENT0s0_00Bj_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 40 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !9453, !noundef !67
  %i.bu = icmp ugt i64 %i.az, %i.bt
  br i1 %i.bu, label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread44, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.az, ptr %i.bs, align 8, !alias.scope !9453
  br label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread44

_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread44: ; preds = %bb.ac, %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread

_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit: ; preds = %_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7COMMENT0s0_00Bj_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40

bb.ae:                                            ; preds = %bb.d
  store i8 0, ptr %i.f, align 1
  br label %bb.e

_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread: ; preds = %bb.f, %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT00EB12_.exit.thread.thread.i, %.thread61.thread.i, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread44
  %.sroa.5.1.i41.pn.i37 = phi ptr [ %i.bp, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread44 ], [ %i.aj, %.thread61.thread.i ], [ %i.o, %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT00EB12_.exit.thread.thread.i ], [ %0, %bb.f ] ; 2 uses
  br i1 %.not17, label %bb.af, label %.sink.split

_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40: ; preds = %.loopexit.i, %.thread.i, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit
  %.sroa.5.1.i41.pn.i43 = phi ptr [ %i.bp, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit ], [ %storemerge.lcssa.i.i.sink.i18.i, %.loopexit.i ], [ %storemerge.lcssa.i.i.sink.i.i, %.thread.i ] ; 2 uses
  br i1 %.not17, label %bb.af, label %.sink.split

.sink.split:                                      ; preds = %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40
  %.sroa.5.1.i41.pn.i37.sink = phi ptr [ %.sroa.5.1.i41.pn.i43, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40 ], [ %.sroa.5.1.i41.pn.i37, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ 0, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40 ], [ 1, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i41.pn.i37.sink, i64 289
  store i8 %i.g, ptr %i.bv, align 1
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.b, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40
  %.sroa.4.0 = phi ptr [ %.sroa.5.1.i41.pn.i43, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40 ], [ %0, %bb.b ], [ %.sroa.5.1.i41.pn.i37, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread ], [ %.sroa.5.1.i41.pn.i37.sink, %.sink.split ]
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread40 ], [ 1, %bb.b ], [ 1, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible7COMMENT0Bf_.exit.thread ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.bw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bx = insertvalue { i64, ptr } %i.bw, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.bx
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible9edge_stmt00s_00s0_000s_000EB12_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %1 = alloca [24 x i8], align 8                  ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.012.0.copyload = load i64, ptr %0, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = trunc nuw i64 %.sroa.012.0.copyload to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.513.0.copyload = load i64, ptr %.sroa.513.0..sroa_idx, align 8 ; 2 uses
  %.not = icmp ult i64 %.sroa.513.0.copyload, %.sroa.6.0.copyload
  br i1 %.not, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw i64 %.sroa.513.0.copyload, 1
  store i64 %i.c, ptr %.sroa.513.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !67 ; 3 uses
  %i.f = icmp ult i64 %i.e, 230584300921369396
  tail call void @llvm.assume(i1 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.i = load i8, ptr %i.h, align 1, !range !78, !alias.scope !9467, !noundef !67
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %0, 1
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit

bb.f:                                             ; preds = %bb.d
  %i.l = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %0) #64
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit

_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit: ; preds = %bb.e, %bb.f
  %.merged.i = phi { i64, ptr } [ %i.l, %bb.f ], [ %i.k, %bb.e ] ; 2 uses
  %i.m = extractvalue { i64, ptr } %.merged.i, 0
  %i.n = extractvalue { i64, ptr } %.merged.i, 1  ; 8 uses
  %i.o = trunc nuw i64 %i.m to i1
  br i1 %i.o, label %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit
  %.sroa.012.0.copyload.i.i = load i64, ptr %i.n, align 8, !alias.scope !9468
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = trunc nuw i64 %.sroa.012.0.copyload.i.i to i1
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !9468
  %.sroa.513.0.copyload.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !alias.scope !9468 ; 2 uses
  %.not.i.i = icmp ult i64 %.sroa.513.0.copyload.i.i, %.sroa.6.0.copyload.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.q = add nuw i64 %.sroa.513.0.copyload.i.i, 1
  store i64 %i.q, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !alias.scope !9468
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !9468, !noundef !67 ; 3 uses
  %i.t = icmp ult i64 %i.s, 230584300921369396
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %2 = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.u = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible7edge_op(ptr noalias noundef nonnull align 8 %i.n) #64, !inline_history !9460 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 4 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %.thread22, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 289
  %i.z = load i8, ptr %i.y, align 1, !range !78, !alias.scope !9469, !noundef !67
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.w, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ac = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %i.w) #64, !inline_history !9460
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.merged.i.i = phi { i64, ptr } [ %i.ac, %bb.m ], [ %i.ab, %bb.l ] ; 2 uses
  %i.ad = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.ae = extractvalue { i64, ptr } %.merged.i.i, 1 ; 2 uses
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.thread22, label %bb.o

.thread22:                                        ; preds = %bb.j, %bb.n
  %.sroa.4.0.i1825 = phi ptr [ %i.ae, %bb.n ], [ %i.w, %bb.j ]
  %i.ag = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.4.0.i1825, 1
  br label %_RNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBz_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBz_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_00000BB_.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible10edge_point0EB12_(ptr noalias noundef nonnull align 8 %i.ae) #64
  br label %_RNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBz_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBz_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_00000BB_.exit

_RNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBz_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBz_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_00000BB_.exit: ; preds = %.thread22, %bb.o
  %.merged.i19 = phi { i64, ptr } [ %i.ag, %.thread22 ], [ %i.ah, %bb.o ] ; 2 uses
  %i.ai = extractvalue { i64, ptr } %.merged.i19, 0
  %i.aj = extractvalue { i64, ptr } %.merged.i19, 1 ; 5 uses
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %bb.p, label %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit

bb.p:                                             ; preds = %_RNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBz_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBz_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_00000BB_.exit
  %3 = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !9470, !noundef !67
  %i.an = icmp ugt i64 %i.s, %i.am
  br i1 %i.an, label %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread33, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %i.s, ptr %i.al, align 8, !alias.scope !9470
  br label %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread33

_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread33: ; preds = %bb.p, %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread

_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit: ; preds = %_RNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBz_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBz_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_00000BB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.s

_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread: ; preds = %bb.h, %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit, %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread33
  %.sroa.4.0.i28 = phi ptr [ %i.n, %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit ], [ %i.aj, %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread33 ], [ %i.n, %bb.h ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i28, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i28, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !9471, !noundef !67
  %i.ar = icmp ugt i64 %i.e, %i.aq
  br i1 %i.ar, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit, label %bb.r

bb.r:                                             ; preds = %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread
  store i64 %i.e, ptr %i.ap, align 8, !alias.scope !9471
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit

bb.s:                                             ; preds = %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit
  %.sroa.4.0.i29 = phi ptr [ %.sroa.4.0.i28, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit ], [ %i.aj, %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit ], [ 0, %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit: ; preds = %bb.r, %_RNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBv_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBv_4RuleE5parse5rules7visible9edge_stmt00s_00s0_000s_000Bx_.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i28) ]
  br label %bb.s

bb.t:                                             ; preds = %bb.b, %bb.s
  %.sroa.5.1 = phi ptr [ %.sroa.4.0.i29, %bb.s ], [ %0, %bb.b ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.s ], [ 1, %bb.b ]
  %i.as = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.at = insertvalue { i64, ptr } %i.as, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.at
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.012.0.copyload = load i64, ptr %0, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = trunc nuw i64 %.sroa.012.0.copyload to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.513.0.copyload = load i64, ptr %.sroa.513.0..sroa_idx, align 8 ; 4 uses
  %.not = icmp ult i64 %.sroa.513.0.copyload, %.sroa.6.0.copyload
  br i1 %.not, label %bb.d, label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !67 ; 2 uses
  %i.e = icmp ult i64 %i.d, 230584300921369396
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %.sroa.513.0.copyload, 1     ; 2 uses
  store i64 %i.g, ptr %.sroa.513.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !67 ; 4 uses
  %i.j = icmp ult i64 %i.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %.not.i.i = icmp ult i64 %i.g, %.sroa.6.0.copyload
  br i1 %.not.i.i, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %.sroa.513.0.copyload, 2     ; 2 uses
  store i64 %i.l, ptr %.sroa.513.0..sroa_idx, align 8, !alias.scope !9488
  %.not.i.i.i.i = icmp ult i64 %i.l, %.sroa.6.0.copyload
  br i1 %.not.i.i.i.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i64 %.sroa.513.0.copyload, 3
  store i64 %i.m, ptr %.sroa.513.0..sroa_idx, align 8, !alias.scope !9489
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.n = phi i64 [ %i.i, %bb.f ], [ %i.d, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 289 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !range !78, !alias.scope !9489, !noundef !67 ; 2 uses
  %.not17.i.i.i.i = icmp eq i8 %i.p, 0            ; 2 uses
  br i1 %.not17.i.i.i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.l, %bb.g
  %i.q = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1435, i64 noundef 1) #64 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.i, label %.thread.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1436, i64 noundef 1) #64 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.j, label %.thread.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.y = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1437, i64 noundef 1) #64 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %bb.k, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.5.0.i.i.i.i.i = phi ptr [ %i.aa, %bb.j ], [ %i.w, %bb.i ], [ %i.s, %bb.h ]
  %i.ac = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.5.0.i.i.i.i.i, 1
  br label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1291, i64 noundef 1) #64
  br label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i.i.i

_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i.i.i: ; preds = %bb.k, %.thread.i.i.i.i.i
  %.merged.i.i.i.i.i = phi { i64, ptr } [ %i.ad, %bb.k ], [ %i.ac, %.thread.i.i.i.i.i ] ; 2 uses
  %i.ae = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 0
  %i.af = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 1 ; 3 uses
  br i1 %.not17.i.i.i.i, label %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules6hidden4skip00Bh_.exit.i.i, label %.sink.split.i.i.i.i

bb.l:                                             ; preds = %bb.g
  store i8 0, ptr %i.o, align 1, !alias.scope !9489
  br label %bb.h

.sink.split.i.i.i.i:                              ; preds = %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 289
  store i8 %i.p, ptr %i.ag, align 1
  br label %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules6hidden4skip00Bh_.exit.i.i

_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules6hidden4skip00Bh_.exit.i.i: ; preds = %.sink.split.i.i.i.i, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i.i.i
  %i.ah = trunc nuw i64 %i.ae to i1
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules6hidden4skip00Bh_.exit.i.i, %bb.r
  %.sroa.4.0.i.i.pn40.i.i = phi ptr [ %i.bb, %bb.r ], [ %i.af, %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules6hidden4skip00Bh_.exit.i.i ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.pn40.i.i) ]
  %.sroa.012.0.copyload.i.i16.i.i = load i64, ptr %.sroa.4.0.i.i.pn40.i.i, align 8, !alias.scope !9490
  %.sroa.513.0..sroa_idx.i.i17.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.pn40.i.i, i64 8 ; 2 uses
  %i.ai = trunc nuw i64 %.sroa.012.0.copyload.i.i16.i.i to i1
  br i1 %i.ai, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i.i
  %.sroa.6.0..sroa_idx.i.i26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.pn40.i.i, i64 16
  %.sroa.6.0.copyload.i.i27.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i26.i.i, align 8, !alias.scope !9490
  %.sroa.513.0.copyload.i.i28.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i17.i.i, align 8, !alias.scope !9490 ; 2 uses
  %.not.i.i29.i.i = icmp ult i64 %.sroa.513.0.copyload.i.i28.i.i, %.sroa.6.0.copyload.i.i27.i.i
  br i1 %.not.i.i29.i.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw i64 %.sroa.513.0.copyload.i.i28.i.i, 1
  store i64 %i.aj, ptr %.sroa.513.0..sroa_idx.i.i17.i.i, align 8, !alias.scope !9490
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.pn40.i.i, i64 289 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !range !78, !alias.scope !9490, !noundef !67 ; 2 uses
  %.not17.i.i18.i.i = icmp eq i8 %i.al, 0         ; 2 uses
  br i1 %.not17.i.i18.i.i, label %.noexc.i.i, label %bb.q

.noexc.i.i:                                       ; preds = %bb.q, %bb.o
  %i.am = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %.sroa.4.0.i.i.pn40.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1435, i64 noundef 1) #64 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %.noexc30.i.i, label %.thread.i.i.i19.i.i

.noexc30.i.i:                                     ; preds = %.noexc.i.i
  %i.aq = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1436, i64 noundef 1) #64 ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1      ; 2 uses
  %i.at = trunc nuw i64 %i.ar to i1
  br i1 %i.at, label %.noexc31.i.i, label %.thread.i.i.i19.i.i

.noexc31.i.i:                                     ; preds = %.noexc30.i.i
  %i.au = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1437, i64 noundef 1) #64 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 2 uses
  %i.ax = trunc nuw i64 %i.av to i1
  br i1 %i.ax, label %bb.p, label %.thread.i.i.i19.i.i

.thread.i.i.i19.i.i:                              ; preds = %.noexc31.i.i, %.noexc30.i.i, %.noexc.i.i
  %.sroa.5.0.i.i.i20.i.i = phi ptr [ %i.aw, %.noexc31.i.i ], [ %i.as, %.noexc30.i.i ], [ %i.ao, %.noexc.i.i ]
  %i.ay = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.5.0.i.i.i20.i.i, 1
  br label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i21.i.i

bb.p:                                             ; preds = %.noexc31.i.i
  %i.az = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1291, i64 noundef 1) #64
  br label %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i21.i.i

_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i21.i.i: ; preds = %bb.p, %.thread.i.i.i19.i.i
  %.merged.i.i.i22.i.i = phi { i64, ptr } [ %i.ay, %.thread.i.i.i19.i.i ], [ %i.az, %bb.p ] ; 2 uses
  %i.ba = extractvalue { i64, ptr } %.merged.i.i.i22.i.i, 0
  %i.bb = extractvalue { i64, ptr } %.merged.i.i.i22.i.i, 1 ; 3 uses
  br i1 %.not17.i.i18.i.i, label %bb.r, label %.sink.split.i.i23.i.i

bb.q:                                             ; preds = %bb.o
  store i8 0, ptr %i.ak, align 1, !alias.scope !9490
  br label %.noexc.i.i

.sink.split.i.i23.i.i:                            ; preds = %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i21.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 289
  store i8 %i.al, ptr %i.bc, align 1
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i23.i.i, %_RNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBd_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBd_4RuleE5parse5rules7visible10WHITESPACE0Bf_.exit.i.i21.i.i
  %i.bd = trunc nuw i64 %i.ba to i1
  br i1 %i.bd, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %bb.r, %bb.m, %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules6hidden4skip00Bh_.exit.i.i, %bb.e
  %i.be = phi i64 [ %i.n, %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules6hidden4skip00Bh_.exit.i.i ], [ %i.i, %bb.e ], [ %i.n, %bb.m ], [ %i.n, %bb.r ]
  %.sroa.4.0.i.i.pn.lcssa.i.i = phi ptr [ %i.af, %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules6hidden4skip00Bh_.exit.i.i ], [ %0, %bb.e ], [ %i.bb, %bb.r ], [ %.sroa.4.0.i.i.pn40.i.i, %bb.m ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.pn.lcssa.i.i) ]
end_hunk_0
begin_hunk_1_@_RNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBp_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBp_4RuleE5parse5rules7visible9stmt_list000s_0000Br_:bb.a
  br label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.i.i.i.i.i.i.i.i.i, %bb.z, %bb.y
  %.sroa.7.0.i19.i.i.ph.i.i.i.i.i.i.i = phi ptr [ %i.br, %bb.y ], [ %i.bv, %bb.z ], [ %i.bz, %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.af, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.0.i19.i.i20.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.7.0.i19.i.i.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i) ]
  %.sroa.012.0.copyload.i.i16.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i, align 8, !alias.scope !56518
  %.sroa.513.0..sroa_idx.i.i17.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = trunc nuw i64 %.sroa.012.0.copyload.i.i16.i.i.i.i.i.i.i to i1
  br i1 %i.cf, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i28.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i, i64 16
  %.sroa.6.0.copyload.i.i29.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i28.i.i.i.i.i.i.i, align 8, !alias.scope !56518
  %.sroa.513.0.copyload.i.i30.i.i.i.i.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i17.i.i.i.i.i.i.i, align 8, !alias.scope !56518 ; 2 uses
  %.not.i.i31.i.i.i.i.i.i.i = icmp ult i64 %.sroa.513.0.copyload.i.i30.i.i.i.i.i.i.i, %.sroa.6.0.copyload.i.i29.i.i.i.i.i.i.i
  br i1 %.not.i.i31.i.i.i.i.i.i.i, label %bb.ac, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cg = add nuw i64 %.sroa.513.0.copyload.i.i30.i.i.i.i.i.i.i, 1
  store i64 %i.cg, ptr %.sroa.513.0..sroa_idx.i.i17.i.i.i.i.i.i.i, align 8, !alias.scope !56518
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !56518, !noundef !67 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 230584300921369396
  tail call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i, i64 289
  %i.cm = load i8, ptr %i.cl, align 1, !range !78, !alias.scope !56519, !noundef !67
  %i.cn = icmp eq i8 %i.cm, 2
  br i1 %i.cn, label %.noexc.i.i.i.i.i.i.i, label %.noexc32.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ad
  %i.co = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i) #64, !inline_history !56481 ; 2 uses
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  %i.cq = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.cr = trunc nuw i64 %i.cp to i1
  br i1 %i.cr, label %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.thread20.i.i25.i.i.i.i.i.i.i, label %.noexc32.i.i.i.i.i.i.i

.noexc32.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i.i.i.i, %bb.ad
  %.sroa.5.0.i.i.i18.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i, %bb.ad ]
  %i.cs = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %.sroa.5.0.i.i.i18.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1290, i64 noundef 1) #64, !inline_history !56481 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1      ; 2 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %.noexc33.i.i.i.i.i.i.i, label %bb.af

.noexc33.i.i.i.i.i.i.i:                           ; preds = %.noexc32.i.i.i.i.i.i.i
  %i.cw = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1291, i64 noundef 1) #64, !inline_history !56481 ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  %i.cy = extractvalue { i64, ptr } %i.cw, 1      ; 2 uses
  %i.cz = trunc nuw i64 %i.cx to i1
  br i1 %i.cz, label %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.i.i24.i.i.i.i.i.i.i, label %bb.af

_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.i.i24.i.i.i.i.i.i.i: ; preds = %.noexc33.i.i.i.i.i.i.i
  %i.da = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1292, i64 noundef 2) #64, !inline_history !56481 ; 2 uses
  %i.db = extractvalue { i64, ptr } %i.da, 0
  %i.dc = extractvalue { i64, ptr } %i.da, 1      ; 2 uses
  %i.dd = trunc nuw i64 %i.db to i1
  br i1 %i.dd, label %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.thread20.i.i25.i.i.i.i.i.i.i, label %bb.af

_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.thread20.i.i25.i.i.i.i.i.i.i: ; preds = %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.i.i24.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %.sroa.7.0.i23.i.i26.i.i.i.i.i.i.i = phi ptr [ %i.dc, %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.i.i24.i.i.i.i.i.i.i ], [ %i.cq, %.noexc.i.i.i.i.i.i.i ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i23.i.i26.i.i.i.i.i.i.i, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i23.i.i26.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !56520, !noundef !67
  %i.dh = icmp ugt i64 %i.ci, %i.dg
  br i1 %i.dh, label %.thread52.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.thread20.i.i25.i.i.i.i.i.i.i
  store i64 %i.ci, ptr %i.df, align 8, !alias.scope !56520
  br label %.thread52.i.i.i.i.i.i.i

.thread52.i.i.i.i.i.i.i:                          ; preds = %bb.ae, %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.thread20.i.i25.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i23.i.i26.i.i.i.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread

bb.af:                                            ; preds = %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.i.i24.i.i.i.i.i.i.i, %.noexc33.i.i.i.i.i.i.i, %.noexc32.i.i.i.i.i.i.i
  %.sroa.7.0.i19.i.i20.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.noexc32.i.i.i.i.i.i.i ], [ %i.dc, %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBD_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBD_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_000BF_.exit.i.i24.i.i.i.i.i.i.i ], [ %i.cy, %.noexc33.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i.i.i.i.i.i.i

_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit: ; preds = %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i, %bb.l, %bb.o, %bb.n
  %.sroa.4.0.i7.pn = phi ptr [ %i.ak, %bb.l ], [ %i.ac, %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i ], [ %i.ak, %bb.n ], [ %i.ak, %bb.o ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i7.pn, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i7.pn, i64 40 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !56521, !noundef !67
  %i.dl = icmp ugt i64 %i.g, %i.dk
  br i1 %i.dl, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit
  store i64 %i.g, ptr %i.dj, align 8, !alias.scope !56521
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit

_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread: ; preds = %bb.ab, %bb.t, %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBB_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBB_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_00BD_.exit.i.i.i.i.i.i.i, %bb.u, %.thread52.i.i.i.i.i.i.i, %bb.s, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit
  %.sroa.4.0.i7.pn14 = phi ptr [ %.sroa.4.0.i7.pn, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit ], [ %i.az, %bb.s ], [ %.sroa.6.013.i.i.i.i.i.i, %bb.t ], [ %.sroa.7.0.i23.i.i.i.i.i.i.i.i.i, %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBB_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBB_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_00BD_.exit.i.i.i.i.i.i.i ], [ %.sroa.6.013.i.i.i.i.i.i, %bb.u ], [ %.sroa.7.0.i23.i.i26.i.i.i.i.i.i.i, %.thread52.i.i.i.i.i.i.i ], [ %.sroa.5.1.i.i.pn42.i.i.i.i.i.i.i, %bb.ab ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %_RNCNCNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBB_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBB_4RuleE5parse5rules7visible9stmt_list000s_00000s_000s_00BD_.exit.i.i.i.i.i.i.i ], [ 0, %bb.u ], [ 0, %.thread52.i.i.i.i.i.i.i ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible9stmt_list000s_00000EB12_.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit: ; preds = %bb.ag, %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i7.pn) ]
  br label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread

_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible9stmt_list000s_00000EB12_.exit: ; preds = %bb.b, %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread
  %.sroa.5.1.i = phi ptr [ %.sroa.4.0.i7.pn14, %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread ], [ %0, %bb.b ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread ], [ 1, %bb.b ]
  %i.dm = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i, 0
  %i.dn = insertvalue { i64, ptr } %i.dm, ptr %.sroa.5.1.i, 1
  ret { i64, ptr } %i.dn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBl_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBl_4RuleE5parse5rules7visible10identifier000s3_00Bn_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE11match_rangeB11_(ptr noalias noundef nonnull align 8 %0, i32 noundef 97, i32 noundef 122) #64 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE11match_rangeB11_(ptr noalias noundef nonnull align 8 %i.c, i32 noundef 65, i32 noundef 90) #64 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE11match_rangeB11_(ptr noalias noundef nonnull align 8 %i.g, i32 noundef 48, i32 noundef 57) #64
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible18ASCII_ALPHANUMERIC.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  %.sroa.4.09.i = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ]
  %i.j = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.4.09.i, 1
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible18ASCII_ALPHANUMERIC.exit

_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible18ASCII_ALPHANUMERIC.exit: ; preds = %bb.c, %.thread.i
  %.merged.i = phi { i64, ptr } [ %i.i, %bb.c ], [ %i.j, %.thread.i ] ; 2 uses
  %i.k = extractvalue { i64, ptr } %.merged.i, 0
  %i.l = extractvalue { i64, ptr } %.merged.i, 1  ; 2 uses
  %i.m = trunc nuw i64 %i.k to i1
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible18ASCII_ALPHANUMERIC.exit
  %i.n = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1295, i64 noundef 1) #64 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1296, i64 noundef 1) #64 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  %i.u = trunc nuw i64 %i.s to i1
  br i1 %i.u, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.v = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1297, i64 noundef 1) #64 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1298, i64 noundef 1) #64 ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.h, label %.thread

.thread:                                          ; preds = %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible18ASCII_ALPHANUMERIC.exit, %bb.f, %bb.d, %bb.e, %bb.g
  %.sroa.5.0 = phi ptr [ %i.ab, %bb.g ], [ %i.x, %bb.f ], [ %i.t, %bb.e ], [ %i.p, %bb.d ], [ %i.l, %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible18ASCII_ALPHANUMERIC.exit ]
  %i.ad = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.5.0, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1299, i64 noundef 1) #64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %.merged = phi { i64, ptr } [ %i.ae, %bb.h ], [ %i.ad, %.thread ]
  ret { i64, ptr } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBl_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBl_4RuleE5parse5rules7visible6a_list000s_00Bn_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %1 = alloca [24 x i8], align 8                  ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.012.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !56556
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !56556
  %.sroa.513.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56556 ; 2 uses
  %.not.i = icmp ult i64 %.sroa.513.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible6a_list000s_000EB12_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i64 %.sroa.513.0.copyload.i, 1
  store i64 %i.d, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56556
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !56556, !noundef !67 ; 3 uses
  %i.g = icmp ult i64 %i.f, 230584300921369396
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.j = load i8, ptr %i.i, align 1, !range !78, !alias.scope !56557, !noundef !67
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %0, 1
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %0) #64
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit.i.i

_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit.i.i: ; preds = %bb.f, %bb.e
  %.merged.i.i.i = phi { i64, ptr } [ %i.m, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.n = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.o = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 8 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit.i.i
  %.sroa.012.0.copyload.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !56558
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = trunc nuw i64 %.sroa.012.0.copyload.i.i.i.i to i1
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !56558
  %.sroa.513.0.copyload.i.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !alias.scope !56558 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.sroa.513.0.copyload.i.i.i.i, %.sroa.6.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.i, label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nuw i64 %.sroa.513.0.copyload.i.i.i.i, 1
  store i64 %i.r, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !alias.scope !56558
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !56558, !noundef !67 ; 3 uses
  %i.u = icmp ult i64 %i.t, 230584300921369396
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.v = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible6number0EB12_(ptr noalias noundef nonnull align 8 %i.o) #64 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.k, label %.thread.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.z = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible10identifier0EB12_(ptr noalias noundef nonnull align 8 %i.x) #64 ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.l, label %.thread.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible9quoted_id0EB12_(ptr noalias noundef nonnull align 8 %i.ab) #64 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.m, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.5.0.i.i.i.i.i.i = phi ptr [ %i.af, %bb.l ], [ %i.ab, %bb.k ], [ %i.x, %bb.j ]
  %i.ah = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.5.0.i.i.i.i.i.i, 1
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible2id.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7html_id0EB12_(ptr noalias noundef nonnull align 8 %i.af) #64
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible2id.exit.i.i.i.i.i

_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible2id.exit.i.i.i.i.i: ; preds = %bb.m, %.thread.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i = phi { i64, ptr } [ %i.ai, %bb.m ], [ %i.ah, %.thread.i.i.i.i.i.i ] ; 2 uses
  %i.aj = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i, 0
  %i.ak = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i, 1 ; 4 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %bb.ap, label %bb.n

bb.n:                                             ; preds = %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible2id.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 289
  %i.an = load i8, ptr %i.am, align 1, !range !78, !alias.scope !56559, !noundef !67
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ak, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aq = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %i.ak) #64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.merged.i13.i.i.i.i.i = phi { i64, ptr } [ %i.aq, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.ar = extractvalue { i64, ptr } %.merged.i13.i.i.i.i.i, 0
  %i.as = extractvalue { i64, ptr } %.merged.i13.i.i.i.i.i, 1 ; 9 uses
  %i.at = trunc nuw i64 %i.ar to i1
  br i1 %i.at, label %bb.ap, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.011.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !56560
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = trunc nuw i64 %.sroa.011.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.au, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !56560 ; 2 uses
  %.sroa.512.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !56560 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.512.0.copyload.i.i.i.i.i.i.i, %.sroa.6.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.ap

bb.t:                                             ; preds = %bb.s
  %i.av = add nuw i64 %.sroa.512.0.copyload.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.av, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !56560
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.av, %.sroa.6.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.aw = add nuw i64 %.sroa.512.0.copyload.i.i.i.i.i.i.i, 2
  store i64 %i.aw, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !56561
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !56561, !noundef !67 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 230584300921369396
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bb = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1293, i64 noundef 1) #64 ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.bb, 0
  %i.bd = extractvalue { i64, ptr } %i.bb, 1      ; 4 uses
  %i.be = trunc nuw i64 %i.bc to i1
  br i1 %i.be, label %.thread.i.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 289
  %i.bg = load i8, ptr %i.bf, align 1, !range !78, !alias.scope !56562, !noundef !67
  %i.bh = icmp eq i8 %i.bg, 2
  br i1 %i.bh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bd, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bj = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %i.bd) #64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.merged.i.i.i.i.i.i.i.i.i.i.i = phi { i64, ptr } [ %i.bj, %bb.y ], [ %i.bi, %bb.x ] ; 2 uses
  %i.bk = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.bl = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bm = trunc nuw i64 %i.bk to i1
  br i1 %i.bm, label %.thread.i.i.i.i.i.i.i.i.i.i, label %bb.aa

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.z, %bb.v
  %.sroa.4.09.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.z ], [ %i.bd, %bb.v ]
  %i.bn = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.4.09.i.i.i.i.i.i.i.i.i.i, 1
  br label %_RNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBx_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBx_4RuleE5parse5rules7visible6a_list000s_00000s_000Bz_.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bo = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible6number0EB12_(ptr noalias noundef nonnull align 8 %i.bl) #64 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1      ; 2 uses
  %i.br = trunc nuw i64 %i.bp to i1
  br i1 %i.br, label %bb.ab, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.bs = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible10identifier0EB12_(ptr noalias noundef nonnull align 8 %i.bq) #64 ; 2 uses
  %i.bt = extractvalue { i64, ptr } %i.bs, 0
  %i.bu = extractvalue { i64, ptr } %i.bs, 1      ; 2 uses
  %i.bv = trunc nuw i64 %i.bt to i1
  br i1 %i.bv, label %bb.ac, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.bw = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible9quoted_id0EB12_(ptr noalias noundef nonnull align 8 %i.bu) #64 ; 2 uses
  %i.bx = extractvalue { i64, ptr } %i.bw, 0
  %i.by = extractvalue { i64, ptr } %i.bw, 1      ; 2 uses
  %i.bz = trunc nuw i64 %i.bx to i1
  br i1 %i.bz, label %bb.ad, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %bb.ac ], [ %i.bu, %bb.ab ], [ %i.bq, %bb.aa ]
  %i.ca = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %_RNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBx_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBx_4RuleE5parse5rules7visible6a_list000s_00000s_000Bz_.exit.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cb = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7html_id0EB12_(ptr noalias noundef nonnull align 8 %i.by) #64
  br label %_RNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBx_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBx_4RuleE5parse5rules7visible6a_list000s_00000s_000Bz_.exit.i.i.i.i.i.i.i.i.i

_RNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBx_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBx_4RuleE5parse5rules7visible6a_list000s_00000s_000Bz_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.thread.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i.i.i.i.i = phi { i64, ptr } [ %i.bn, %.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.ad ], [ %i.ca, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cc = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i.i.i.i.i, 0
  %i.cd = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.ce = trunc nuw i64 %i.cc to i1
  br i1 %i.ce, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_RNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBx_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBx_4RuleE5parse5rules7visible6a_list000s_00000s_000Bz_.exit.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !56563, !noundef !67
  %i.ci = icmp ugt i64 %i.ay, %i.ch
  br i1 %i.ci, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i.i.i.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 %i.ay, ptr %i.cg, align 8, !alias.scope !56563
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i.i.i.i.i.i.i.i.i, %_RNCNCNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBx_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBx_4RuleE5parse5rules7visible6a_list000s_00000s_000Bz_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.ah

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br label %bb.ag

bb.ah:                                            ; preds = %bb.ag, %bb.t
  %.sroa.3.0.i.i.ph.i.i.i.i.i = phi ptr [ %i.as, %bb.t ], [ %i.cd, %bb.ag ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.ph.i.i.i.i.i, i64 289
  %i.ck = load i8, ptr %i.cj, align 1, !range !78, !alias.scope !56564, !noundef !67
  %i.cl = icmp eq i8 %i.ck, 2
  br i1 %i.cl, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.3.0.i.i.ph.i.i.i.i.i, 1
  br label %_RNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBt_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBt_4RuleE5parse5rules7visible6a_list000s_00000s0_0Bv_.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cn = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %.sroa.3.0.i.i.ph.i.i.i.i.i) #64
  br label %_RNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBt_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBt_4RuleE5parse5rules7visible6a_list000s_00000s0_0Bv_.exit.i.i.i.i.i

_RNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBt_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBt_4RuleE5parse5rules7visible6a_list000s_00000s0_0Bv_.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.merged.i14.i.i.i.i.i = phi { i64, ptr } [ %i.cn, %bb.aj ], [ %i.cm, %bb.ai ] ; 2 uses
  %i.co = extractvalue { i64, ptr } %.merged.i14.i.i.i.i.i, 0
  %i.cp = extractvalue { i64, ptr } %.merged.i14.i.i.i.i.i, 1 ; 6 uses
  %i.cq = trunc nuw i64 %i.co to i1
  br i1 %i.cq, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %_RNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBt_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBt_4RuleE5parse5rules7visible6a_list000s_00000s0_0Bv_.exit.i.i.i.i.i
  %.sroa.011.0.copyload.i.i15.i.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !56565
  %.sroa.512.0..sroa_idx.i.i16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = trunc nuw i64 %.sroa.011.0.copyload.i.i15.i.i.i.i.i to i1
  br i1 %i.cr, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.sroa.6.0..sroa_idx.i.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.6.0.copyload.i.i20.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i19.i.i.i.i.i, align 8, !alias.scope !56565
  %.sroa.512.0.copyload.i.i21.i.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i16.i.i.i.i.i, align 8, !alias.scope !56565 ; 2 uses
  %.not.i.i22.i.i.i.i.i = icmp ult i64 %.sroa.512.0.copyload.i.i21.i.i.i.i.i, %.sroa.6.0.copyload.i.i20.i.i.i.i.i
  br i1 %.not.i.i22.i.i.i.i.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.cs = add nuw i64 %.sroa.512.0.copyload.i.i21.i.i.i.i.i, 1
  store i64 %i.cs, ptr %.sroa.512.0..sroa_idx.i.i16.i.i.i.i.i, align 8, !alias.scope !56565
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.ct = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1158, i64 noundef 1) #64 ; 2 uses
  %i.cu = extractvalue { i64, ptr } %i.ct, 0
  %i.cv = extractvalue { i64, ptr } %i.ct, 1      ; 2 uses
  %i.cw = trunc nuw i64 %i.cu to i1
  br i1 %i.cw, label %bb.ao, label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread22.i

bb.ao:                                            ; preds = %bb.an
  %i.cx = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1290, i64 noundef 1) #64
  %i.cy = extractvalue { i64, ptr } %i.cx, 1
  br label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread22.i

bb.ap:                                            ; preds = %bb.al, %_RNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBt_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBt_4RuleE5parse5rules7visible6a_list000s_00000s0_0Bv_.exit.i.i.i.i.i, %bb.s, %bb.q, %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible2id.exit.i.i.i.i.i
  %.sroa.5.0.pn.i.ph.i.i.i.i = phi ptr [ %i.cp, %bb.al ], [ %i.as, %bb.q ], [ %i.ak, %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible2id.exit.i.i.i.i.i ], [ %i.as, %bb.s ], [ %i.cp, %_RNCNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBt_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBt_4RuleE5parse5rules7visible6a_list000s_00000s0_0Bv_.exit.i.i.i.i.i ] ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.5.0.pn.i.ph.i.i.i.i, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.5.0.pn.i.ph.i.i.i.i, i64 40 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !56566, !noundef !67
  %i.db = icmp ugt i64 %i.t, %i.da
  br i1 %i.db, label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.t, ptr %i.cz, align 8, !alias.scope !56566
  br label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.i

_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread22.i: ; preds = %bb.ao, %bb.an
  %.sroa.5.0.pn.i21.i.i.i.ph.i = phi ptr [ %i.cy, %bb.ao ], [ %i.cv, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.as

_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.i: ; preds = %bb.aq, %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.pn.i.ph.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread.i

_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread.i: ; preds = %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.i, %bb.h, %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit.i.i
  %.sroa.4.0.i19.i = phi ptr [ %.sroa.5.0.pn.i.ph.i.i.i.i, %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.i ], [ %i.o, %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules6hidden4skip.exit.i.i ], [ %i.o, %bb.h ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i19.i, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i19.i, i64 40 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !56567, !noundef !67
  %i.df = icmp ugt i64 %i.f, %i.de
  br i1 %i.df, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread.i
  store i64 %i.f, ptr %i.dd, align 8, !alias.scope !56567
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i

bb.as:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i, %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread22.i
  %.sroa.4.0.i20.i = phi ptr [ %.sroa.4.0.i19.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i ], [ %.sroa.5.0.pn.i21.i.i.i.ph.i, %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread22.i ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i ], [ 0, %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread22.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible6a_list000s_000EB12_.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i: ; preds = %bb.ar, %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible6a_list000s_000Bp_.exit.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i19.i) ]
  br label %bb.as

_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible6a_list000s_000EB12_.exit: ; preds = %bb.b, %bb.as
  %.sroa.5.1.i = phi ptr [ %.sroa.4.0.i20.i, %bb.as ], [ %0, %bb.b ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.as ], [ 1, %bb.b ]
  %i.dg = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i, 0
  %i.dh = insertvalue { i64, ptr } %i.dg, ptr %.sroa.5.1.i, 1
  ret { i64, ptr } %i.dh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBl_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBl_4RuleE5parse5rules7visible7COMMENT0s0_0000Bn_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.012.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !56582
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !56582 ; 2 uses
  %.sroa.513.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56582 ; 3 uses
  %.not.i = icmp ult i64 %.sroa.513.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %.not.i, label %bb.d, label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_00000EB12_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !56582, !noundef !67 ; 2 uses
  %i.f = icmp ult i64 %i.e, 230584300921369396
  tail call void @llvm.assume(i1 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %.sroa.513.0.copyload.i, 1   ; 2 uses
  store i64 %i.h, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56582
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !56582, !noundef !67 ; 3 uses
  %i.k = icmp ult i64 %i.j, 230584300921369396
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.not.i.i.i = icmp ult i64 %i.h, %.sroa.6.0.copyload.i
  br i1 %.not.i.i.i, label %bb.e, label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.thread.i.i

_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.thread.i.i: ; preds = %bb.d
  %i.m = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %0, 1
  br label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible7COMMENT0s0_00000Bp_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i64 %.sroa.513.0.copyload.i, 2
  store i64 %i.n, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56583
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.o = phi ptr [ %i.l, %bb.e ], [ %i.g, %bb.c ]
  %i.p = phi i64 [ %i.j, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !78, !alias.scope !56583, !noundef !67 ; 2 uses
  %i.s = icmp ne i8 %i.r, 1
  %spec.select.i.i.i = zext i1 %i.s to i8
  store i8 %spec.select.i.i.i, ptr %i.q, align 8, !alias.scope !56583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !56584, !noundef !67 ; 3 uses
  %i.w = icmp ult i64 %i.v, 288230376151711744
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !56585, !noundef !67 ; 3 uses
  %i.z = load i64, ptr %i.t, align 8, !range !70, !alias.scope !56585, !noundef !67
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.g, label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #62
          to label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtCscnlsAxKLLci_4pest12parser_state11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEB23_(ptr nonnull align 8 %0) #63
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ab

_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !56585, !nonnull !67, !noundef !67
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.y ; 2 uses
  store i64 %i.v, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.v, ptr %i.ag, align 8
  %i.ah = add i64 %i.y, 1
  store i64 %i.ah, ptr %i.x, align 8, !alias.scope !56585
  %i.ai = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1294, i64 noundef 2) #64 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 288
  store i8 %i.r, ptr %i.am, align 8
  %i.an = tail call fastcc noundef nonnull align 8 ptr @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE7restoreB11_(ptr noalias noundef nonnull align 8 %i.ak) ; 0 uses
  %not..i.i.i = and i64 %i.aj, 1                  ; 2 uses
  %..i.i.i = xor i64 %not..i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = insertvalue { i64, ptr } poison, i64 %..i.i.i, 0
  %i.ap = insertvalue { i64, ptr } %i.ao, ptr %i.ak, 1
  %.not.not.i.i = icmp eq i64 %not..i.i.i, 0
  br i1 %.not.not.i.i, label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible7COMMENT0s0_00000Bp_.exit.i, label %bb.k

bb.k:                                             ; preds = %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.i.i
  %i.aq = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4skipB11_(ptr noalias noundef nonnull align 8 %i.ak) #64
  br label %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible7COMMENT0s0_00000Bp_.exit.i

_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible7COMMENT0s0_00000Bp_.exit.i: ; preds = %bb.k, %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.i.i, %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.thread.i.i
  %i.ar = phi i64 [ %i.p, %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.i.i ], [ %i.p, %bb.k ], [ %i.j, %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.thread.i.i ] ; 2 uses
  %.merged.i.i = phi { i64, ptr } [ %i.ap, %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.i.i ], [ %i.aq, %bb.k ], [ %i.m, %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE9lookaheadNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_000000EB12_.exit.thread.i.i ] ; 2 uses
  %i.as = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.at = extractvalue { i64, ptr } %.merged.i.i, 1 ; 4 uses
  %i.au = trunc nuw i64 %i.as to i1
  br i1 %i.au, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible7COMMENT0s0_00000Bp_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !56586, !noundef !67
  %i.ay = icmp ugt i64 %i.ar, %i.ax
  br i1 %i.ay, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.ar, ptr %i.aw, align 8, !alias.scope !56586
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i

bb.n:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i, %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible7COMMENT0s0_00000Bp_.exit.i
  %.sroa.0.0.i = phi i64 [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i ], [ 0, %_RNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBn_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBn_4RuleE5parse5rules7visible7COMMENT0s0_00000Bp_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_00000EB12_.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE8truncateB1P_.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  br label %bb.n

_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s0_00000EB12_.exit: ; preds = %bb.b, %bb.n
  %.sroa.5.1.i = phi ptr [ %i.at, %bb.n ], [ %0, %bb.b ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.n ], [ 1, %bb.b ]
  %i.az = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i, 0
  %i.ba = insertvalue { i64, ptr } %i.az, ptr %.sroa.5.1.i, 1
  ret { i64, ptr } %i.ba
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBl_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBl_4RuleE5parse5rules7visible7COMMENT0s_0000Bn_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.012.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !56601
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !56601 ; 2 uses
  %.sroa.513.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56601 ; 3 uses
  %.not.i = icmp ult i64 %.sroa.513.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %.not.i, label %bb.d, label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7COMMENT0s_00000EB12_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !56601, !noundef !67 ; 2 uses
  %i.f = icmp ult i64 %i.e, 230584300921369396
  tail call void @llvm.assume(i1 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %.sroa.513.0.copyload.i, 1   ; 2 uses
  store i64 %i.h, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56601
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx10centrality42___pyfunction_graph_group_degree_centrality:bb.a
_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit30: ; preds = %bb.b, %.noexc22, %bb.ap, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.ap:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !95794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !95794
  %.sroa.058.0.copyload = load i64, ptr %i.al, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.459.0.copyload = load ptr, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.560.0.copyload = load i64, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.665.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.661.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.058.0.copyload, ptr %i.iw, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.459.0.copyload, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.560.0.copyload, ptr %.sroa.564.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.ix = atomicrmw sub ptr %i.y, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit30
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noundef %2, i1 noundef zeroext %3, double noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 7 uses
  %i.r = alloca [72 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val37 = load ptr, ptr %i.u, align 8, !nonnull !67, !noundef !67 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val38 = load i64, ptr %i.v, align 8, !noundef !67 ; 3 uses
  %.idx272 = mul nuw nsw i64 %.val38, 24
  %i.w = getelementptr inbounds nuw i8, ptr %.val37, i64 %.idx272 ; 2 uses
  %i.x = icmp eq i64 %.val38, 0
  br i1 %i.x, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.y = icmp eq ptr %.val37, %i.aa
  br i1 %i.y, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.z = phi ptr [ %i.aa, %bb.b ], [ %i.w, %bb.a ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !95980, !noalias !95981, !noundef !67
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %.body
  %i.ac = trunc nuw i8 %.sroa.016.3 to i1
  br i1 %i.ac, label %bb.bg, label %bb.bf

.thread:                                          ; preds = %.invoke
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %.val37 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = udiv i64 %i.ag, 24                      ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295               ; 5 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95982)
  %i.ak = tail call i1 @llvm.is.fpclass.f64(double %4, /* (pzero) */ i32 64)
  %i.al = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !95982
  br i1 %i.ak, label %bb.e, label %bb.d

_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.b, %bb.a
  %i.am = tail call i1 @llvm.is.fpclass.f64(double %4, /* (pzero) */ i32 64)
  br i1 %i.am, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, label %._crit_edge.i.i.thread

bb.d:                                             ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit
  %i.an = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !95983 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.invoke, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.e:                                             ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit
  %i.ap = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef range(i64 1, 17) 8) #59, !noalias !95984 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

.invoke:                                          ; preds = %bb.e, %bb.d
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.al) #61
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.d
  %.not249 = icmp eq i64 %i.ai, 0
  br i1 %.not249, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %min.iters.check = icmp samesign ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader286, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ah, 4294967292              ; 4 uses
  %i.as = shl nuw nsw i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.an, i64 %i.as  ; 2 uses
  %i.au = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !noalias !95985
  store <2 x double> %broadcast.splat, ptr %i.aw, align 8, !noalias !95985
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !95849

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader286

.lr.ph.i.i.preheader286:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.020.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  %.sroa.04.019.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.414.0.i227 = phi i64 [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.aj, %middle.block ], [ %i.aj, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa27.i.i = phi ptr [ %i.an, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.at, %middle.block ], [ %i.az, %.lr.ph.i.i ]
  store double %4, ptr %.sroa.0.0.lcssa27.i.i, align 8, !noalias !95985
  br label %._crit_edge.i.i.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader286, %.lr.ph.i.i
  %.sroa.0.020.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.0.020.i.i.ph, %.lr.ph.i.i.preheader286 ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %.sroa.04.019.i.i.ph, %.lr.ph.i.i.preheader286 ] ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.04.019.i.i, 1
  store double %4, ptr %.sroa.0.020.i.i, align 8, !noalias !95985
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.019.i.i, %i.ai
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !95850

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i: ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, %bb.f
  %.sroa.0.0.i.i214220 = phi i64 [ %i.aj, %bb.f ], [ 0, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %.sroa.10.0.i = phi i64 [ %i.ar, %bb.f ], [ 8, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.ba = inttoptr i64 %.sroa.10.0.i to ptr
  br label %._crit_edge.i.i.thread

._crit_edge.i.i.thread:                           ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, %._crit_edge.thread.i.i
  %.sroa.0.0.i.i213 = phi i64 [ %.sroa.0.0.i.i214220, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %.sroa.414.0.i227, %._crit_edge.thread.i.i ], [ 0, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ] ; 2 uses
  %.sink.i = phi ptr [ %i.ba, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %i.an, %._crit_edge.thread.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  store i64 %.sroa.0.0.i.i213, ptr %i.t, align 8, !alias.scope !95982
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store ptr %.sink.i, ptr %i.bb, align 8, !alias.scope !95982
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i.i213, ptr %i.bc, align 8, !alias.scope !95982
  %.not = icmp ne ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit, %._crit_edge.i.i.thread
  %.sroa.016.2 = phi i8 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit ], [ 1, %._crit_edge.i.i.thread ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95986)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %1, ptr %i.q, align 8, !noalias !95987
  %i.bd = zext i1 %3 to i8
  store i8 %i.bd, ptr %i.p, align 1, !noalias !95987
  store ptr %i.t, ptr %i.o, align 8, !noalias !95987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !95987
  store ptr %i.o, ptr %i.n, align 8, !noalias !95987
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.be, align 8, !alias.scope !95986, !noalias !95988, !nonnull !67, !noundef !67 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.bf, align 8, !alias.scope !95986, !noalias !95988, !noundef !67 ; 4 uses
  %.not.i.i.i53269 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i53269, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.g
  %.idx273 = shl nuw nsw i64 %.val1.i.i, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx273
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %.not.i.i.i53 = icmp eq ptr %.val.i.i, %i.bi
  br i1 %.not.i.i.i53, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph270, %bb.h
  %i.bh = phi ptr [ %i.bg, %.lr.ph270 ], [ %i.bi, %bb.h ]
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !95989, !noundef !67
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %bb.h, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.i
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.val.i.i to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr i64 %i.bl, 4                       ; 3 uses
  %i.bn = and i64 %i.bm, 4294967295               ; 3 uses
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 3                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !95990
  %i.bq = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !95990 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.j, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.j:                                             ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bp) #61
          to label %.noexc54 unwind label %bb.ab

.noexc54:                                         ; preds = %bb.j
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %xtraiter = and i64 %i.bm, 7                    ; 3 uses
  %i.bs = icmp samesign ult i64 %i.bn, 8
  br i1 %i.bs, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bm, 4294967288
  br label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.022.i.i.i.epil.init = phi ptr [ %i.bq, %.lr.ph.i.i.i.preheader ], [ %i.cb, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod291 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod291)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.epil = phi ptr [ %i.bt, %.lr.ph.i.i.i.epil ], [ %.sroa.0.022.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  store i32 0, ptr %.sroa.0.022.i.i.i.epil, align 4, !noalias !95991
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !95862

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0.lcssa29.i.i.i = phi ptr [ %i.bq, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.cb, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.i.i.epil ]
  store i32 0, ptr %.sroa.0.0.lcssa29.i.i.i, align 4, !noalias !95991
  %.pre.i = load ptr, ptr %i.q, align 8, !noalias !95987 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 8
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !95988
  %.phi.trans.insert113.i = getelementptr i8, ptr %.pre.i, i64 16
  %.val4.pre.i = load i64, ptr %.phi.trans.insert113.i, align 8, !noalias !95988
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.022.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.preheader.new ], [ %i.cb, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  store i32 0, ptr %.sroa.0.022.i.i.i, align 4, !noalias !95991
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 8
  store i32 0, ptr %i.bu, align 4, !noalias !95991
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  store i32 0, ptr %i.bv, align 4, !noalias !95991
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 24
  store i32 0, ptr %i.bw, align 4, !noalias !95991
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 32
  store i32 0, ptr %i.bx, align 4, !noalias !95991
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 40
  store i32 0, ptr %i.by, align 4, !noalias !95991
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 48
  store i32 0, ptr %i.bz, align 4, !noalias !95991
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 56
  store i32 0, ptr %i.ca, align 4, !noalias !95991
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 64 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.h, %bb.g, %._crit_edge.thread.i.i.i
  %.val4.i = phi i64 [ %.val4.pre.i, %._crit_edge.thread.i.i.i ], [ %.val1.i.i, %bb.g ], [ %.val1.i.i, %bb.h ]
  %.val.i.a = phi ptr [ %.val.pre.i, %._crit_edge.thread.i.i.i ], [ %.val.i.i, %bb.g ], [ %.val.i.i, %bb.h ] ; 2 uses
  %i.cc = phi ptr [ %i.bq, %._crit_edge.thread.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.g ], [ inttoptr (i64 4 to ptr), %bb.h ] ; 12 uses
  %.sroa.4.015.i.i = phi i64 [ %i.bo, %._crit_edge.thread.i.i.i ], [ 0, %bb.g ], [ 0, %bb.h ] ; 26 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.val.i.a, i64 %.val4.i
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.ce = phi i64 [ 0, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i ], [ %i.ci, %.backedge ] ; 3 uses
  %i.cf = phi ptr [ %.val.i.a, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i ], [ %i.ch, %.backedge ] ; 3 uses
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = add i64 %i.ce, 1
  %.val.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !95992, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %.backedge, label %bb.m

.backedge:                                        ; preds = %bb.l, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_NtB1j_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es_0E0B5w_.exit.i.i.i
  br label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.cj = and i64 %i.ce, 4294967295               ; 3 uses
  %i.ck = icmp ugt i64 %.sroa.4.015.i.i, %i.cj
  br i1 %i.ck, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_NtB1j_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es_0E0B5w_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef %.sroa.4.015.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1205) #60
          to label %.noexc.i unwind label %bb.aa, !noalias !95988

.noexc.i:                                         ; preds = %bb.n
  unreachable

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_NtB1j_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es_0E0B5w_.exit.i.i.i: ; preds = %bb.m
  %i.cl = trunc i64 %i.ce to i32
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cj ; 2 uses
  store i32 1, ptr %i.cm, align 4, !noalias !95993
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.cl, ptr %i.cn, align 4, !noalias !95993
  br label %.backedge

bb.o:                                             ; preds = %bb.k
  %.val5.i = load ptr, ptr %i.q, align 8, !noalias !95987, !nonnull !67, !align !98, !noundef !67
  %i.co = getelementptr i8, ptr %.val5.i, i64 48
  %.val.i15.i = load i64, ptr %i.co, align 8, !noalias !95988, !noundef !67
  %.not.i = icmp ult i64 %.val.i15.i, %5
  br i1 %.not.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.o
  %.idx.i = shl nuw nsw i64 %.sroa.4.015.i.i, 3   ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !95994
  %i.cq = shl nuw nsw i64 %.sroa.4.015.i.i, 4     ; 2 uses
  %i.cr = icmp eq i64 %.sroa.4.015.i.i, 0         ; 2 uses
  br i1 %i.cr, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !95995
  %i.cs = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !95995 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = ptrtoint ptr %i.cs to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cq) #61
          to label %bb.s unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i, !noalias !95996

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.10.0.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.q ], [ 8, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.cv = inttoptr i64 %.sroa.10.0.i.i.i.i.i.i to ptr ; 4 uses
  store i64 %.sroa.4.015.i.i, ptr %i.m, align 8, !noalias !95994
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.cv, ptr %i.cw, align 8, !noalias !95994
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.cx, align 8, !noalias !95994
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !95997
  store ptr %i.q, ptr %i.cy, align 8, !noalias !95998
  %.sroa.12.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.n, ptr %.sroa.12.sroa.7.0..sroa_idx.i, align 8, !noalias !95998
  %.sroa.12.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.p, ptr %.sroa.12.sroa.8.0..sroa_idx.i, align 8, !noalias !95998
  call void @llvm.experimental.noalias.scope.decl(metadata !95999)
  call void @llvm.experimental.noalias.scope.decl(metadata !96000)
  store ptr %i.cx, ptr %i.l, align 8, !noalias !96001
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96001
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.cv, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96001
  call void @llvm.experimental.noalias.scope.decl(metadata !96002)
  br i1 %i.cr, label %_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_NtB25_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB6k_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val11.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cz = phi ptr [ %i.de, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cc, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !range !76, !noalias !96003, !noundef !67
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !noalias !96003
  call void @llvm.experimental.noalias.scope.decl(metadata !96004)
  %i.dd = invoke fastcc { i64, double } @_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0B40_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy, i32 noundef range(i32 0, 2) %i.da, i32 %i.dc) #64
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.sink.split.i.i.i.i.i.i.i.i, !noalias !96005 ; 2 uses

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.df = extractvalue { i64, double } %i.dd, 0
  %i.dg = extractvalue { i64, double } %i.dd, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !96006)
  call void @llvm.experimental.noalias.scope.decl(metadata !96007)
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.val11.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.df, ptr %i.dh, align 8, !noalias !96008
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store double %i.dg, ptr %i.di, align 8, !noalias !96008
  %i.dj = add nuw nsw i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  store i64 %i.dj, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !96009, !noalias !96010
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cp
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtB1k_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB89_3VecB24_E14extend_trustedINtB4_3MapINtNtB89_9into_iter8IntoIterBU_EB2b_EE0E0E0B5F_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96003
  %.sroa.086.0.copyload87.pre = load i64, ptr %i.m, align 8, !noalias !96011
  %.sroa.588.0.copyload90.pre = load ptr, ptr %i.cw, align 8, !noalias !96011
  br label %_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_NtB25_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB6k_.exit.i.i

.body.sink.split.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cx, align 8, !alias.scope !96012, !noalias !96013
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96014
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !95994 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.dl, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %.body.sink.split.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !95994, !nonnull !67, !noundef !67
  %i.dm = shl nuw i64 %.val.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !95996
  br label %.body

bb.s:                                             ; preds = %bb.r
  unreachable

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96015
  br label %.body

_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_NtB25_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10centrality42graph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB6k_.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.588.0.copyload90 = phi ptr [ %i.cv, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %.sroa.588.0.copyload90.pre, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.086.0.copyload87 = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %.sroa.086.0.copyload87.pre, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %.promoted17.i.i.i13.i.i.i.i.i.i.i126.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !95997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !95994
  br label %bb.al

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !96016
  store i64 0, ptr %i.k, align 8, !alias.scope !96017, !noalias !96016
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.do, align 8, !alias.scope !96017, !noalias !96016
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.dp, align 8, !alias.scope !96017, !noalias !96016
  call void @llvm.experimental.noalias.scope.decl(metadata !96018)
  call void @llvm.experimental.noalias.scope.decl(metadata !96019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !96020
  store i64 %.sroa.4.015.i.i, ptr %i.j, align 8, !noalias !96021
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.015.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i, label %bb.t, !prof !77

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i: ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96021
  br label %bb.v

bb.t:                                             ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846976) %.sroa.4.015.i.i, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i16.i.i.i.i.i.i.i, !noalias !96022

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.dp, align 8, !alias.scope !96023, !noalias !96024 ; 3 uses
  %.pre32.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !96023, !noalias !96024 ; 3 uses
  %.pre33.i.i.i.i.i.i.i = sub nsw i64 %.pre32.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i
  %i.dq = icmp ult i64 %.pre33.i.i.i.i.i.i.i, %.sroa.4.015.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96021
  %i.dr = icmp ult i64 %.pre.i.i.i.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.dr)
  br i1 %i.dq, label %bb.u, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i, !prof !85

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !96023, !noalias !96024
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1582, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1584) #60
          to label %.noexc15.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, !noalias !96025

.noexc15.i.i.i.i.i.i.i:                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i
  %.sroa.086.0.copyload = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre32.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 4 uses
  %.sroa.588.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ds = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.588.0.copyload, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96026
  store i64 %.sroa.4.015.i.i, ptr %i.f, align 8, !noalias !96027
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx10centrality44___pyfunction_digraph_group_degree_centrality:bb.a
_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit30: ; preds = %bb.b, %.noexc22, %bb.an, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.an:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !96370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !96370
  %.sroa.058.0.copyload = load i64, ptr %i.al, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.459.0.copyload = load ptr, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.560.0.copyload = load i64, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.665.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.661.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.058.0.copyload, ptr %i.ir, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.459.0.copyload, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.560.0.copyload, ptr %.sroa.564.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.is = atomicrmw sub ptr %i.y, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit30
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, ptr noundef %2, i1 noundef zeroext %3, double noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 7 uses
  %i.r = alloca [72 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val37 = load ptr, ptr %i.u, align 8, !nonnull !67, !noundef !67 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val38 = load i64, ptr %i.v, align 8, !noundef !67 ; 3 uses
  %.idx272 = mul nuw nsw i64 %.val38, 24
  %i.w = getelementptr inbounds nuw i8, ptr %.val37, i64 %.idx272 ; 2 uses
  %i.x = icmp eq i64 %.val38, 0
  br i1 %i.x, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.y = icmp eq ptr %.val37, %i.aa
  br i1 %i.y, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.z = phi ptr [ %i.aa, %bb.b ], [ %i.w, %bb.a ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !96557, !noalias !96558, !noundef !67
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %.body
  %i.ac = trunc nuw i8 %.sroa.016.3 to i1
  br i1 %i.ac, label %bb.bg, label %bb.bf

.thread:                                          ; preds = %.invoke
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %.val37 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = udiv i64 %i.ag, 24                      ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295               ; 5 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96559)
  %i.ak = tail call i1 @llvm.is.fpclass.f64(double %4, /* (pzero) */ i32 64)
  %i.al = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !96559
  br i1 %i.ak, label %bb.e, label %bb.d

_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.b, %bb.a
  %i.am = tail call i1 @llvm.is.fpclass.f64(double %4, /* (pzero) */ i32 64)
  br i1 %i.am, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, label %._crit_edge.i.i.thread

bb.d:                                             ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit
  %i.an = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !96560 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.invoke, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.e:                                             ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit
  %i.ap = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef range(i64 1, 17) 8) #59, !noalias !96561 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

.invoke:                                          ; preds = %bb.e, %bb.d
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.al) #61
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.d
  %.not249 = icmp eq i64 %i.ai, 0
  br i1 %.not249, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %min.iters.check = icmp samesign ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader286, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ah, 4294967292              ; 4 uses
  %i.as = shl nuw nsw i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.an, i64 %i.as  ; 2 uses
  %i.au = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !noalias !96562
  store <2 x double> %broadcast.splat, ptr %i.aw, align 8, !noalias !96562
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !96426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader286

.lr.ph.i.i.preheader286:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.020.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  %.sroa.04.019.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.414.0.i227 = phi i64 [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.aj, %middle.block ], [ %i.aj, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa27.i.i = phi ptr [ %i.an, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.at, %middle.block ], [ %i.az, %.lr.ph.i.i ]
  store double %4, ptr %.sroa.0.0.lcssa27.i.i, align 8, !noalias !96562
  br label %._crit_edge.i.i.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader286, %.lr.ph.i.i
  %.sroa.0.020.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.0.020.i.i.ph, %.lr.ph.i.i.preheader286 ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %.sroa.04.019.i.i.ph, %.lr.ph.i.i.preheader286 ] ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.04.019.i.i, 1
  store double %4, ptr %.sroa.0.020.i.i, align 8, !noalias !96562
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.019.i.i, %i.ai
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !96427

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i: ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, %bb.f
  %.sroa.0.0.i.i214220 = phi i64 [ %i.aj, %bb.f ], [ 0, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %.sroa.10.0.i = phi i64 [ %i.ar, %bb.f ], [ 8, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.ba = inttoptr i64 %.sroa.10.0.i to ptr
  br label %._crit_edge.i.i.thread

._crit_edge.i.i.thread:                           ; preds = %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, %._crit_edge.thread.i.i
  %.sroa.0.0.i.i213 = phi i64 [ %.sroa.0.0.i.i214220, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %.sroa.414.0.i227, %._crit_edge.thread.i.i ], [ 0, %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ] ; 2 uses
  %.sink.i = phi ptr [ %i.ba, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %i.an, %._crit_edge.thread.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXsH_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13EdgeIndexable10edge_boundCskcxRuJ53GpR_9rustworkx.exit.thread ]
  store i64 %.sroa.0.0.i.i213, ptr %i.t, align 8, !alias.scope !96559
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store ptr %.sink.i, ptr %i.bb, align 8, !alias.scope !96559
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i.i213, ptr %i.bc, align 8, !alias.scope !96559
  %.not = icmp ne ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit, %._crit_edge.i.i.thread
  %.sroa.016.2 = phi i8 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit ], [ 1, %._crit_edge.i.i.thread ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %1, ptr %i.q, align 8, !noalias !96564
  %i.bd = zext i1 %3 to i8
  store i8 %i.bd, ptr %i.p, align 1, !noalias !96564
  store ptr %i.t, ptr %i.o, align 8, !noalias !96564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !96564
  store ptr %i.o, ptr %i.n, align 8, !noalias !96564
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.be, align 8, !alias.scope !96563, !noalias !96565, !nonnull !67, !noundef !67 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.bf, align 8, !alias.scope !96563, !noalias !96565, !noundef !67 ; 4 uses
  %.not.i.i.i53269 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i53269, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.g
  %.idx273 = shl nuw nsw i64 %.val1.i.i, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx273
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %.not.i.i.i53 = icmp eq ptr %.val.i.i, %i.bi
  br i1 %.not.i.i.i53, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph270, %bb.h
  %i.bh = phi ptr [ %i.bg, %.lr.ph270 ], [ %i.bi, %bb.h ]
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !96566, !noundef !67
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %bb.h, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.i
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.val.i.i to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr i64 %i.bl, 4                       ; 3 uses
  %i.bn = and i64 %i.bm, 4294967295               ; 3 uses
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 3                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !96567
  %i.bq = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96567 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.j, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.j:                                             ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bp) #61
          to label %.noexc54 unwind label %bb.ab

.noexc54:                                         ; preds = %bb.j
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %xtraiter = and i64 %i.bm, 7                    ; 3 uses
  %i.bs = icmp samesign ult i64 %i.bn, 8
  br i1 %i.bs, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bm, 4294967288
  br label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.022.i.i.i.epil.init = phi ptr [ %i.bq, %.lr.ph.i.i.i.preheader ], [ %i.cb, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod291 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod291)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.epil = phi ptr [ %i.bt, %.lr.ph.i.i.i.epil ], [ %.sroa.0.022.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  store i32 0, ptr %.sroa.0.022.i.i.i.epil, align 4, !noalias !96568
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !96439

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0.lcssa29.i.i.i = phi ptr [ %i.bq, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.cb, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.i.i.epil ]
  store i32 0, ptr %.sroa.0.0.lcssa29.i.i.i, align 4, !noalias !96568
  %.pre.i = load ptr, ptr %i.q, align 8, !noalias !96564 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 8
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !96565
  %.phi.trans.insert113.i = getelementptr i8, ptr %.pre.i, i64 16
  %.val4.pre.i = load i64, ptr %.phi.trans.insert113.i, align 8, !noalias !96565
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.022.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.preheader.new ], [ %i.cb, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  store i32 0, ptr %.sroa.0.022.i.i.i, align 4, !noalias !96568
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 8
  store i32 0, ptr %i.bu, align 4, !noalias !96568
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  store i32 0, ptr %i.bv, align 4, !noalias !96568
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 24
  store i32 0, ptr %i.bw, align 4, !noalias !96568
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 32
  store i32 0, ptr %i.bx, align 4, !noalias !96568
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 40
  store i32 0, ptr %i.by, align 4, !noalias !96568
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 48
  store i32 0, ptr %i.bz, align 4, !noalias !96568
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 56
  store i32 0, ptr %i.ca, align 4, !noalias !96568
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 64 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.h, %bb.g, %._crit_edge.thread.i.i.i
  %.val4.i = phi i64 [ %.val4.pre.i, %._crit_edge.thread.i.i.i ], [ %.val1.i.i, %bb.g ], [ %.val1.i.i, %bb.h ]
  %.val.i.a = phi ptr [ %.val.pre.i, %._crit_edge.thread.i.i.i ], [ %.val.i.i, %bb.g ], [ %.val.i.i, %bb.h ] ; 2 uses
  %i.cc = phi ptr [ %i.bq, %._crit_edge.thread.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.g ], [ inttoptr (i64 4 to ptr), %bb.h ] ; 12 uses
  %.sroa.4.015.i.i = phi i64 [ %i.bo, %._crit_edge.thread.i.i.i ], [ 0, %bb.g ], [ 0, %bb.h ] ; 26 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.val.i.a, i64 %.val4.i
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.ce = phi i64 [ 0, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i ], [ %i.ci, %.backedge ] ; 3 uses
  %i.cf = phi ptr [ %.val.i.a, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i ], [ %i.ch, %.backedge ] ; 3 uses
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = add i64 %i.ce, 1
  %.val.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !96569, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %.backedge, label %bb.m

.backedge:                                        ; preds = %bb.l, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es_0E0B5e_.exit.i.i.i
  br label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.cj = and i64 %i.ce, 4294967295               ; 3 uses
  %i.ck = icmp ugt i64 %.sroa.4.015.i.i, %i.cj
  br i1 %i.ck, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es_0E0B5e_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef %.sroa.4.015.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1205) #60
          to label %.noexc.i unwind label %bb.aa, !noalias !96565

.noexc.i:                                         ; preds = %bb.n
  unreachable

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB47_5types3any5PyAnyEB42_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es_0E0B5e_.exit.i.i.i: ; preds = %bb.m
  %i.cl = trunc i64 %i.ce to i32
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cj ; 2 uses
  store i32 1, ptr %i.cm, align 4, !noalias !96570
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.cl, ptr %i.cn, align 4, !noalias !96570
  br label %.backedge

bb.o:                                             ; preds = %bb.k
  %.val6.i = load ptr, ptr %i.q, align 8, !noalias !96564, !nonnull !67, !align !98, !noundef !67
  %i.co = getelementptr i8, ptr %.val6.i, i64 48
  %.val.i15.i = load i64, ptr %i.co, align 8, !noalias !96565, !noundef !67
  %.not.i = icmp ult i64 %.val.i15.i, %5
  br i1 %.not.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.o
  %.idx.i = shl nuw nsw i64 %.sroa.4.015.i.i, 3   ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !96571
  %i.cq = shl nuw nsw i64 %.sroa.4.015.i.i, 4     ; 2 uses
  %i.cr = icmp eq i64 %.sroa.4.015.i.i, 0         ; 2 uses
  br i1 %i.cr, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !96572
  %i.cs = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !96572 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = ptrtoint ptr %i.cs to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cq) #61
          to label %bb.s unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i, !noalias !96573

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.10.0.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.q ], [ 8, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.cv = inttoptr i64 %.sroa.10.0.i.i.i.i.i.i to ptr ; 4 uses
  store i64 %.sroa.4.015.i.i, ptr %i.m, align 8, !noalias !96571
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.cv, ptr %i.cw, align 8, !noalias !96571
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.cx, align 8, !noalias !96571
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !96574
  store ptr %i.q, ptr %i.cy, align 8, !noalias !96575
  %.sroa.12.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.n, ptr %.sroa.12.sroa.7.0..sroa_idx.i, align 8, !noalias !96575
  %.sroa.12.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.p, ptr %.sroa.12.sroa.8.0..sroa_idx.i, align 8, !noalias !96575
  call void @llvm.experimental.noalias.scope.decl(metadata !96576)
  call void @llvm.experimental.noalias.scope.decl(metadata !96577)
  store ptr %i.cx, ptr %i.l, align 8, !noalias !96578
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96578
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.cv, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96578
  call void @llvm.experimental.noalias.scope.decl(metadata !96579)
  br i1 %i.cr, label %_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB62_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val11.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cz = phi ptr [ %i.de, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cc, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !range !76, !noalias !96580, !noundef !67
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !noalias !96580
  call void @llvm.experimental.noalias.scope.decl(metadata !96581)
  %i.dd = invoke fastcc { i64, double } @_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0B3I_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy, i32 noundef range(i32 0, 2) %i.da, i32 %i.dc) #64
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.sink.split.i.i.i.i.i.i.i.i, !noalias !96582 ; 2 uses

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.df = extractvalue { i64, double } %i.dd, 0
  %i.dg = extractvalue { i64, double } %i.dd, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !96583)
  call void @llvm.experimental.noalias.scope.decl(metadata !96584)
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.val11.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.df, ptr %i.dh, align 8, !noalias !96585
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store double %i.dg, ptr %i.di, align 8, !noalias !96585
  %i.dj = add nuw nsw i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  store i64 %i.dj, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !96586, !noalias !96587
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cp
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldINtNtBa_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIBV_dEuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB1i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7T_3VecB24_E14extend_trustedINtB4_3MapINtNtB7T_9into_iter8IntoIterBU_EB2b_EE0E0E0B5n_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96580
  %.sroa.086.0.copyload87.pre = load i64, ptr %i.m, align 8, !noalias !96588
  %.sroa.588.0.copyload90.pre = load ptr, ptr %i.cw, align 8, !noalias !96588
  br label %_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB62_.exit.i.i

.body.sink.split.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cx, align 8, !alias.scope !96589, !noalias !96590
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96591
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !96571 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.dl, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %.body.sink.split.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !96571, !nonnull !67, !noundef !67
  %i.dm = shl nuw i64 %.val.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !96573
  br label %.body

bb.s:                                             ; preds = %bb.r
  unreachable

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96592
  br label %.body

_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality36newman_weighted_closeness_centralityRINtNtB23_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4V_5types3any5PyAnyEB4Q_ENCNvNtCskcxRuJ53GpR_9rustworkx10centrality44digraph_newman_weighted_closeness_centrality0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecIB1G_dEEEB62_.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.588.0.copyload90 = phi ptr [ %i.cv, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %.sroa.588.0.copyload90.pre, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.086.0.copyload87 = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %.sroa.086.0.copyload87.pre, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %.promoted17.i.i.i13.i.i.i.i.i.i.i126.i = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !96574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !96571
  br label %bb.al

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !96593
  store i64 0, ptr %i.k, align 8, !alias.scope !96594, !noalias !96593
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.do, align 8, !alias.scope !96594, !noalias !96593
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.dp, align 8, !alias.scope !96594, !noalias !96593
  call void @llvm.experimental.noalias.scope.decl(metadata !96595)
  call void @llvm.experimental.noalias.scope.decl(metadata !96596)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !96597
  store i64 %.sroa.4.015.i.i, ptr %i.j, align 8, !noalias !96598
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.015.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i, label %bb.t, !prof !77

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i: ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96598
  br label %bb.v

bb.t:                                             ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterB1p_EE3newINtB2V_3VecB1p_EECskcxRuJ53GpR_9rustworkx.exit.thread.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846976) %.sroa.4.015.i.i, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i16.i.i.i.i.i.i.i, !noalias !96599

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.dp, align 8, !alias.scope !96600, !noalias !96601 ; 3 uses
  %.pre32.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !96600, !noalias !96601 ; 3 uses
  %.pre33.i.i.i.i.i.i.i = sub nsw i64 %.pre32.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i
  %i.dq = icmp ult i64 %.pre33.i.i.i.i.i.i.i, %.sroa.4.015.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96598
  %i.dr = icmp ult i64 %.pre.i.i.i.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.dr)
  br i1 %i.dq, label %bb.u, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i, !prof !85

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !96600, !noalias !96601
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1582, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1584) #60
          to label %.noexc15.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, !noalias !96602

.noexc15.i.i.i.i.i.i.i:                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i
  %.sroa.086.0.copyload = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre32.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 4 uses
  %.sroa.588.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ds = phi i64 [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.588.0.copyload, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96603
  store i64 %.sroa.4.015.i.i, ptr %i.f, align 8, !noalias !96604
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity30___pyfunction_graph_core_number:bb.a

bb.bb:                                            ; preds = %bb.ae
  %i.hq = icmp eq i8 %i.el, 1
  br i1 %i.hq, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i85.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i, %middle.block1521, %bb.bb
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef %.idx.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !109743
  br label %bb.bd

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i85.i.i.i.i: ; preds = %bb.bb
  %i.hr = lshr i64 %i.cn, 1                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109806)
  call void @llvm.experimental.noalias.scope.decl(metadata !109807)
  %n.vec1509 = and i64 %i.hr, 1016                ; 3 uses
  br label %vector.body1510

vector.body1510:                                  ; preds = %vector.body1510, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i85.i.i.i.i
  %index1511 = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i85.i.i.i.i ], [ %index.next1520, %vector.body1510 ] ; 3 uses
  %i.hs = xor i64 %index1511, -1
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index1511 ; 3 uses
  %i.hu = getelementptr [4 x i8], ptr %i.co, i64 %i.hs ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %wide.load1512 = load <4 x i32>, ptr %i.ht, align 4, !alias.scope !109808, !noalias !109809
  %wide.load1513 = load <4 x i32>, ptr %i.hv, align 4, !alias.scope !109808, !noalias !109809
  %i.hw = getelementptr i8, ptr %i.hu, i64 -12    ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hu, i64 -28    ; 2 uses
  %wide.load1514 = load <4 x i32>, ptr %i.hw, align 4, !alias.scope !109810, !noalias !109811
  %wide.load1515 = load <4 x i32>, ptr %i.hx, align 4, !alias.scope !109810, !noalias !109811
  %reverse1516 = shufflevector <4 x i32> %wide.load1514, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1517 = shufflevector <4 x i32> %wide.load1515, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse1516, ptr %i.ht, align 4, !alias.scope !109808, !noalias !109809
  store <4 x i32> %reverse1517, ptr %i.hv, align 4, !alias.scope !109808, !noalias !109809
  %reverse1518 = shufflevector <4 x i32> %wide.load1512, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1519 = shufflevector <4 x i32> %wide.load1513, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse1518, ptr %i.hw, align 4, !alias.scope !109810, !noalias !109811
  store <4 x i32> %reverse1519, ptr %i.hx, align 4, !alias.scope !109810, !noalias !109811
  %index.next1520 = add nuw i64 %index1511, 8     ; 2 uses
  %i.hy = icmp eq i64 %index.next1520, %n.vec1509
  br i1 %i.hy, label %middle.block1521, label %vector.body1510, !llvm.loop !109426

middle.block1521:                                 ; preds = %vector.body1510
  %cmp.n1522 = icmp eq i64 %i.hr, %n.vec1509
  br i1 %cmp.n1522, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i: ; preds = %middle.block1521, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i
  %.sroa.0.016.i87.i.i.i.i = phi i64 [ %i.ie, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i ], [ %n.vec1509, %middle.block1521 ] ; 3 uses
  %i.hz = xor i64 %.sroa.0.016.i87.i.i.i.i, -1
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.sroa.0.016.i87.i.i.i.i ; 2 uses
  %i.ib = getelementptr [4 x i8], ptr %i.co, i64 %i.hz ; 2 uses
  %i.ic = load i32, ptr %i.ia, align 4, !alias.scope !109808, !noalias !109809, !noundef !67
  %i.id = load i32, ptr %i.ib, align 4, !alias.scope !109810, !noalias !109811
  store i32 %i.id, ptr %i.ia, align 4, !alias.scope !109808, !noalias !109809
  store i32 %i.ic, ptr %i.ib, align 4, !alias.scope !109810, !noalias !109811
  %i.ie = add nuw nsw i64 %.sroa.0.016.i87.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i88.i.i.i.i = icmp eq i64 %i.ie, %i.hr
  br i1 %exitcond.not.i88.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i, !llvm.loop !109427

bb.bc:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5m_5types3any5PyAnyEB5h_NtB16_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.cl, i64 noundef range(i64 0, 2305843009213693952) %i.cn, i64 noundef 1, ptr nonnull align 8 %i.k) #62
          to label %bb.bd unwind label %.loopexit.split-lp511.i.i, !noalias !109743

bb.bd:                                            ; preds = %bb.bc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i80.i.i.i.i, %bb.ac, %.thread1340.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !109770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !109743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !109743
  %i.if = add i64 %.val.i.i.i, -1                 ; 3 uses
  %i.ig = icmp ult i64 %i.if, %i.cn
  br i1 %i.ig, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.if
  %.val89.i.i = load i32, ptr %i.ih, align 4, !noalias !109743 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109812)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !109812, !noalias !109743, !noundef !67
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %select.unfold.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val.i130.i.i = load i64, ptr %i.bo, align 8, !alias.scope !109813, !noalias !109814, !noundef !67
  %i.il = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !109815, !noundef !67
  %i.im = zext i32 %.val89.i.i to i64
  %i.in = xor i64 %.val.i130.i.i, %i.im
  %i.io = zext i64 %i.in to i128
  %i.ip = zext i64 %i.il to i128
  %i.iq = mul nuw i128 %i.ip, %i.io               ; 2 uses
  %i.ir = lshr i128 %i.iq, 64
  %i.is = xor i128 %i.ir, %i.iq
  %i.it = trunc i128 %i.is to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109816)
  call void @llvm.experimental.noalias.scope.decl(metadata !109817)
  %i.iu = lshr i64 %i.it, 57
  %i.iv = trunc nuw nsw i64 %i.iu to i8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !109818, !noalias !109819, !noundef !67 ; 2 uses
  %i.iy = load ptr, ptr %i.t, align 8, !alias.scope !109818, !noalias !109819, !nonnull !67, !noundef !67 ; 2 uses
  %i.iz = insertelement <16 x i8> poison, i8 %i.iv, i64 0
  %i.ja = shufflevector <16 x i8> %i.iz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.bf ], [ %i.jr, %bb.bi ]
  %.pn.i.i131.i.i = phi i64 [ %i.it, %bb.bf ], [ %i.js, %bb.bi ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i131.i.i, %i.ix ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.jb, align 1, !noalias !109820 ; 2 uses
  %i.jc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.ja
  %i.jd = bitcast <16 x i1> %i.jc to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.jd, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i132.i.i

.lr.ph.i.i132.i.i:                                ; preds = %bb.bg, %bb.bh
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.jq, %bb.bh ], [ %i.jd, %bb.bg ] ; 3 uses
  %i.je = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.jf = zext nneg i16 %i.je to i64
  %i.jg = add i64 %.sroa.01.0.i.i.i.i.i, %i.jf
  %i.jh = and i64 %i.jg, %i.ix
  %i.ji = sub nsw i64 0, %i.jh
  %i.jj = getelementptr inbounds [16 x i8], ptr %i.iy, i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -16
  %.val2.i.i.i133.i.i = load i32, ptr %i.jk, align 4, !noalias !109821, !noundef !67
  %i.jl = icmp eq i32 %.val89.i.i, %.val2.i.i.i133.i.i
  br i1 %i.jl, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bh, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.bh, %bb.bg
  %i.jm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.jn = bitcast <16 x i1> %i.jm to i16
  %i.jo = icmp eq i16 %i.jn, 0
  br i1 %i.jo, label %bb.bi, label %select.unfold.i.i, !prof !71

bb.bh:                                            ; preds = %.lr.ph.i.i132.i.i
  %i.jp = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.jq = and i16 %i.jp, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.jq, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i132.i.i

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jr = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.js = add i64 %.sroa.01.0.i.i.i.i.i, %i.jr
  br label %bb.bg

bb.bj:                                            ; preds = %bb.bd
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.if, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @760) #61
          to label %bb.bk unwind label %.loopexit.split-lp511.i.i, !noalias !109743

bb.bk:                                            ; preds = %select.unfold453.i.i, %select.unfold.i.i, %bb.bj
  unreachable

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i132.i.i
  %i.jt = getelementptr inbounds i8, ptr %i.jj, i64 -8
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !109743, !noundef !67
  %i.jv = add i64 %i.ju, 1                        ; 4 uses
  %i.jw = shl i64 %i.jv, 3                        ; 5 uses
  %i.jx = icmp ugt i64 %i.jv, 2305843009213693951
  %.not.i134.i.i = icmp ugt i64 %i.jw, 9223372036854775800
  %or.cond.i135.i.i = or i1 %i.jx, %.not.i134.i.i
  br i1 %or.cond.i135.i.i, label %.invoke.i.i, label %bb.bl, !prof !73

bb.bl:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.jy = icmp eq i64 %i.jw, 0
  br i1 %i.jy, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425.i.i, label %bb.bm

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425.i.i: ; preds = %bb.bl
  %i.jz = icmp eq i64 %i.jv, 0
  call void @llvm.assume(i1 %i.jz)
  store i64 0, ptr %i.n, align 8, !noalias !109743
  %i.ka = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ka, align 8, !noalias !109743
  %i.kb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.kb, align 8, !noalias !109743
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsLUcHuY3yQf_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #62
          to label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425._crit_edge.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !109743

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425._crit_edge.i.i: ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425.i.i
  %.pre.i.i = load ptr, ptr %i.ka, align 8, !alias.scope !109822, !noalias !109743
  br label %.lr.ph891.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !109823
  %i.kc = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.jw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !109823 ; 3 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %.invoke.i.i, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %bb.be
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @761) #61
          to label %bb.bk unwind label %.loopexit.split-lp511.i.i, !noalias !109743

.invoke.i.i:                                      ; preds = %bb.bm, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ab
  %i.ke = phi i64 [ 4, %bb.ab ], [ 8, %bb.bm ], [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.kf = phi i64 [ %.idx.i.i, %bb.ab ], [ %i.jw, %bb.bm ], [ %i.jw, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.ke, i64 %i.kf) #61
          to label %.cont.i.i unwind label %.loopexit.split-lp511.i.i, !noalias !109743

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bm
  store i64 %i.jv, ptr %i.n, align 8, !noalias !109743
  %i.kg = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.kc, ptr %i.kg, align 8, !noalias !109743
  %i.kh = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.kh, align 8, !noalias !109743
  br label %.lr.ph891.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i: ; preds = %bb.cb, %bb.ca, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit502.i.i
  %i.ki = phi ptr [ %i.kn, %bb.cb ], [ %i.kn, %bb.ca ], [ %i.kn, %.loopexit502.i.i ], [ %i.kn, %.loopexit.split-lp.loopexit.i.i ], [ %i.kn, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.ph.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.pn.i.i = phi { ptr, i32 } [ %i.om, %bb.cb ], [ %i.om, %bb.ca ], [ %lpad.loopexit.i.i, %.loopexit502.i.i ], [ %lpad.loopexit504.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit507.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109824)
  %.val.i137.i.i = load i64, ptr %i.n, align 8, !alias.scope !109824, !noalias !109743 ; 2 uses
  %i.kj = icmp eq i64 %.val.i137.i.i, 0
  br i1 %i.kj, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i138.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i138.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i
  %.val1.i139.i.i = load ptr, ptr %i.ki, align 8, !alias.scope !109824, !noalias !109743, !nonnull !67, !noundef !67
  %i.kk = shl nuw i64 %.val.i137.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i139.i.i, i64 noundef %i.kk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !109825
  br label %.body.i.i

.loopexit502.i.i:                                 ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.ee
  %lpad.loopexit504.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.bn
  %lpad.loopexit507.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %select.unfold435.invoke.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425.i.i
  %.ph.ph.ph.i.i = phi ptr [ %i.kn, %select.unfold435.invoke.i.i ], [ %i.ka, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425.i.i ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i

.lr.ph891.i.i:                                    ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425._crit_edge.i.i
  %i.kl = phi ptr [ %i.kc, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.pre.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425._crit_edge.i.i ]
  %i.km = phi ptr [ %i.kh, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.kb, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425._crit_edge.i.i ] ; 5 uses
  %i.kn = phi ptr [ %i.kg, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.ka, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread425._crit_edge.i.i ] ; 10 uses
  store i64 0, ptr %i.kl, align 8, !noalias !109743
  store i64 1, ptr %i.km, align 8, !alias.scope !109822, !noalias !109743
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit503.i.i, %.lr.ph891.i.i
  %.sroa.01.0889.i.i = phi i64 [ 0, %.lr.ph891.i.i ], [ %.sroa.01.1.i.i, %.loopexit503.i.i ] ; 3 uses
  %.sroa.0367.0888.i.i = phi ptr [ %i.cl, %.lr.ph891.i.i ], [ %i.ko, %.loopexit503.i.i ] ; 3 uses
  %.sroa.7369.0887.i.i = phi i64 [ 0, %.lr.ph891.i.i ], [ %i.kp, %.loopexit503.i.i ] ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0367.0888.i.i, i64 4 ; 2 uses
  %i.kp = add nuw nsw i64 %.sroa.7369.0887.i.i, 1
  %i.kq = load i32, ptr %.sroa.0367.0888.i.i, align 4, !noalias !109743, !noundef !67
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r, i32 noundef %i.kq, i64 noundef %.sroa.7369.0887.i.i)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

._crit_edge892.i.i:                               ; preds = %.loopexit503.i.i
  %.val.i204.pre.i.i = load i64, ptr %i.cj, align 8, !noalias !109743 ; 2 uses
  %i.kr = icmp ult i64 %i.cn, 2305843009213693952
  call void @llvm.assume(i1 %i.kr)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 8 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.la = load i64, ptr %i.kz, align 8, !noalias !109743
  %i.lb = icmp eq i64 %i.la, 0
  %i.lc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !noalias !109743 ; 9 uses
  %i.le = load ptr, ptr %i.r, align 8, !noalias !109743 ; 8 uses
  br label %bb.br

bb.bo:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !109742
  call void @llvm.experimental.noalias.scope.decl(metadata !109826)
  %.val.i141.i.i = load i64, ptr %i.n, align 8, !alias.scope !109826, !noalias !109743 ; 2 uses
  %i.lf = icmp eq i64 %.val.i141.i.i, 0
  br i1 %i.lf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i.i: ; preds = %bb.bo
  %.val1.i143.i.i = load ptr, ptr %i.kn, align 8, !alias.scope !109826, !noalias !109743, !nonnull !67, !noundef !67
  %i.lg = shl nuw i64 %.val.i141.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i143.i.i, i64 noundef %i.lg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !109827
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !109743
  %i.lh = icmp eq i64 %i.ld, 0
  br i1 %i.lh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i145.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i145.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i
  %i.li = shl i64 %i.ld, 4                        ; 2 uses
  %i.lj = add i64 %i.li, 16                       ; 2 uses
  %i.lk = add i64 %i.ld, 17
  %i.ll = add i64 %i.lk, %i.lj                    ; 4 uses
  %i.lm = icmp uge i64 %i.ll, %i.lj
  %i.ln = icmp ult i64 %i.ll, 9223372036854775793
  call void @llvm.assume(i1 %i.lm)
  call void @llvm.assume(i1 %i.ln)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.le) ]
  %i.lo = icmp eq i64 %i.ll, 0
  br i1 %i.lo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i145.i.i
  %i.lp = sub nuw nsw i64 -16, %i.li
  %i.lq = getelementptr inbounds i8, ptr %i.le, i64 %i.lp
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !109743
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i: ; preds = %bb.bp, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i145.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !109743
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBG_3set7HashSetB1g_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s), !noalias !109743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !109743
  %.val77.i.i = load ptr, ptr %i.t, align 8, !noalias !109743 ; 2 uses
  %.val78.i.i = load i64, ptr %i.iw, align 8, !noalias !109743, !noundef !67 ; 3 uses
  %i.lr = icmp eq i64 %.val78.i.i, 0
  br i1 %i.lr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i147.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i147.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i
  %i.ls = shl i64 %.val78.i.i, 4                  ; 2 uses
  %i.lt = add i64 %i.ls, 16                       ; 2 uses
  %i.lu = add i64 %.val78.i.i, 17
  %i.lv = add i64 %i.lu, %i.lt                    ; 4 uses
  %i.lw = icmp uge i64 %i.lv, %i.lt
  %i.lx = icmp ult i64 %i.lv, 9223372036854775793
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.assume(i1 %i.lx)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i.i) ]
  %i.ly = icmp eq i64 %i.lv, 0
  br i1 %i.ly, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i147.i.i
  %i.lz = sub nuw nsw i64 -16, %i.ls
  %i.ma = getelementptr inbounds i8, ptr %.val77.i.i, i64 %i.lz
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ma, i64 noundef %i.lv, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !109743
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i: ; preds = %bb.bq, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i147.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !109743
  %.val.i.i = load i64, ptr %i.v, align 8, !noalias !109743 ; 2 uses
  %i.mb = icmp eq i64 %.val.i.i, 0
  br i1 %i.mb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i
  %i.mc = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !109743
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !109743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !109743
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_NtB1m_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i

bb.br:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %._crit_edge892.i.i
  %.sroa.025.0900.i.i = phi i64 [ 0, %._crit_edge892.i.i ], [ %i.md, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.md = add nuw nsw i64 %.sroa.025.0900.i.i, 1  ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.sroa.025.0900.i.i
  %i.mf = load i32, ptr %i.me, align 4, !noalias !109743, !noundef !67 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109828)
  %i.mg = load i64, ptr %i.ks, align 8, !alias.scope !109828, !noalias !109743, !noundef !67
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %select.unfold435.invoke.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.val.i151.i.i = load i64, ptr %i.ce, align 8, !alias.scope !109829, !noalias !109830, !noundef !67
  %i.mi = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !109831, !noundef !67
  %i.mj = zext i32 %i.mf to i64                   ; 3 uses
  %i.mk = xor i64 %.val.i151.i.i, %i.mj
  %i.ml = zext i64 %i.mk to i128
  %i.mm = zext i64 %i.mi to i128
  %i.mn = mul nuw i128 %i.mm, %i.ml               ; 2 uses
  %i.mo = lshr i128 %i.mn, 64
  %i.mp = xor i128 %i.mo, %i.mn
  %i.mq = trunc i128 %i.mp to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109832)
  call void @llvm.experimental.noalias.scope.decl(metadata !109833)
  %i.mr = lshr i64 %i.mq, 57
  %i.ms = trunc nuw nsw i64 %i.mr to i8
  %i.mt = load i64, ptr %i.kt, align 8, !alias.scope !109834, !noalias !109835, !noundef !67 ; 2 uses
  %i.mu = load ptr, ptr %i.s, align 8, !alias.scope !109834, !noalias !109835, !nonnull !67, !noundef !67 ; 2 uses
  %i.mv = insertelement <16 x i8> poison, i8 %i.ms, i64 0
  %i.mw = shufflevector <16 x i8> %i.mv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.sroa.011.0.i.i.i152.i.i = phi i64 [ 0, %bb.bs ], [ %i.nn, %bb.bv ]
  %.pn.i.i153.i.i = phi i64 [ %i.mq, %bb.bs ], [ %i.no, %bb.bv ]
  %.sroa.01.0.i.i.i154.i.i = and i64 %.pn.i.i153.i.i, %i.mt ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %.sroa.01.0.i.i.i154.i.i
  %.sroa.0.0.copyload.i24.i.i155.i.i = load <16 x i8>, ptr %i.mx, align 1, !noalias !109836 ; 2 uses
  %i.my = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i155.i.i, %i.mw
  %i.mz = bitcast <16 x i1> %i.my to i16          ; 2 uses
  %.not.i.not30.i.i156.i.i = icmp eq i16 %i.mz, 0
  br i1 %.not.i.not30.i.i156.i.i, label %._crit_edge.i.i161.i.i, label %.lr.ph.i.i157.i.i

.lr.ph.i.i157.i.i:                                ; preds = %bb.bt, %bb.bu
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity32___pyfunction_digraph_core_number:bb.a

bb.bb:                                            ; preds = %bb.ae
  %i.hq = icmp eq i8 %i.el, 1
  br i1 %i.hq, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i85.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i, %middle.block1521, %bb.bb
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef %.idx.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !112361
  br label %bb.bd

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i85.i.i.i.i: ; preds = %bb.bb
  %i.hr = lshr i64 %i.cn, 1                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112425)
  call void @llvm.experimental.noalias.scope.decl(metadata !112426)
  %n.vec1509 = and i64 %i.hr, 1016                ; 3 uses
  br label %vector.body1510

vector.body1510:                                  ; preds = %vector.body1510, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i85.i.i.i.i
  %index1511 = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i85.i.i.i.i ], [ %index.next1520, %vector.body1510 ] ; 3 uses
  %i.hs = xor i64 %index1511, -1
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index1511 ; 3 uses
  %i.hu = getelementptr [4 x i8], ptr %i.co, i64 %i.hs ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %wide.load1512 = load <4 x i32>, ptr %i.ht, align 4, !alias.scope !112427, !noalias !112428
  %wide.load1513 = load <4 x i32>, ptr %i.hv, align 4, !alias.scope !112427, !noalias !112428
  %i.hw = getelementptr i8, ptr %i.hu, i64 -12    ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hu, i64 -28    ; 2 uses
  %wide.load1514 = load <4 x i32>, ptr %i.hw, align 4, !alias.scope !112429, !noalias !112430
  %wide.load1515 = load <4 x i32>, ptr %i.hx, align 4, !alias.scope !112429, !noalias !112430
  %reverse1516 = shufflevector <4 x i32> %wide.load1514, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1517 = shufflevector <4 x i32> %wide.load1515, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse1516, ptr %i.ht, align 4, !alias.scope !112427, !noalias !112428
  store <4 x i32> %reverse1517, ptr %i.hv, align 4, !alias.scope !112427, !noalias !112428
  %reverse1518 = shufflevector <4 x i32> %wide.load1512, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1519 = shufflevector <4 x i32> %wide.load1513, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse1518, ptr %i.hw, align 4, !alias.scope !112429, !noalias !112430
  store <4 x i32> %reverse1519, ptr %i.hx, align 4, !alias.scope !112429, !noalias !112430
  %index.next1520 = add nuw i64 %index1511, 8     ; 2 uses
  %i.hy = icmp eq i64 %index.next1520, %n.vec1509
  br i1 %i.hy, label %middle.block1521, label %vector.body1510, !llvm.loop !112044

middle.block1521:                                 ; preds = %vector.body1510
  %cmp.n1522 = icmp eq i64 %i.hr, %n.vec1509
  br i1 %cmp.n1522, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i: ; preds = %middle.block1521, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i
  %.sroa.0.016.i87.i.i.i.i = phi i64 [ %i.ie, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i ], [ %n.vec1509, %middle.block1521 ] ; 3 uses
  %i.hz = xor i64 %.sroa.0.016.i87.i.i.i.i, -1
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.sroa.0.016.i87.i.i.i.i ; 2 uses
  %i.ib = getelementptr [4 x i8], ptr %i.co, i64 %i.hz ; 2 uses
  %i.ic = load i32, ptr %i.ia, align 4, !alias.scope !112427, !noalias !112428, !noundef !67
  %i.id = load i32, ptr %i.ib, align 4, !alias.scope !112429, !noalias !112430
  store i32 %i.id, ptr %i.ia, align 4, !alias.scope !112427, !noalias !112428
  store i32 %i.ic, ptr %i.ib, align 4, !alias.scope !112429, !noalias !112430
  %i.ie = add nuw nsw i64 %.sroa.0.016.i87.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i88.i.i.i.i = icmp eq i64 %i.ie, %i.hr
  br i1 %exitcond.not.i88.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i86.i.i.i.i, !llvm.loop !112045

bb.bc:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5m_5types3any5PyAnyEB5h_EE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.cl, i64 noundef range(i64 0, 2305843009213693952) %i.cn, i64 noundef 1, ptr nonnull align 8 %i.k) #62
          to label %bb.bd unwind label %.loopexit.split-lp508.i.i, !noalias !112361

bb.bd:                                            ; preds = %bb.bc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit83.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i80.i.i.i.i, %bb.ac, %.thread1336.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !112389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !112361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !112361
  %i.if = add i64 %.val.i.i.i, -1                 ; 3 uses
  %i.ig = icmp ult i64 %i.if, %i.cn
  br i1 %i.ig, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.if
  %.val91.i.i = load i32, ptr %i.ih, align 4, !noalias !112361 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112431)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !112431, !noalias !112361, !noundef !67
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %select.unfold.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val.i130.i.i = load i64, ptr %i.bo, align 8, !alias.scope !112432, !noalias !112433, !noundef !67
  %i.il = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !112434, !noundef !67
  %i.im = zext i32 %.val91.i.i to i64
  %i.in = xor i64 %.val.i130.i.i, %i.im
  %i.io = zext i64 %i.in to i128
  %i.ip = zext i64 %i.il to i128
  %i.iq = mul nuw i128 %i.ip, %i.io               ; 2 uses
  %i.ir = lshr i128 %i.iq, 64
  %i.is = xor i128 %i.ir, %i.iq
  %i.it = trunc i128 %i.is to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112435)
  call void @llvm.experimental.noalias.scope.decl(metadata !112436)
  %i.iu = lshr i64 %i.it, 57
  %i.iv = trunc nuw nsw i64 %i.iu to i8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !112437, !noalias !112438, !noundef !67 ; 2 uses
  %i.iy = load ptr, ptr %i.t, align 8, !alias.scope !112437, !noalias !112438, !nonnull !67, !noundef !67 ; 2 uses
  %i.iz = insertelement <16 x i8> poison, i8 %i.iv, i64 0
  %i.ja = shufflevector <16 x i8> %i.iz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.bf ], [ %i.jr, %bb.bi ]
  %.pn.i.i131.i.i = phi i64 [ %i.it, %bb.bf ], [ %i.js, %bb.bi ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i131.i.i, %i.ix ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.jb, align 1, !noalias !112439 ; 2 uses
  %i.jc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.ja
  %i.jd = bitcast <16 x i1> %i.jc to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.jd, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i132.i.i

.lr.ph.i.i132.i.i:                                ; preds = %bb.bg, %bb.bh
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.jq, %bb.bh ], [ %i.jd, %bb.bg ] ; 3 uses
  %i.je = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.jf = zext nneg i16 %i.je to i64
  %i.jg = add i64 %.sroa.01.0.i.i.i.i.i, %i.jf
  %i.jh = and i64 %i.jg, %i.ix
  %i.ji = sub nsw i64 0, %i.jh
  %i.jj = getelementptr inbounds [16 x i8], ptr %i.iy, i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -16
  %.val2.i.i.i133.i.i = load i32, ptr %i.jk, align 4, !noalias !112440, !noundef !67
  %i.jl = icmp eq i32 %.val91.i.i, %.val2.i.i.i133.i.i
  br i1 %i.jl, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bh, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.bh, %bb.bg
  %i.jm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.jn = bitcast <16 x i1> %i.jm to i16
  %i.jo = icmp eq i16 %i.jn, 0
  br i1 %i.jo, label %bb.bi, label %select.unfold.i.i, !prof !71

bb.bh:                                            ; preds = %.lr.ph.i.i132.i.i
  %i.jp = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.jq = and i16 %i.jp, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.jq, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i132.i.i

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jr = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.js = add i64 %.sroa.01.0.i.i.i.i.i, %i.jr
  br label %bb.bg

bb.bj:                                            ; preds = %bb.bd
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.if, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @760) #61
          to label %bb.bk unwind label %.loopexit.split-lp508.i.i, !noalias !112361

bb.bk:                                            ; preds = %select.unfold450.i.i, %select.unfold.i.i, %bb.bj
  unreachable

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i132.i.i
  %i.jt = getelementptr inbounds i8, ptr %i.jj, i64 -8
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !112361, !noundef !67
  %i.jv = add i64 %i.ju, 1                        ; 4 uses
  %i.jw = shl i64 %i.jv, 3                        ; 5 uses
  %i.jx = icmp ugt i64 %i.jv, 2305843009213693951
  %.not.i134.i.i = icmp ugt i64 %i.jw, 9223372036854775800
  %or.cond.i135.i.i = or i1 %i.jx, %.not.i134.i.i
  br i1 %or.cond.i135.i.i, label %.invoke.i.i, label %bb.bl, !prof !73

bb.bl:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.jy = icmp eq i64 %i.jw, 0
  br i1 %i.jy, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422.i.i, label %bb.bm

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422.i.i: ; preds = %bb.bl
  %i.jz = icmp eq i64 %i.jv, 0
  call void @llvm.assume(i1 %i.jz)
  store i64 0, ptr %i.n, align 8, !noalias !112361
  %i.ka = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ka, align 8, !noalias !112361
  %i.kb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.kb, align 8, !noalias !112361
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsLUcHuY3yQf_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #62
          to label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422._crit_edge.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !112361

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422._crit_edge.i.i: ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422.i.i
  %.pre.i.i = load ptr, ptr %i.ka, align 8, !alias.scope !112441, !noalias !112361
  br label %.lr.ph888.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !112442
  %i.kc = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.jw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112442 ; 3 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %.invoke.i.i, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %bb.be
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @761) #61
          to label %bb.bk unwind label %.loopexit.split-lp508.i.i, !noalias !112361

.invoke.i.i:                                      ; preds = %bb.bm, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ab
  %i.ke = phi i64 [ 4, %bb.ab ], [ 8, %bb.bm ], [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.kf = phi i64 [ %.idx.i.i, %bb.ab ], [ %i.jw, %bb.bm ], [ %i.jw, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.ke, i64 %i.kf) #61
          to label %.cont.i.i unwind label %.loopexit.split-lp508.i.i, !noalias !112361

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bm
  store i64 %i.jv, ptr %i.n, align 8, !noalias !112361
  %i.kg = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.kc, ptr %i.kg, align 8, !noalias !112361
  %i.kh = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.kh, align 8, !noalias !112361
  br label %.lr.ph888.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i: ; preds = %bb.cb, %bb.ca, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit499.i.i
  %i.ki = phi ptr [ %i.kn, %bb.cb ], [ %i.kn, %bb.ca ], [ %i.kn, %.loopexit499.i.i ], [ %i.kn, %.loopexit.split-lp.loopexit.i.i ], [ %i.kn, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.ph.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.pn.i.i = phi { ptr, i32 } [ %i.om, %bb.cb ], [ %i.om, %bb.ca ], [ %lpad.loopexit.i.i, %.loopexit499.i.i ], [ %lpad.loopexit501.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit504.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112443)
  %.val.i137.i.i = load i64, ptr %i.n, align 8, !alias.scope !112443, !noalias !112361 ; 2 uses
  %i.kj = icmp eq i64 %.val.i137.i.i, 0
  br i1 %i.kj, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i138.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i138.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i
  %.val1.i139.i.i = load ptr, ptr %i.ki, align 8, !alias.scope !112443, !noalias !112361, !nonnull !67, !noundef !67
  %i.kk = shl nuw i64 %.val.i137.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i139.i.i, i64 noundef %i.kk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112444
  br label %.body.i.i

.loopexit499.i.i:                                 ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.ee
  %lpad.loopexit501.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.bn
  %lpad.loopexit504.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %select.unfold432.invoke.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422.i.i
  %.ph.ph.ph.i.i = phi ptr [ %i.kn, %select.unfold432.invoke.i.i ], [ %i.ka, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422.i.i ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit168.i.i

.lr.ph888.i.i:                                    ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422._crit_edge.i.i
  %i.kl = phi ptr [ %i.kc, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.pre.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422._crit_edge.i.i ]
  %i.km = phi ptr [ %i.kh, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.kb, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422._crit_edge.i.i ] ; 5 uses
  %i.kn = phi ptr [ %i.kg, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.ka, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread422._crit_edge.i.i ] ; 10 uses
  store i64 0, ptr %i.kl, align 8, !noalias !112361
  store i64 1, ptr %i.km, align 8, !alias.scope !112441, !noalias !112361
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit500.i.i, %.lr.ph888.i.i
  %.sroa.01.0886.i.i = phi i64 [ 0, %.lr.ph888.i.i ], [ %.sroa.01.1.i.i, %.loopexit500.i.i ] ; 3 uses
  %.sroa.0366.0885.i.i = phi ptr [ %i.cl, %.lr.ph888.i.i ], [ %i.ko, %.loopexit500.i.i ] ; 3 uses
  %.sroa.7368.0884.i.i = phi i64 [ 0, %.lr.ph888.i.i ], [ %i.kp, %.loopexit500.i.i ] ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0366.0885.i.i, i64 4 ; 2 uses
  %i.kp = add nuw nsw i64 %.sroa.7368.0884.i.i, 1
  %i.kq = load i32, ptr %.sroa.0366.0885.i.i, align 4, !noalias !112361, !noundef !67
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r, i32 noundef %i.kq, i64 noundef %.sroa.7368.0884.i.i)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

._crit_edge889.i.i:                               ; preds = %.loopexit500.i.i
  %.val.i204.pre.i.i = load i64, ptr %i.cj, align 8, !noalias !112361 ; 2 uses
  %i.kr = icmp ult i64 %i.cn, 2305843009213693952
  call void @llvm.assume(i1 %i.kr)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 8 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.la = load i64, ptr %i.kz, align 8, !noalias !112361
  %i.lb = icmp eq i64 %i.la, 0
  %i.lc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !noalias !112361 ; 9 uses
  %i.le = load ptr, ptr %i.r, align 8, !noalias !112361 ; 8 uses
  br label %bb.br

bb.bo:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !112360
  call void @llvm.experimental.noalias.scope.decl(metadata !112445)
  %.val.i141.i.i = load i64, ptr %i.n, align 8, !alias.scope !112445, !noalias !112361 ; 2 uses
  %i.lf = icmp eq i64 %.val.i141.i.i, 0
  br i1 %i.lf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i.i: ; preds = %bb.bo
  %.val1.i143.i.i = load ptr, ptr %i.kn, align 8, !alias.scope !112445, !noalias !112361, !nonnull !67, !noundef !67
  %i.lg = shl nuw i64 %.val.i141.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i143.i.i, i64 noundef %i.lg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112446
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !112361
  %i.lh = icmp eq i64 %i.ld, 0
  br i1 %i.lh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i145.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i145.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i
  %i.li = shl i64 %i.ld, 4                        ; 2 uses
  %i.lj = add i64 %i.li, 16                       ; 2 uses
  %i.lk = add i64 %i.ld, 17
  %i.ll = add i64 %i.lk, %i.lj                    ; 4 uses
  %i.lm = icmp uge i64 %i.ll, %i.lj
  %i.ln = icmp ult i64 %i.ll, 9223372036854775793
  call void @llvm.assume(i1 %i.lm)
  call void @llvm.assume(i1 %i.ln)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.le) ]
  %i.lo = icmp eq i64 %i.ll, 0
  br i1 %i.lo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i145.i.i
  %i.lp = sub nuw nsw i64 -16, %i.li
  %i.lq = getelementptr inbounds i8, ptr %i.le, i64 %i.lp
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !112361
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i: ; preds = %bb.bp, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i145.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit144.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !112361
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBG_3set7HashSetB1g_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s), !noalias !112361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !112361
  %.val77.i.i = load ptr, ptr %i.t, align 8, !noalias !112361 ; 2 uses
  %.val78.i.i = load i64, ptr %i.iw, align 8, !noalias !112361, !noundef !67 ; 3 uses
  %i.lr = icmp eq i64 %.val78.i.i, 0
  br i1 %i.lr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i147.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i147.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i
  %i.ls = shl i64 %.val78.i.i, 4                  ; 2 uses
  %i.lt = add i64 %i.ls, 16                       ; 2 uses
  %i.lu = add i64 %.val78.i.i, 17
  %i.lv = add i64 %i.lu, %i.lt                    ; 4 uses
  %i.lw = icmp uge i64 %i.lv, %i.lt
  %i.lx = icmp ult i64 %i.lv, 9223372036854775793
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.assume(i1 %i.lx)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77.i.i) ]
  %i.ly = icmp eq i64 %i.lv, 0
  br i1 %i.ly, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i147.i.i
  %i.lz = sub nuw nsw i64 -16, %i.ls
  %i.ma = getelementptr inbounds i8, ptr %.val77.i.i, i64 %i.lz
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ma, i64 noundef %i.lv, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !112361
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i: ; preds = %bb.bq, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i147.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit146.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !112361
  %.val.i.i = load i64, ptr %i.v, align 8, !noalias !112361 ; 2 uses
  %i.mb = icmp eq i64 %.val.i.i, 0
  br i1 %i.mb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i
  %i.mc = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !112361
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx.exit148.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !112361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !112361
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_EECskcxRuJ53GpR_9rustworkx.exit.i

bb.br:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %._crit_edge889.i.i
  %.sroa.025.0897.i.i = phi i64 [ 0, %._crit_edge889.i.i ], [ %i.md, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.md = add nuw nsw i64 %.sroa.025.0897.i.i, 1  ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.sroa.025.0897.i.i
  %i.mf = load i32, ptr %i.me, align 4, !noalias !112361, !noundef !67 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112447)
  %i.mg = load i64, ptr %i.ks, align 8, !alias.scope !112447, !noalias !112361, !noundef !67
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %select.unfold432.invoke.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.val.i151.i.i = load i64, ptr %i.ce, align 8, !alias.scope !112448, !noalias !112449, !noundef !67
  %i.mi = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !112450, !noundef !67
  %i.mj = zext i32 %i.mf to i64                   ; 3 uses
  %i.mk = xor i64 %.val.i151.i.i, %i.mj
  %i.ml = zext i64 %i.mk to i128
  %i.mm = zext i64 %i.mi to i128
  %i.mn = mul nuw i128 %i.mm, %i.ml               ; 2 uses
  %i.mo = lshr i128 %i.mn, 64
  %i.mp = xor i128 %i.mo, %i.mn
  %i.mq = trunc i128 %i.mp to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112451)
  call void @llvm.experimental.noalias.scope.decl(metadata !112452)
  %i.mr = lshr i64 %i.mq, 57
  %i.ms = trunc nuw nsw i64 %i.mr to i8
  %i.mt = load i64, ptr %i.kt, align 8, !alias.scope !112453, !noalias !112454, !noundef !67 ; 2 uses
  %i.mu = load ptr, ptr %i.s, align 8, !alias.scope !112453, !noalias !112454, !nonnull !67, !noundef !67 ; 2 uses
  %i.mv = insertelement <16 x i8> poison, i8 %i.ms, i64 0
  %i.mw = shufflevector <16 x i8> %i.mv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.sroa.011.0.i.i.i152.i.i = phi i64 [ 0, %bb.bs ], [ %i.nn, %bb.bv ]
  %.pn.i.i153.i.i = phi i64 [ %i.mq, %bb.bs ], [ %i.no, %bb.bv ]
  %.sroa.01.0.i.i.i154.i.i = and i64 %.pn.i.i153.i.i, %i.mt ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %.sroa.01.0.i.i.i154.i.i
  %.sroa.0.0.copyload.i24.i.i155.i.i = load <16 x i8>, ptr %i.mx, align 1, !noalias !112455 ; 2 uses
  %i.my = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i155.i.i, %i.mw
  %i.mz = bitcast <16 x i1> %i.my to i16          ; 2 uses
  %.not.i.not30.i.i156.i.i = icmp eq i16 %i.mz, 0
  br i1 %.not.i.not30.i.i156.i.i, label %._crit_edge.i.i161.i.i, label %.lr.ph.i.i157.i.i

.lr.ph.i.i157.i.i:                                ; preds = %bb.bt, %bb.bu
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx8matching32___pyfunction_is_maximal_matching:bb.a
._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ah, %bb.ag
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, !prof !71

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = add i16 %.sroa.05.029.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hq = and i16 %i.hp, %.sroa.05.029.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.hs = bitcast <16 x i1> %i.hr to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, label %.thread24.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

.thread24.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ai
  %i.ht = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hs, i1 true)
  %i.hu = zext nneg i16 %i.ht to i64
  %i.hv = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.hu
  %i.hw = and i64 %i.hv, %.val5.i.i.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.thread24.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hw, %.thread24.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hy = bitcast <16 x i1> %i.hx to i16
  %i.hz = icmp eq i16 %i.hy, 0
  br i1 %i.hz, label %bb.aj, label %bb.ak, !prof !71

bb.aj:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai
  %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ai ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ai ]
  %i.ia = add i64 %i.hd, 16                       ; 2 uses
  %i.ib = add i64 %i.ia, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.ag

bb.ak:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i
  %i.id = load i8, ptr %i.ic, align 1, !noalias !149845, !noundef !67 ; 2 uses
  %i.ie = icmp sgt i8 %i.id, -1
  br i1 %i.ie, label %bb.al, label %bb.am, !prof !71

bb.al:                                            ; preds = %bb.ak
  %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, align 16, !noalias !149845
  %i.if = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ig = bitcast <16 x i1> %i.if to i16          ; 2 uses
  %.not.i22.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.ig, 0
  %i.ih = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ig, i1 true)
  %i.ii = zext nneg i16 %i.ih to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !149839
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.ii
  %.pre.i2.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !149846
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ij = phi i8 [ %.pre.i2.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.id, %bb.ak ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %bb.al ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149847), !noalias !149839
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.il = and i8 %i.ij, 1
  %i.im = zext nneg i8 %i.il to i64
  %i.in = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.io = and i64 %i.in, %.val5.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.ha, ptr %i.ik, align 1, !noalias !149846
  %i.ip = getelementptr i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  store i8 %i.ha, ptr %i.iq, align 1, !noalias !149846
  %i.ir = load <2 x i64>, ptr %i.fr, align 8, !alias.scope !149848, !noalias !149849
  %i.is = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.im, i64 0
  %i.it = sub <2 x i64> %i.ir, %i.is
  store <2 x i64> %i.it, ptr %i.fr, align 8, !alias.scope !149848, !noalias !149849
  %i.iu = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.iv = getelementptr inbounds [16 x i8], ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -16
  store i64 %spec.select1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.iw, align 8, !noalias !149850
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.iv, i64 -8
  store i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !149850
  br label %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapAjj2_uE6insertCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapAjj2_uE6insertCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am
  %i.ix = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %i.iy = phi ptr [ %i.jc, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2227.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.iz = phi ptr [ %i.jb, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2125.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.val814.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.iy, align 16, !noalias !149833
  %i.ja = icmp sgt <16 x i8> %.val814.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jb = getelementptr inbounds i8, ptr %i.iz, i64 -256 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ja to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i30.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i30.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.ax, %bb.aw
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i

.body43.i:                                        ; preds = %bb.az, %bb.an
  %eh.lpad-body44.i = phi { ptr, i32 } [ %i.jd, %bb.an ], [ %i.ny, %bb.az ] ; 3 uses
  %i.je = icmp eq i64 %.sroa.6.0.copyload123.i, 0
  br i1 %i.je, label %.body33.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %.body43.i
  %i.jf = shl i64 %.sroa.6.0.copyload123.i, 4     ; 2 uses
  %i.jg = add i64 %i.jf, 16                       ; 2 uses
  %i.jh = add i64 %.sroa.6.0.copyload123.i, 17
  %i.ji = add i64 %i.jh, %i.jg                    ; 4 uses
  %i.jj = icmp uge i64 %i.ji, %i.jg
  %i.jk = icmp ult i64 %i.ji, 9223372036854775793
  call void @llvm.assume(i1 %i.jj), !noalias !149805
  call void @llvm.assume(i1 %i.jk), !noalias !149805
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload121.i) ], !noalias !149805
  %i.jl = icmp eq i64 %i.ji, 0
  br i1 %i.jl, label %.body33.i, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.jm = sub nuw nsw i64 -16, %i.jf
  %i.jn = getelementptr inbounds i8, ptr %.sroa.0.0.copyload121.i, i64 %i.jm
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jn, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !149805
  br label %.body33.i

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload121.i = load ptr, ptr %i.b, align 8, !noalias !149851 ; 7 uses
  %.sroa.6.0.copyload123.i = load i64, ptr %i.ft, align 8, !noalias !149851 ; 8 uses
  %.sroa.9126.0.copyload.i = load i64, ptr %i.fq, align 8, !noalias !149851
  %.sroa.10.0.copyload128.i = load i64, ptr %.sroa.4.0..sroa_idx.i26.i, align 8, !noalias !149851 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149831
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %.val24.i35.i = load <16 x i8>, ptr %.sroa.0.0.copyload.i, align 16, !noalias !149852
  %i.jo = icmp sgt <16 x i8> %.val24.i35.i, splat (i8 -1)
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.jq = bitcast <16 x i1> %i.jo to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.jt = icmp eq i64 %.sroa.9126.0.copyload.i, 0
  %i.ju = call i64 @llvm.fshl.i64(i64 %.sroa.10.0.copyload128.i, i64 %.sroa.10.0.copyload128.i, i64 48)
  %.val.i.i.i.i.i = load i64, ptr %i.jr, align 8, !alias.scope !149804, !noalias !149803
  %i.jv = icmp eq i64 %i.fg, 0                    ; 2 uses
  %i.jw = add i64 %i.fg, 1                        ; 2 uses
  %i.jx = icmp ugt i64 %i.jw, 1152921504606846975
  %i.jy = shl nuw i64 %i.jw, 4                    ; 3 uses
  %i.jz = add i64 %i.fg, 17                       ; 3 uses
  %i.ka = add i64 %i.jy, %i.jz                    ; 5 uses
  %i.kb = icmp ult i64 %i.ka, %i.jy
  %i.kc = icmp ugt i64 %i.ka, 9223372036854775792
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.kb, %i.kc
  %i.kd = icmp eq i64 %i.ka, 0
  %i.ke = ptrtoint ptr %i.fe to i64
  %i.kf = load i64, ptr %i.js, align 8, !alias.scope !149804, !noalias !149803 ; 2 uses
  %brmerge.i = select i1 %i.jx, i1 true, i1 %or.cond.i.i.i.i.i.i.i.i, !prof !149853
  br label %bb.aq

bb.aq:                                            ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i, %bb.ap
  %.lcssa1948.i.i = phi ptr [ %.lcssa1944.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ], [ %i.jp, %bb.ap ] ; 4 uses
  %.lcssa2541.i.i = phi i16 [ %.lcssa2542.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ], [ %i.jq, %bb.ap ] ; 3 uses
  %.lcssa2038.i.i = phi ptr [ %.lcssa2034.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ], [ %.sroa.0.0.copyload.i, %bb.ap ] ; 4 uses
  %.lcssa2831.i.i = phi i64 [ %.lcssa2832.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ], [ %.sroa.960.0.copyload.i, %bb.ap ] ; 3 uses
  %.not.i39.i = icmp eq i64 %.lcssa2831.i.i, 0    ; 3 uses
  br i1 %.not.i39.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq
  %i.kg = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !149854
  %i.kh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !noalias !149854
  %i.ki = zext i64 %i.kg to i128
  br i1 %i.jt, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %.not10.i.us.i.i.i = icmp eq i16 %.lcssa2541.i.i, 0
  br i1 %.not10.i.us.i.i.i, label %.lr.ph.i.us.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %i.kj = phi ptr [ %i.kn, %.lr.ph.i.us.i.i.i ], [ %.lcssa1948.i.i, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.kk = phi ptr [ %i.km, %.lr.ph.i.us.i.i.i ], [ %.lcssa2038.i.i, %.lr.ph.split.us.i.i.i ]
  %.val68.i.us.i.i.i = load <16 x i8>, ptr %i.kj, align 16, !noalias !149855
  %i.kl = icmp sgt <16 x i8> %.val68.i.us.i.i.i, splat (i8 -1)
  %i.km = getelementptr inbounds i8, ptr %i.kk, i64 -256 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %.cast.i.us.i.i.i = bitcast <16 x i1> %i.kl to i16 ; 2 uses
  %.not.i.us.i.i.i = icmp eq i16 %.cast.i.us.i.i.i, 0
  br i1 %.not.i.us.i.i.i, label %.lr.ph.i.us.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i

_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i: ; preds = %.lr.ph.i.us.i.i.i, %.lr.ph.split.us.i.i.i
  %.lcssa1947.i.i = phi ptr [ %.lcssa1948.i.i, %.lr.ph.split.us.i.i.i ], [ %i.kn, %.lr.ph.i.us.i.i.i ]
  %.lcssa2037.i.i = phi ptr [ %.lcssa2038.i.i, %.lr.ph.split.us.i.i.i ], [ %i.km, %.lr.ph.i.us.i.i.i ] ; 2 uses
  %.lcssa.i.us.i.i.i = phi i16 [ %.lcssa2541.i.i, %.lr.ph.split.us.i.i.i ], [ %.cast.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %i.ko = add i16 %.lcssa.i.us.i.i.i, -1
  %i.kp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.us.i.i.i, i1 true)
  %i.kq = zext nneg i16 %i.kp to i64
  %i.kr = and i16 %i.ko, %.lcssa.i.us.i.i.i
  %i.ks = sub nsw i64 0, %i.kq
  %i.kt = getelementptr inbounds [16 x i8], ptr %.lcssa2037.i.i, i64 %i.ks ; 2 uses
  %i.ku = add i64 %.lcssa2831.i.i, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !149856)
  %.sroa.0.0.i.ph.i.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.kt, i64 -16
  %.val6.i.pre.i = load i64, ptr %.sroa.0.0.i.ph.i.phi.trans.insert.i, align 8, !noalias !149857
  %.phi.trans.insert.i = getelementptr i8, ptr %i.kt, i64 -8
  %.val7.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !149857
  br label %.loopexit.i40.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload121.i) ]
  br label %bb.ar

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.kv = icmp eq i64 %i.lj, 0
  br i1 %i.kv, label %.loopexit.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i, %.lr.ph.split.i.i.i
  %.lcssa1946.i.i = phi ptr [ %.lcssa1948.i.i, %.lr.ph.split.i.i.i ], [ %.lcssa1945.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ]
  %.lcssa2036.i.i = phi ptr [ %.lcssa2038.i.i, %.lr.ph.split.i.i.i ], [ %.lcssa2035.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ]
  %.lcssa21.i.i.i = phi ptr [ %.lcssa1948.i.i, %.lr.ph.split.i.i.i ], [ %.lcssa20.i.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ] ; 2 uses
  %i.kw = phi i16 [ %.lcssa2541.i.i, %.lr.ph.split.i.i.i ], [ %i.lg, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ] ; 2 uses
  %i.kx = phi i64 [ %.lcssa2831.i.i, %.lr.ph.split.i.i.i ], [ %i.lj, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ]
  %.lcssa111516.i.i.i = phi ptr [ %.lcssa2038.i.i, %.lr.ph.split.i.i.i ], [ %.lcssa1114.i.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %i.kw, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ar, %.lr.ph.i.i.i.i
  %i.ky = phi ptr [ %i.lc, %.lr.ph.i.i.i.i ], [ %.lcssa21.i.i.i, %bb.ar ] ; 2 uses
  %i.kz = phi ptr [ %i.lb, %.lr.ph.i.i.i.i ], [ %.lcssa111516.i.i.i, %bb.ar ]
  %.val68.i.i.i.i = load <16 x i8>, ptr %i.ky, align 16, !noalias !149855
  %i.la = icmp sgt <16 x i8> %.val68.i.i.i.i, splat (i8 -1)
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 -256 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 3 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.la to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ar
  %.lcssa1945.i.i = phi ptr [ %.lcssa1946.i.i, %bb.ar ], [ %i.lc, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa2035.i.i = phi ptr [ %.lcssa2036.i.i, %bb.ar ], [ %i.lb, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa20.i.i.i = phi ptr [ %.lcssa21.i.i.i, %bb.ar ], [ %i.lc, %.lr.ph.i.i.i.i ]
  %.lcssa1114.i.i.i = phi ptr [ %.lcssa111516.i.i.i, %bb.ar ], [ %i.lb, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.kw, %bb.ar ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ld = add i16 %.lcssa.i.i.i.i, -1
  %i.le = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = and i16 %i.ld, %.lcssa.i.i.i.i          ; 2 uses
  %i.lh = sub nsw i64 0, %i.lf
  %i.li = getelementptr inbounds [16 x i8], ptr %.lcssa1114.i.i.i, i64 %i.lh ; 2 uses
  %i.lj = add i64 %i.kx, -1                       ; 3 uses
  %i.lk = getelementptr inbounds i8, ptr %i.li, i64 -16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149856)
  %.val4.i.i.i.i = load i64, ptr %i.lk, align 1, !alias.scope !149856, !noalias !149858
  %i.ll = getelementptr inbounds i8, ptr %i.li, i64 -8
  %.val5.i.i.i.i = load i64, ptr %i.ll, align 1, !alias.scope !149856, !noalias !149858
  %i.lm = xor i64 %.val4.i.i.i.i, %i.ju
  %i.ln = xor i64 %.val5.i.i.i.i, %i.kh
  %i.lo = zext i64 %i.lm to i128
  %i.lp = zext i64 %i.ln to i128
  %i.lq = mul nuw i128 %i.lp, %i.lo               ; 2 uses
  %i.lr = lshr i128 %i.lq, 64
  %i.ls = xor i128 %i.lr, %i.lq
  %i.lt = trunc i128 %i.ls to i64
  %i.lu = xor i64 %i.lt, 2
  %i.lv = zext i64 %i.lu to i128
  %i.lw = mul nuw i128 %i.lv, %i.ki               ; 2 uses
  %i.lx = lshr i128 %i.lw, 64
  %i.ly = xor i128 %i.lx, %i.lw
  %i.lz = trunc i128 %i.ly to i64                 ; 2 uses
  %i.ma = lshr i64 %i.lz, 57
  %i.mb = trunc nuw nsw i64 %i.ma to i8
  %i.mc = insertelement <16 x i8> poison, i8 %i.mb, i64 0
  %i.md = shufflevector <16 x i8> %i.mc, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i.i = load i128, ptr %i.lk, align 8, !alias.scope !149856, !noalias !149858 ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.mu, %bb.au ]
  %.pn.i.i.i.i.i = phi i64 [ %i.lz, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.mv, %bb.au ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.sroa.6.0.copyload123.i ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload121.i, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.me, align 1, !noalias !149859 ; 2 uses
  %i.mf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.md
  %i.mg = bitcast <16 x i1> %i.mf to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.mg, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.as, %bb.at
  %.sroa.05.0.i31.i.i.i.i.i = phi i16 [ %i.mt, %bb.at ], [ %i.mg, %bb.as ] ; 3 uses
  %i.mh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i, i1 true)
  %i.mi = zext nneg i16 %i.mh to i64
  %i.mj = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.mi
  %i.mk = and i64 %i.mj, %.sroa.6.0.copyload123.i
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds [16 x i8], ptr %.sroa.0.0.copyload121.i, i64 %i.ml
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 -16
  %.val2.i.i.i.i.i.i = load i128, ptr %i.mn, align 8, !noalias !149860
  %i.mo = icmp eq i128 %.val.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.mo, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i, label %bb.at, !prof !77

._crit_edge.i.i.i.i.i:                            ; preds = %bb.at, %bb.as
  %i.mp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.mq = bitcast <16 x i1> %i.mp to i16
  %i.mr = icmp eq i16 %i.mq, 0
  br i1 %i.mr, label %bb.au, label %.loopexit.i40.loopexit.i, !prof !71

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ms = add i16 %.sroa.05.0.i31.i.i.i.i.i, -1
  %i.mt = and i16 %i.ms, %.sroa.05.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.mt, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mu = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.mv = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.mu
  br label %bb.as

.loopexit.i40.loopexit.i:                         ; preds = %._crit_edge.i.i.i.i.i
  %i.mw = trunc i128 %.val.i.i.i.i.i.i.i to i64
  %5 = lshr i128 %.val.i.i.i.i.i.i.i, 64
  %6 = trunc nuw i128 %5 to i64
  br label %.loopexit.i40.i

.loopexit.i40.i:                                  ; preds = %.loopexit.i40.loopexit.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i
  %.val7.i.i = phi i64 [ %.val7.i.pre.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %6, %.loopexit.i40.loopexit.i ]
  %.val6.i.i = phi i64 [ %.val6.i.pre.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.mw, %.loopexit.i40.loopexit.i ]
  %.lcssa1944.i.i = phi ptr [ %.lcssa1947.i.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %.lcssa1945.i.i, %.loopexit.i40.loopexit.i ]
  %.lcssa2542.i.i = phi i16 [ %i.kr, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.lg, %.loopexit.i40.loopexit.i ]
  %.lcssa2034.i.i = phi ptr [ %.lcssa2037.i.i, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %.lcssa2035.i.i, %.loopexit.i40.loopexit.i ]
  %.lcssa2832.i.i = phi i64 [ %i.ku, %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTAjj2_uEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.lj, %.loopexit.i40.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149857
  br i1 %i.jv, label %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.loopexit.i40.i
  br i1 %brmerge.i, label %bb.aw, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, !prof !149861

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.av
  br i1 %i.kd, label %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !149862
  %i.mx = call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ka, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !149862 ; 2 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.ax, label %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #60
          to label %.noexc41.i unwind label %bb.an, !noalias !149805

.noexc41.i:                                       ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.ka) #61
          to label %.noexc42.i unwind label %bb.an, !noalias !149805

.noexc42.i:                                       ; preds = %bb.ax
  unreachable

_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i = phi ptr [ %i.mx, %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i.i.i.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i, i64 %i.jy ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.mz, ptr nonnull align 16 %i.fe, i64 %i.jz, i1 false), !noalias !149863
  br i1 %.not.i.i, label %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val24.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fe, align 16, !noalias !149864
  %i.na = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nb = bitcast <16 x i1> %i.na to i16
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.14.018.i.i.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.nn, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.10.017.i.i.i.i.i.i.i = phi i16 [ %i.nb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.nk, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.012.015.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.012.1.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.10.017.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i.i.i
  %i.nc = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.ay ] ; 2 uses
  %i.nd = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i, %bb.ay ]
  %.val68.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nc, align 16, !noalias !149865
  %i.ne = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -256 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ne to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ay
  %.sroa.012.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.015.i.i.i.i.i.i.i, %bb.ay ], [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.ay ], [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.10.017.i.i.i.i.i.i.i, %bb.ay ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.nh = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ni = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.nj = zext nneg i16 %i.ni to i64
  %i.nk = and i16 %i.nh, %.lcssa.i.i.i.i.i.i.i.i
  %i.nl = sub nsw i64 0, %i.nj
  %i.nm = getelementptr inbounds [16 x i8], ptr %.sroa.012.1.i.i.i.i.i.i.i, i64 %i.nl ; 2 uses
  %i.nn = add i64 %.sroa.14.018.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %i.nm, i64 -16
  %i.np = ptrtoint ptr %i.nm to i64
  %i.nq = sub i64 %i.ke, %i.np
  %i.nr = ashr exact i64 %i.nq, 4
  %i.ns = sub nsw i64 0, %i.nr
  %i.nt = getelementptr inbounds [16 x i8], ptr %i.mz, i64 %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -16
  %i.nv = load <2 x i64>, ptr %i.no, align 8, !noalias !149863
  store <2 x i64> %i.nv, ptr %i.nu, align 16, !noalias !149863
  %i.nw = icmp eq i64 %i.nn, 0
  br i1 %i.nw, label %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.ay

_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.loopexit.i40.i
  %.sroa.7.0.i.i.i.i.i = phi i64 [ 0, %.loopexit.i40.i ], [ 0, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.fk, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ 0, %.loopexit.i40.i ], [ %i.kf, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.kf, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ @111, %.loopexit.i40.i ], [ %i.mz, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.mz, %.loopexit.i.i.i.i.i.i.i ]
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !noalias !149857
  store i64 %i.fg, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !149857
  store i64 %.sroa.6.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !149857
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !149857
  store i64 %.val.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !149857
  %i.nx = invoke fastcc noundef zeroext i1 @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapTjjEuE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, i64 noundef %.val6.i.i, i64 noundef %.val7.i.i)
          to label %bb.ba unwind label %bb.az, !noalias !149857 ; 0 uses

bb.az:                                            ; preds = %bb.ba, %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ny = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !149857
  %.val3.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !149857, !noundef !67
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEEECskcxRuJ53GpR_9rustworkx(ptr %.val2.i.i.i.i, i64 %.val3.i.i.i.i) #63, !noalias !149857
  br label %.body43.i

bb.ba:                                            ; preds = %_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapTjjEuENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.nz = invoke fastcc noundef zeroext i1 @_RNvNtCskcxRuJ53GpR_9rustworkx8matching18__inner_is_matching(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %bb.bb unwind label %bb.az, !noalias !149866

bb.bb:                                            ; preds = %bb.ba
  %.val.i.i9.i.i = load ptr, ptr %i.a, align 8, !noalias !149857 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !149857, !noundef !67 ; 3 uses
  %i.oa = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.oa, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.ob = shl i64 %.val1.i.i.i.i, 4               ; 2 uses
  %i.oc = add i64 %i.ob, 16                       ; 2 uses
  %i.od = add i64 %.val1.i.i.i.i, 17
  %i.oe = add i64 %i.od, %i.oc                    ; 4 uses
  %i.of = icmp uge i64 %i.oe, %i.oc
  %i.og = icmp ult i64 %i.oe, 9223372036854775793
  call void @llvm.assume(i1 %i.of)
  call void @llvm.assume(i1 %i.og)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i9.i.i) ]
  %i.oh = icmp eq i64 %i.oe, 0
  br i1 %i.oh, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i
  %i.oi = sub nuw nsw i64 -16, %i.ob
  %i.oj = getelementptr inbounds i8, ptr %.val.i.i9.i.i, i64 %i.oi
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oj, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !149857
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i: ; preds = %bb.bc, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149857
  br i1 %i.nz, label %.loopexit.i, label %bb.aq

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i, %bb.aq, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i
  %i.ok = phi i1 [ true, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapAjj2_uE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i ], [ %.not.i39.i, %bb.aq ], [ %.not.i39.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3all5checkRAjj2_NCNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matchings0_0E0B1n_.exit.i.i ] ; 2 uses
  %i.ol = icmp eq i64 %.sroa.6.0.copyload123.i, 0
  br i1 %i.ol, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i45.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i45.i: ; preds = %.loopexit.i
  %i.om = shl i64 %.sroa.6.0.copyload123.i, 4     ; 2 uses
  %i.on = add i64 %i.om, 16                       ; 2 uses
  %i.oo = add i64 %.sroa.6.0.copyload123.i, 17
  %i.op = add i64 %i.oo, %i.on                    ; 4 uses
  %i.oq = icmp uge i64 %i.op, %i.on
  %i.or = icmp ult i64 %i.op, 9223372036854775793
  call void @llvm.assume(i1 %i.oq)
  call void @llvm.assume(i1 %i.or)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload121.i) ]
  %i.os = icmp eq i64 %i.op, 0
  br i1 %i.os, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i45.i
  %i.ot = sub nuw nsw i64 -16, %i.om
  %i.ou = getelementptr inbounds i8, ptr %.sroa.0.0.copyload121.i, i64 %i.ot
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ou, i64 noundef %i.op, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !149805
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.bd, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i45.i, %.loopexit.i
  %i.ov = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %i.ov, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit47.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i46.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i46.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %i.ow = shl i64 %.sroa.6.0.copyload.i, 4        ; 2 uses
  %i.ox = add i64 %i.ow, 16                       ; 2 uses
  %i.oy = add i64 %.sroa.6.0.copyload.i, 17
  %i.oz = add i64 %i.oy, %i.ox                    ; 4 uses
  %i.pa = icmp uge i64 %i.oz, %i.ox
  %i.pb = icmp ult i64 %i.oz, 9223372036854775793
  call void @llvm.assume(i1 %i.pa)
  call void @llvm.assume(i1 %i.pb)
  %i.pc = icmp eq i64 %i.oz, 0
  br i1 %i.pc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit47.i, label %bb.be

bb.be:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i46.i
  %i.pd = sub nuw nsw i64 -16, %i.ow
  %i.pe = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.pd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pe, i64 noundef %i.oz, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !149805
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit47.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit47.i: ; preds = %bb.be, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i46.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %i.jv, label %_RNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matching.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i48.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i48.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit47.i
  %i.pf = shl i64 %i.fg, 4                        ; 2 uses
  %i.pg = add i64 %i.pf, 16                       ; 2 uses
  %i.ph = add i64 %i.pg, %i.jz                    ; 4 uses
  %i.pi = icmp uge i64 %i.ph, %i.pg
  %i.pj = icmp ult i64 %i.ph, 9223372036854775793
  call void @llvm.assume(i1 %i.pi)
  call void @llvm.assume(i1 %i.pj)
  %i.pk = icmp eq i64 %i.ph, 0
  br i1 %i.pk, label %_RNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matching.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i

_RNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matching.exit: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i48.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetAjj2_EECskcxRuJ53GpR_9rustworkx.exit47.i
  br i1 %i.ok, label %bb.bf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit29

bb.bf:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i, %_RNvNtCskcxRuJ53GpR_9rustworkx8matching19is_maximal_matching.exit
end_hunk_6
