Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible7html_id0EB12_:bb.a
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw i64 %i.am, %i.aj
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l
  %.sroa.012.0 = phi i64 [ %i.ao, %bb.l ], [ 0, %bb.g ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !67 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load i64, ptr %i.as, align 8, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9264)
  %.sroa.012.0.copyload.i.i = load i64, ptr %0, align 8, !alias.scope !9265
  %i.au = trunc nuw i64 %.sroa.012.0.copyload.i.i to i1 ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !9265
  %.sroa.513.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx, align 8, !alias.scope !9265 ; 2 uses
  %.not.i.i = icmp ult i64 %.sroa.513.0.copyload.i.i, %.sroa.6.0.copyload.i.i
  br i1 %.not.i.i, label %bb.o, label %.thread89

bb.o:                                             ; preds = %bb.n
  %i.av = add nuw i64 %.sroa.513.0.copyload.i.i, 1
  store i64 %i.av, ptr %.sroa.521.0..sroa_idx, align 8, !alias.scope !9265
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 289 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !range !78, !alias.scope !9265, !noundef !67 ; 3 uses
  %.not17.i.i = icmp eq i8 %i.ax, 0               ; 3 uses
  br i1 %.not17.i.i, label %bb.q, label %bb.ag

bb.q:                                             ; preds = %bb.ag, %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9267)
  br i1 %i.au, label %bb.r, label %.noexc34

bb.r:                                             ; preds = %bb.q
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !9268
  %.sroa.513.0.copyload.i.i.i.i = load i64, ptr %.sroa.521.0..sroa_idx, align 8, !alias.scope !9268 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.sroa.513.0.copyload.i.i.i.i, %.sroa.6.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.s, label %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.ay = add nuw i64 %.sroa.513.0.copyload.i.i.i.i, 1
  store i64 %i.ay, ptr %.sroa.521.0..sroa_idx, align 8, !alias.scope !9268
  br label %.noexc34

.noexc34:                                         ; preds = %bb.s, %bb.q
  %i.az = icmp samesign ult i64 %i.w, 230584300921369396
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bb = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 1) #64 ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.bb, 0
  %i.bd = extractvalue { i64, ptr } %i.bb, 1      ; 6 uses
  %i.be = trunc nuw i64 %i.bc to i1
  br i1 %i.be, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %.noexc34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9270)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 264
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !9271, !noalias !9272, !noundef !67 ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 272 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !9271, !noalias !9272, !noundef !67 ; 6 uses
  %i.bj = icmp ugt i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.z, label %bb.u, !prof !71

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 256
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !9271, !noalias !9272, !nonnull !67, !noundef !67 ; 2 uses
  %i.bm = sub nuw i64 %i.bg, %i.bi                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9273)
  %i.bo = icmp samesign ult i64 %i.bm, 64
  br i1 %i.bo, label %_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.i.i.i.i.i.i, label %_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.thread87.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.thread87.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9274
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i64 0, ptr %i.bp, align 32, !alias.scope !9275, !noalias !9276
  %.sroa.5.0..sroa_idx1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store ptr @96, ptr %.sroa.5.0..sroa_idx1.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !9275, !noalias !9276
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !9275, !noalias !9276
  store i8 62, ptr %i.b, align 32, !noalias !9276
  %.sroa.415.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i32 62, ptr %.sroa.415.0..sroa_idx.i.i.i.i.i, align 32, !noalias !9276
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  store i32 1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !9276
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr @_RNvNtNtCsbPr7k8qemyf_6memchr6memmem8searcher22searcher_kind_one_byte, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9274
  store i32 1, ptr %i.a, align 4, !noalias !9274
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.bq, align 4, !noalias !9274
  %i.br = invoke { i64, i64 } @_RNvNtNtCsbPr7k8qemyf_6memchr6memmem8searcher22searcher_kind_one_byte(ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(256) %i.b, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef range(i64 0, -9223372036854775808) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc11.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !9269, !inline_history !9230 ; 2 uses

_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bs = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bs, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i9.i.i.i.i.i.i.i.i

.lr.ph.i.i9.i.i.i.i.i.i.i.i:                      ; preds = %_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.i.i.i.i.i.i
  %i.bt = load i8, ptr %i.bn, align 1, !alias.scope !9277, !noalias !9278, !noundef !67
  %i.bu = zext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bg
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -1
  %i.bx = ptrtoint ptr %i.bn to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i.i9.i.i.i.i.i.i.i.i
  %.sroa.013.1.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ch, %bb.y ], [ %i.bu, %.lr.ph.i.i9.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.y ], [ %i.bn, %.lr.ph.i.i9.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.by = icmp eq i32 %.sroa.013.1.i.i.i.i.i.i.i.i.i.i, 62
  br i1 %i.by, label %bb.x, label %bb.w, !prof !71

bb.w:                                             ; preds = %.noexc10.i.i.i.i.i.i, %bb.v
  %.not.i.i10.i.i.i.i.i.i.i.i = icmp ult ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %i.bw
  br i1 %.not.i.i10.i.i.i.i.i.i.i.i, label %bb.y, label %.loopexit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bz = invoke noundef zeroext i1 @_RNvNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarp12is_equal_raw(ptr noundef nonnull %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly @96, i64 noundef range(i64 0, -9223372036854775808) 1) #62
          to label %.noexc10.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !9269

.noexc10.i.i.i.i.i.i:                             ; preds = %bb.x
  br i1 %i.bz, label %_RNvNtCsbPr7k8qemyf_6memchr6memmem4find.exit.thread46.i.i.i.i.i.i.i, label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.ca = load i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !9277, !noalias !9278, !noundef !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !9277, !noalias !9278, !noundef !67
  %i.cd = zext i8 %i.ca to i32
  %i.ce = sub i32 %.sroa.013.1.i.i.i.i.i.i.i.i.i.i, %i.cd
  %i.cf = shl i32 %i.ce, 1
  %i.cg = zext i8 %i.cc to i32
  %i.ch = add i32 %i.cf, %i.cg
  br label %bb.v

_RNvNtCsbPr7k8qemyf_6memchr6memmem4find.exit.thread46.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i
  %i.ci = ptrtoint ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i64
  %i.cj = sub i64 %i.ci, %i.bx                    ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  tail call void @llvm.assume(i1 %i.ck)
  br label %bb.aa

.noexc11.i.i.i.i.i.i:                             ; preds = %_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.thread87.i.i.i.i.i.i.i.i.i.i
  %i.cl = extractvalue { i64, i64 } %i.br, 0
  %i.cm = extractvalue { i64, i64 } %i.br, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9274
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %bb.aa, label %.loopexit.i.i.i.i.i

bb.z:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.bi, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1511) #60
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !9269

.noexc12.i.i.i.i.i.i:                             ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.noexc11.i.i.i.i.i.i, %_RNvNtCsbPr7k8qemyf_6memchr6memmem4find.exit.thread46.i.i.i.i.i.i.i
  %.sroa.3.0.i.pn.i51.i.i.i.i.i.i.i = phi i64 [ %i.cj, %_RNvNtCsbPr7k8qemyf_6memchr6memmem4find.exit.thread46.i.i.i.i.i.i.i ], [ %i.cm, %.noexc11.i.i.i.i.i.i ]
  %i.co = add i64 %.sroa.3.0.i.pn.i51.i.i.i.i.i.i.i, %i.bi
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.x
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.z, %_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.thread87.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtCscnlsAxKLLci_4pest12parser_state11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEB23_(ptr nonnull align 8 %i.bd) #63
          to label %.body.thread unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !9269
  unreachable

bb.ad:                                            ; preds = %.noexc34
  %i.cq = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.bd, 1
  br label %_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7html_id000Bj_.exit.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.w, %bb.aa, %.noexc11.i.i.i.i.i.i, %_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.aa ], [ %i.bg, %.noexc11.i.i.i.i.i.i ], [ %i.bg, %_RNvMNtNtNtCsbPr7k8qemyf_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.i.i.i.i.i.i ], [ %i.bg, %bb.w ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.bh, align 8, !alias.scope !9271, !noalias !9272
  %i.cr = call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 1) #64
  br label %_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7html_id000Bj_.exit.i.i.i.i

_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7html_id000Bj_.exit.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i, %bb.ad
  %.merged.i.i.i.i.i = phi { i64, ptr } [ %i.cq, %bb.ad ], [ %i.cr, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.cs = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 0
  %i.ct = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 1 ; 31 uses
  %i.cu = trunc nuw i64 %i.cs to i1
  br i1 %i.cu, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7html_id000Bj_.exit.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !9279, !noundef !67
  %i.cy = icmp ugt i64 %i.w, %i.cx
  br i1 %i.cy, label %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread22.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 %i.w, ptr %i.cw, align 8, !alias.scope !9279
  br label %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread22.i.i

_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread22.i.i: ; preds = %bb.af, %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread.i.i

bb.ag:                                            ; preds = %bb.p
  store i8 0, ptr %i.aw, align 1, !alias.scope !9265
  br label %bb.q

_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread.i.i: ; preds = %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread22.i.i, %bb.r
  %.sroa.5.1.i.i20.i.i = phi ptr [ %i.ct, %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread22.i.i ], [ %0, %bb.r ] ; 3 uses
  br i1 %.not17.i.i, label %.thread89, label %.thread101

.thread101:                                       ; preds = %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i20.i.i, i64 289
  store i8 %i.ax, ptr %i.cz, align 1
  br label %.thread89

bb.ah:                                            ; preds = %_RNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBh_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBh_4RuleE5parse5rules7visible7html_id000Bj_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not17.i.i, label %.thread97, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 289
  store i8 %i.ax, ptr %i.da, align 1
  br label %.thread97

.thread89:                                        ; preds = %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread.i.i, %bb.n, %.thread101
  %.sroa.4.0.i.i93 = phi ptr [ %.sroa.5.1.i.i20.i.i, %.thread101 ], [ %.sroa.5.1.i.i20.i.i, %_RNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBf_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBf_4RuleE5parse5rules7visible7html_id00Bh_.exit.thread.i.i ], [ %0, %bb.n ] ; 21 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i93, i64 288 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8, !range !78, !noundef !67
  %.not27 = icmp eq i8 %i.dc, 1
  br i1 %.not27, label %_RNCINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB8_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B12_NtB12_9DotParserINtNtBa_6parser6ParserB10_E5parse5rules7visible7html_id0E0B14_.exit, label %bb.be

.thread97:                                        ; preds = %bb.ah, %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 288 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !range !78, !noundef !67 ; 2 uses
  %i.df = icmp eq i8 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit

_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit.thread: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i.thread, %bb.aj, %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  br label %bb.ar

_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit: ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8push_mutBJ_.exit.i, %.thread97
  %i.dg = phi i8 [ %i.de, %.thread97 ], [ %.pr.pre, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8push_mutBJ_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %i.dh = icmp eq i8 %i.dg, 2
  br i1 %i.dh, label %bb.as, label %bb.ar

bb.aj:                                            ; preds = %.thread97
  call void @llvm.experimental.noalias.scope.decl(metadata !9280)
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 289
  %i.dj = load i8, ptr %i.di, align 1, !range !78, !alias.scope !9280, !noundef !67
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 280 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !9280, !noundef !67 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %i.g
  br i1 %i.dn, label %bb.al, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i.thread

bb.al:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 64 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !9280, !noundef !67 ; 3 uses
  %i.dq = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 88 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !9280, !noundef !67 ; 4 uses
  %i.dt = icmp sgt i64 %i.ds, -1
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw i64 %i.ds, %i.dp                ; 2 uses
  %i.dv = icmp ugt i64 %i.du, %.sroa.012.0
  %i.dw = sub nuw i64 %i.du, %.sroa.012.0
  %i.dx = icmp eq i64 %i.dw, 1
  %or.cond.i = select i1 %i.dv, i1 %i.dx, i1 false
  br i1 %or.cond.i, label %_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dy = icmp samesign ugt i64 %.sroa.06.0, %i.dp
  br i1 %i.dy, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 %.sroa.06.0, ptr %i.do, align 8, !alias.scope !9281
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit.i: ; preds = %bb.an, %bb.am
  %i.dz = icmp samesign ugt i64 %.sroa.09.0, %i.ds
  br i1 %i.dz, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit.i
  store i64 %.sroa.09.0, ptr %i.dr, align 8, !alias.scope !9282
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i.thread: ; preds = %bb.ak
  %i.ea = icmp ugt i64 %i.g, %i.dm
  br i1 %i.ea, label %.thread.i, label %_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit.thread

.thread.i:                                        ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i.thread
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  store i64 0, ptr %i.eb, align 8, !alias.scope !9280
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  store i64 0, ptr %i.ec, align 8, !alias.scope !9280
  store i64 %i.g, ptr %i.dl, align 8, !alias.scope !9280
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i: ; preds = %bb.ao, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit.i, %.thread.i
  %i.ed = phi i64 [ 0, %.thread.i ], [ %i.ds, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit.i ], [ %.sroa.09.0, %bb.ao ] ; 3 uses
  %.sroa.02.015.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9283)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.ef = load i64, ptr %.sroa.02.015.i, align 8, !range !70, !alias.scope !9284, !noundef !67
  %i.eg = icmp eq i64 %i.ed, %i.ef
  br i1 %i.eg, label %bb.ap, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8push_mutBJ_.exit.i

bb.ap:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.02.015.i) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8push_mutBJ_.exit.i unwind label %bb.aq

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8push_mutBJ_.exit.i: ; preds = %bb.ap, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8truncateBI_.exit5.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !9284, !nonnull !67, !noundef !67
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ed
  store i8 11, ptr %i.ej, align 1, !noalias !9284
  %i.ek = add nuw i64 %i.ed, 1
  store i64 %i.ek, ptr %i.ee, align 8, !alias.scope !9284
  %.pr.pre = load i8, ptr %i.dd, align 8
  br label %_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit

bb.aq:                                            ; preds = %bb.bc, %bb.az, %bb.ap, %bb.ax, %bb.av
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtCscnlsAxKLLci_4pest12parser_state11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEB23_(ptr %i.ct) #63
          to label %.body.thread unwind label %bb.bd

bb.ar:                                            ; preds = %_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit.thread, %bb.ba, %bb.as, %_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 248
  %i.en = load i8, ptr %i.em, align 8, !range !69, !noundef !67
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.bb, label %_RNCINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB8_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B12_NtB12_9DotParserINtNtBa_6parser6ParserB10_E5parse5rules7visible7html_id0E0B14_.exit

bb.as:                                            ; preds = %_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE5trackB11_.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ct, i64 289
  %i.eq = load i8, ptr %i.ep, align 1, !range !78, !noundef !67
  %.not26 = icmp eq i8 %i.eq, 0
  br i1 %.not26, label %bb.ar, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 3 uses
  %i.es = load i64, ptr %i.er, align 8, !noundef !67 ; 4 uses
  %i.et = icmp ult i64 %i.es, 230584300921369396
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp samesign ult i64 %i.i, %i.es
  br i1 %i.eu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !67, !noundef !67
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.ew, i64 %i.i ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !range !69, !noundef !67
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ax, label %bb.ay, !prof !71

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.es, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #61
          to label %bb.aw unwind label %bb.aq

bb.aw:                                            ; preds = %bb.ax, %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #61
          to label %bb.aw unwind label %bb.aq

bb.ay:                                            ; preds = %bb.au
end_hunk_0
