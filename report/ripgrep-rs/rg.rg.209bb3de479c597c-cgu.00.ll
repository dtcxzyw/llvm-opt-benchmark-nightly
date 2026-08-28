Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.00?download=true
inline.NumInlined: 973
inline.NumDeleted: 98
begin_hunk_0_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1H_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
  br i1 %i.db, label %bb.r, label %bb.o, !dbg !250

bb.o:                                             ; preds = %.noexc31.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !251
  %i.dd = load i8, ptr %i.dc, align 8, !dbg !251, !range !60, !alias.scope !207, !noalias !254, !noundef !15
  %i.de = trunc nuw i8 %i.dd to i1, !dbg !251
  br i1 %i.de, label %bb.p, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !257

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i8.i.i = load i8, ptr %i.ct, align 4, !dbg !258, !range !80, !noalias !262, !noundef !15 ; 3 uses
  %.not.i9.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 2, !dbg !263
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i10.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !264, !range !60, !alias.scope !207, !noalias !254 ; 2 uses
  %i.df = icmp eq i8 %.val.i.i.i.i8.i.i, %.pre.i10.i.i
  %or.cond21.i.i.i = select i1 %.not.i9.i.i, i1 %i.df, i1 false, !dbg !266
  br i1 %or.cond21.i.i.i, label %bb.q, label %._crit_edge.i11.i.i, !dbg !266

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i12.i.i = load i8, ptr %i.cu, align 1, !dbg !258, !noalias !262
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !267
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !267, !alias.scope !207, !noalias !254 ; 2 uses
  %or.cond.not.i13.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 0, !dbg !269
  %i.di = icmp eq i8 %.val1.i.i.i.i12.i.i, %i.dh
  %or.cond.i.i.i = select i1 %or.cond.not.i13.i.i, i1 true, i1 %i.di, !dbg !269
  br i1 %or.cond.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !269

._crit_edge.i11.i.i:                              ; preds = %bb.p
  %i.dj = trunc nuw i8 %.pre.i10.i.i to i1, !dbg !272
  br i1 %i.dj, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, label %._crit_edge.i11..thread.i_crit_edge.i.i, !dbg !274

._crit_edge.i11..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i11.i.i
  %.phi.trans.insert.i29.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i30.i = load i8, ptr %.phi.trans.insert.i29.i, align 1, !dbg !272, !alias.scope !207, !noalias !254
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !274

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %._crit_edge.i11..thread.i_crit_edge.i.i, %._crit_edge.i11.i.i, %bb.q
  %.sroa.06.0.i.i.i = phi i8 [ 10, %._crit_edge.i11.i.i ], [ %.pre.i30.i, %._crit_edge.i11..thread.i_crit_edge.i.i ], [ %i.dh, %bb.q ], !dbg !276 ; 2 uses
  %i.dk = lshr i8 %.sroa.06.0.i.i.i, 6, !dbg !277
  %i.dl = zext nneg i8 %i.dk to i64, !dbg !279
  %i.dm = and i8 %.sroa.06.0.i.i.i, 63, !dbg !281
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.dl, !dbg !282
  %i.do = load i64, ptr %i.dn, align 8, !dbg !282, !noalias !262, !noundef !15
  %i.dp = zext nneg i8 %i.dm to i64, !dbg !283
  %i.dq = shl nuw i64 1, %i.dp, !dbg !283
  %i.dr = and i64 %i.dq, %i.do, !dbg !282
  %.not17.i.i.i = icmp eq i64 %i.dr, 0, !dbg !282
  br i1 %.not17.i.i.i, label %bb.s, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !284

bb.r:                                             ; preds = %.noexc31.i
  %i.ds = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !285, !noalias !242 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 6, !dbg !294
  call void @llvm.assume(i1 %i.dt), !dbg !294
  %i.du = icmp samesign ugt i64 %i.ds, 4, !dbg !295
  br i1 %i.du, label %bb.x, label %bb.y, !dbg !309

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, %bb.q, %bb.o
  %i.dv = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !310, !noalias !242 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 6, !dbg !318
  call void @llvm.assume(i1 %i.dw), !dbg !318
  %i.dx = icmp samesign ugt i64 %i.dv, 4, !dbg !319
  br i1 %i.dx, label %bb.t, label %bb.u, !dbg !329

bb.s:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i
  %i.dy = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !330, !noalias !242 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6, !dbg !338
  call void @llvm.assume(i1 %i.dz), !dbg !338
  %i.ea = icmp samesign ugt i64 %i.dy, 4, !dbg !339
  br i1 %i.ea, label %bb.v, label %bb.w, !dbg !349

bb.t:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !329, !noalias !242
  store ptr @3, ptr %i.ac, align 8, !dbg !329, !noalias !242
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !329
  store i64 23, ptr %i.eb, align 8, !dbg !329, !noalias !242
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !329
  store ptr @3, ptr %i.ec, align 8, !dbg !329, !noalias !242
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !329
  store i64 23, ptr %i.ed, align 8, !dbg !329, !noalias !242
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !329
  store ptr @2, ptr %i.ee, align 8, !dbg !329, !noalias !242
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %.noexc32.i unwind label %bb.g, !dbg !329, !noalias !178

.noexc32.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !329, !noalias !242
  br label %bb.u, !dbg !329

bb.u:                                             ; preds = %.noexc32.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !350, !noalias !242
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4, i1 noundef zeroext true)
          to label %.noexc33.i unwind label %bb.g, !dbg !351

.noexc33.i:                                       ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 120, !dbg !357
  store ptr %i.cl, ptr %i.ef, align 8, !dbg !357, !noalias !242
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 128, !dbg !357
  store i64 %i.ck, ptr %i.eg, align 8, !dbg !357, !noalias !242
  %i.eh = invoke noundef ptr @_RNvMs_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB4_11SliceByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB18_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.ab)
          to label %.noexc34.i unwind label %bb.g, !dbg !358

.noexc34.i:                                       ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !359, !noalias !242
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !360

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !349, !noalias !242
  store ptr @3, ptr %i.ae, align 8, !dbg !349, !noalias !242
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !349
  store i64 23, ptr %i.ei, align 8, !dbg !349, !noalias !242
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !349
  store ptr @3, ptr %i.ej, align 8, !dbg !349, !noalias !242
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !349
  store i64 23, ptr %i.ek, align 8, !dbg !349, !noalias !242
  %i.el = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !349
  store ptr @5, ptr %i.el, align 8, !dbg !349, !noalias !242
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 93 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %.noexc35.i unwind label %bb.g, !dbg !349, !noalias !178

.noexc35.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !349, !noalias !242
  br label %bb.w, !dbg !349

bb.w:                                             ; preds = %.noexc35.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !361, !noalias !242
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4, i1 noundef zeroext true)
          to label %.noexc36.i unwind label %bb.g, !dbg !362

.noexc36.i:                                       ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 144, !dbg !366
  store ptr %0, ptr %i.em, align 8, !dbg !366, !noalias !242
  %i.en = getelementptr inbounds nuw i8, ptr %i.ad, i64 152, !dbg !366
  store ptr %i.cl, ptr %i.en, align 8, !dbg !366, !noalias !242
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ad, i64 160, !dbg !366
  store i64 %i.ck, ptr %i.eo, align 8, !dbg !366, !noalias !242
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 120, !dbg !366
  store i64 0, ptr %i.ep, align 8, !dbg !366, !noalias !242
  %i.eq = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.ad)
          to label %.noexc37.i unwind label %bb.g, !dbg !367

.noexc37.i:                                       ; preds = %.noexc36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !368, !noalias !242
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !360

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !309, !noalias !242
  store ptr @3, ptr %i.af, align 8, !dbg !309, !noalias !242
  %i.er = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !309
  store i64 23, ptr %i.er, align 8, !dbg !309, !noalias !242
  %i.es = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !309
  store ptr @3, ptr %i.es, align 8, !dbg !309, !noalias !242
  %i.et = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !309
  store i64 23, ptr %i.et, align 8, !dbg !309, !noalias !242
  %i.eu = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !309
  store ptr @7, ptr %i.eu, align 8, !dbg !309, !noalias !242
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 107 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %.noexc38.i unwind label %bb.g, !dbg !309, !noalias !178

.noexc38.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !309, !noalias !242
  br label %bb.y, !dbg !309

bb.y:                                             ; preds = %.noexc38.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !369), !dbg !372
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !373
  %i.ev = load i64, ptr %0, align 8, !dbg !373, !range !52, !alias.scope !378, !noalias !379, !noundef !15
  %i.ew = trunc nuw i64 %i.ev to i1, !dbg !386
  %i.ex = load i64, ptr %i.co, align 8, !alias.scope !378, !noalias !387
  %i.ey = icmp ne i64 %i.ex, 0
  %not..i.i.i = xor i1 %i.ew, true, !dbg !386
  %or.cond.i14.i.i = select i1 %not..i.i.i, i1 true, i1 %i.ey, !dbg !386
  %i.ez = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !378, !noalias !387
  %i.fa = icmp eq i8 %i.ez, 0
  %or.cond92.i.i.i = select i1 %or.cond.i14.i.i, i1 true, i1 %i.fa, !dbg !386
  br i1 %or.cond92.i.i.i, label %bb.z, label %bb.ac, !dbg !386

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.ct, align 4, !dbg !388, !range !80, !noalias !392, !noundef !15 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.cu, align 1, !dbg !388, !noalias !392 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i, 2, !dbg !393
  br i1 %.not.i.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.aa, !dbg !394

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !395
  %i.fc = load i8, ptr %i.fb, align 8, !dbg !395, !range !60, !alias.scope !378, !noalias !379, !noundef !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !395 ; 2 uses
  %i.fe = icmp eq i8 %.val.i.i.i.i.i.i.i, %i.fc, !dbg !399
  br i1 %i.fe, label %bb.ab, label %._crit_edge.i.i.i.i, !dbg !399

._crit_edge.i.i.i.i:                              ; preds = %bb.aa
  %.pre.i.i.i.i = load i8, ptr %i.fd, align 1, !dbg !400, !alias.scope !378, !noalias !379
  br label %bb.ac, !dbg !399

bb.ab:                                            ; preds = %bb.aa
  %or.cond.not.i.i.i.i = icmp ne i8 %.val.i.i.i.i.i.i.i, 0, !dbg !399
  %i.ff = load i8, ptr %i.fd, align 1, !alias.scope !378, !noalias !387 ; 2 uses
  %.not12.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, %i.ff
  %or.cond93.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %.not12.i.i.i.i, !dbg !399
  br i1 %or.cond93.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.ac, !dbg !399

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i, %bb.y
  %.sroa.12.0.ph.i.i.i = phi i8 [ %i.ff, %bb.ab ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.11.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %i.fc, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.10.0.ph.i.i.i = phi i8 [ %.val1.i.i.i.i.i.i.i, %bb.ab ], [ %.val1.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.9.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %.val.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.064.0.ph.i.i.i = phi i64 [ -9223372036854775807, %bb.ab ], [ -9223372036854775807, %._crit_edge.i.i.i.i ], [ -9223372036854775808, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !401, !noalias !404
  store i64 %.sroa.064.0.ph.i.i.i, ptr %i.r, align 8, !dbg !401, !noalias !404
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !401
  store i8 %.sroa.9.0.ph.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !401, !noalias !404
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9, !dbg !401
  store i8 %.sroa.10.0.ph.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !dbg !401, !noalias !404
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 10, !dbg !401
  store i8 %.sroa.11.0.ph.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !dbg !401, !noalias !404
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 11, !dbg !401
  store i8 %.sroa.12.0.ph.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !dbg !401, !noalias !404
  %i.fg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc39.i unwind label %bb.g, !dbg !405, !noalias !178

.noexc39.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !409, !noalias !404
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !410

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.ab, %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !411 ; 8 uses
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !419, !alias.scope !378, !noalias !387, !noundef !15
  %i.fj = icmp eq i64 %i.fi, 0, !dbg !426
  br i1 %i.fj, label %bb.ad, label %bb.ae, !dbg !426, !prof !427

bb.ad:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  store i64 -1, ptr %i.fh, align 8, !dbg !428, !alias.scope !378, !noalias !387
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !441, !noalias !404
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !441
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %bb.ag unwind label %bb.af, !dbg !443, !noalias !444

bb.ae:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
          to label %.noexc40.i unwind label %bb.g, !dbg !445, !noalias !178

.noexc40.i:                                       ; preds = %bb.ae
  unreachable, !dbg !445

bb.af:                                            ; preds = %bb.ad
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ag:                                            ; preds = %bb.ad
  %i.fn = load i64, ptr %i.z, align 8, !dbg !447, !range !450, !noalias !404, !noundef !15 ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 2, !dbg !447
  %i.fp = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !451
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !451, !noalias !404 ; 4 uses
  br i1 %i.fo, label %bb.cl, label %bb.ah, !dbg !452

bb.ah:                                            ; preds = %bb.ag
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.537.0..sroa_idx.i.i.i, i64 144, i1 false), !dbg !453, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !454, !noalias !404
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !455 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !dbg !455, !range !60, !alias.scope !378, !noalias !459, !noundef !15
  %i.ft = trunc nuw i8 %i.fs to i1, !dbg !455
  br i1 %i.ft, label %bb.ai, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !462

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i.i.i54.i.i.i = load i8, ptr %i.ct, align 4, !dbg !463, !range !80, !noalias !467, !noundef !15 ; 3 uses
  %.not.i55.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 2, !dbg !468
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !469, !range !60, !alias.scope !378, !noalias !459 ; 2 uses
  %i.fu = icmp eq i8 %.val.i.i.i.i54.i.i.i, %.pre.i56.i.i.i
  %or.cond21.i.i.i.i = select i1 %.not.i55.i.i.i, i1 %i.fu, i1 false, !dbg !471
  br i1 %or.cond21.i.i.i.i, label %bb.aj, label %._crit_edge.i57.i.i.i, !dbg !471

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i.i.i58.i.i.i = load i8, ptr %i.cu, align 1, !dbg !463, !noalias !467
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !472
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !472, !alias.scope !378, !noalias !459 ; 2 uses
  %or.cond.not.i59.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 0, !dbg !474
  %i.fx = icmp eq i8 %.val1.i.i.i.i58.i.i.i, %i.fw
  %or.cond.i.i.i.i = select i1 %or.cond.not.i59.i.i.i, i1 true, i1 %i.fx, !dbg !474
  br i1 %or.cond.i.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !474

._crit_edge.i57.i.i.i:                            ; preds = %bb.ai
  %i.fy = trunc nuw i8 %.pre.i56.i.i.i to i1, !dbg !477
  br i1 %i.fy, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %._crit_edge.i57..thread.i_crit_edge.i.i.i, !dbg !479

._crit_edge.i57..thread.i_crit_edge.i.i.i:        ; preds = %._crit_edge.i57.i.i.i
  %.phi.trans.insert.i17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i18.i.i = load i8, ptr %.phi.trans.insert.i17.i.i, align 1, !dbg !477, !alias.scope !378, !noalias !459
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !479

bb.ak:                                            ; preds = %bb.cb, %bb.bb, %bb.ay, %bb.aw, %bb.al
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i.i, %._crit_edge.i57.i.i.i, %bb.aj
  %.sroa.06.0.i.i.i.i = phi i8 [ 10, %._crit_edge.i57.i.i.i ], [ %.pre.i18.i.i, %._crit_edge.i57..thread.i_crit_edge.i.i.i ], [ %i.fw, %bb.aj ], !dbg !481 ; 2 uses
  %i.ga = lshr i8 %.sroa.06.0.i.i.i.i, 6, !dbg !482
  %i.gb = zext nneg i8 %i.ga to i64, !dbg !484
  %i.gc = and i8 %.sroa.06.0.i.i.i.i, 63, !dbg !486
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.gb, !dbg !487
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !487, !noalias !467, !noundef !15
  %i.gf = zext nneg i8 %i.gc to i64, !dbg !488
  %i.gg = shl nuw i64 1, %i.gf, !dbg !488
  %i.gh = and i64 %i.gg, %i.ge, !dbg !487
  %.not17.i.i.i.i = icmp eq i64 %i.gh, 0, !dbg !487
  br i1 %.not17.i.i.i.i, label %bb.av, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !489

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.aj, %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !490 ; 6 uses
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !496, !alias.scope !378, !noalias !387, !noundef !15
  %i.gk = icmp eq i64 %i.gj, 0, !dbg !501
  br i1 %i.gk, label %bb.an, label %bb.al, !dbg !501, !prof !427

bb.al:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.au unwind label %bb.ak, !dbg !502, !noalias !444

bb.am:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load i64, ptr %i.gi, align 8, !dbg !504, !alias.scope !378, !noalias !387, !noundef !15
  %i.gn = add i64 %i.gm, 1, !dbg !514
  store i64 %i.gn, ptr %i.gi, align 8, !dbg !516, !alias.scope !378, !noalias !387
  br label %bb.cm, !dbg !522

bb.an:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  store i64 -1, ptr %i.gi, align 8, !dbg !523, !alias.scope !378, !noalias !387
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !528
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !533
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !543
  store i64 0, ptr %i.gq, align 8, !dbg !543, !alias.scope !378, !noalias !387
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i8 0, i64 32, i1 false), !dbg !544, !alias.scope !378, !noalias !387
  %i.gr = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !545, !noalias !404 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6, !dbg !556
  call void @llvm.assume(i1 %i.gs), !dbg !556
  %i.gt = icmp samesign ugt i64 %i.gr, 4, !dbg !557
  br i1 %i.gt, label %bb.ao, label %bb.ap, !dbg !571

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !571, !noalias !404
  store ptr @3, ptr %i.u, align 8, !dbg !571, !noalias !404
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !571
  store i64 23, ptr %i.gu, align 8, !dbg !571, !noalias !404
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !571
  store ptr @3, ptr %i.gv, align 8, !dbg !571, !noalias !404
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !571
  store i64 23, ptr %i.gw, align 8, !dbg !571, !noalias !404
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !571
  store ptr @9, ptr %i.gx, align 8, !dbg !571, !noalias !404
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.aq unwind label %bb.am, !dbg !571, !noalias !444

bb.ap:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !572, !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !573, !noalias !404
  store i64 %i.fn, ptr %i.s, align 8, !dbg !573, !noalias !404
  %.sroa.025.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !573
  store ptr %i.fq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !573, !noalias !404
  %.sroa.025.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.025.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, i64 144, i1 false), !dbg !573, !noalias !404
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160, !dbg !573
  store ptr %i.go, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !dbg !573, !noalias !404
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4)
          to label %bb.ar unwind label %bb.am, !dbg !572

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !571, !noalias !404
  br label %bb.ap, !dbg !571

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !574, !noalias !404
  %i.gy = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.t)
          to label %bb.as unwind label %bb.am, !dbg !575

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !576, !noalias !404
  %i.gz = load i64, ptr %i.gi, align 8, !dbg !577, !alias.scope !378, !noalias !387, !noundef !15
  %i.ha = add i64 %i.gz, 1, !dbg !582
  store i64 %i.ha, ptr %i.gi, align 8, !dbg !583, !alias.scope !378, !noalias !387
  br label %bb.at, !dbg !586

bb.at:                                            ; preds = %bb.cj, %bb.as
  %.sroa.0.0.i16.i.i = phi ptr [ %i.la, %bb.cj ], [ %i.gy, %bb.as ], !dbg !587
  %i.hb = load i64, ptr %i.fh, align 8, !dbg !588, !alias.scope !378, !noalias !387, !noundef !15
  %i.hc = add i64 %i.hb, 1, !dbg !594
  store i64 %i.hc, ptr %i.fh, align 8, !dbg !595, !alias.scope !378, !noalias !387
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !410

bb.au:                                            ; preds = %bb.al
  unreachable

bb.av:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.hd = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !598, !noalias !404 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 6, !dbg !605
  call void @llvm.assume(i1 %i.he), !dbg !605
  %i.hf = icmp samesign ugt i64 %i.hd, 4, !dbg !606
  br i1 %i.hf, label %bb.aw, label %.thread154.i.i.i, !dbg !616

.thread154.i.i.i:                                 ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !617, !noalias !404
  store i64 %i.fn, ptr %i.x, align 8, !dbg !617, !noalias !404
  %.sroa.618.0..sroa_idx19155.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !617
  store ptr %i.fq, ptr %.sroa.618.0..sroa_idx19155.i.i.i, align 8, !dbg !617, !noalias !404
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1H_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !912
  store i64 23, ptr %i.ki, align 8, !dbg !912, !noalias !404
  %i.kj = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !912
  store ptr @3, ptr %i.kj, align 8, !dbg !912, !noalias !404
  %i.kk = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !912
  store i64 23, ptr %i.kk, align 8, !dbg !912, !noalias !404
  %i.kl = getelementptr inbounds nuw i8, ptr %i.w, i64 32, !dbg !912
  store ptr @14, ptr %i.kl, align 8, !dbg !912, !noalias !404
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %bb.ce unwind label %bb.ak, !dbg !912, !noalias !444

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.km = phi i64 [ %i.ke, %bb.ca ], [ %.pre141.i.i.i, %bb.ce ], !dbg !913 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !923, !noalias !404
  %i.kn = icmp ult i64 %i.km, 9223372036854775807, !dbg !924
  br i1 %i.kn, label %bb.cg, label %bb.cd, !dbg !928, !prof !427

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63.i.i.i unwind label %bb.cf, !dbg !929, !noalias !444

.noexc63.i.i.i:                                   ; preds = %bb.cd
  unreachable, !dbg !929

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !912, !noalias !404
  %.pre141.i.i.i = load i64, ptr %i.hl, align 8, !dbg !913, !alias.scope !378, !noalias !931
  br label %bb.cc, !dbg !912

bb.cf:                                            ; preds = %bb.cd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm, !dbg !934

bb.cg:                                            ; preds = %bb.cc
  %i.kp = add nuw nsw i64 %i.km, 1, !dbg !935
  store i64 %i.kp, ptr %i.hl, align 8, !dbg !941, !alias.scope !378, !noalias !931
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !947
  %i.kr = load ptr, ptr %i.kq, align 8, !dbg !947, !alias.scope !378, !noalias !387, !nonnull !15, !noundef !15
  %i.ks = load i64, ptr %i.hp, align 8, !dbg !960, !alias.scope !378, !noalias !387, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !961, !noalias !404
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4, i1 noundef zeroext true)
          to label %bb.ci unwind label %bb.ch, !dbg !961

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load i64, ptr %i.hl, align 8, !dbg !964, !alias.scope !378, !noalias !387, !noundef !15
  %i.kv = add i64 %i.ku, -1, !dbg !974
  store i64 %i.kv, ptr %i.hl, align 8, !dbg !976, !alias.scope !378, !noalias !387
  br label %bb.cm, !dbg !982

bb.ci:                                            ; preds = %bb.cg
  %i.kw = getelementptr inbounds nuw i8, ptr %i.v, i64 144, !dbg !983
  store ptr %0, ptr %i.kw, align 8, !dbg !983, !noalias !404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !dbg !983, !noalias !404
  %i.kx = getelementptr inbounds nuw i8, ptr %i.v, i64 152, !dbg !983
  store ptr %i.kr, ptr %i.kx, align 8, !dbg !983, !noalias !404
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !983
  store i64 %i.ks, ptr %i.ky, align 8, !dbg !983, !noalias !404
  %i.kz = getelementptr inbounds nuw i8, ptr %i.v, i64 120, !dbg !983
  store i64 0, ptr %i.kz, align 8, !dbg !983, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !984, !noalias !404
  %i.la = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.v)
          to label %bb.cj unwind label %bb.ch, !dbg !985

bb.cj:                                            ; preds = %bb.ci
  %i.lb = load i64, ptr %i.hl, align 8, !dbg !986, !alias.scope !378, !noalias !387, !noundef !15
  %i.lc = add i64 %i.lb, -1, !dbg !991
  store i64 %i.lc, ptr %i.hl, align 8, !dbg !992, !alias.scope !378, !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !995, !noalias !404
  br label %bb.at, !dbg !586

bb.ck:                                            ; preds = %bb.cl, %bb.bz, %.thread85.i.i.i
  %.sroa.0.2.i.i.i = phi ptr [ %i.fq, %bb.cl ], [ %i.kb, %bb.bz ], [ %.sroa.0.0.i60.ph.i.i.i, %.thread85.i.i.i ], !dbg !996
  %i.ld = load i64, ptr %i.fh, align 8, !dbg !1000, !alias.scope !378, !noalias !387, !noundef !15
  %i.le = add i64 %i.ld, 1, !dbg !1005
  store i64 %i.le, ptr %i.fh, align 8, !dbg !1006, !alias.scope !378, !noalias !387
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !410

bb.cl:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !454, !noalias !404
  br label %bb.ck, !dbg !1009

bb.cm:                                            ; preds = %bb.ch, %bb.cf, %.loopexit.i.i.i.i, %bb.am, %bb.ak, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.af ], [ %i.gl, %bb.am ], [ %i.kt, %bb.ch ], [ %i.ko, %bb.cf ], [ %i.fz, %bb.ak ], [ %.pn.i.i.i.i, %.loopexit.i.i.i.i ]
  %i.lf = load i64, ptr %i.fh, align 8, !dbg !1012, !alias.scope !378, !noalias !387, !noundef !15
  %i.lg = add i64 %i.lf, 1, !dbg !1017
  store i64 %i.lg, ptr %i.fh, align 8, !dbg !1018, !alias.scope !378, !noalias !387
  br label %.body.i, !dbg !1021

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.ck, %bb.at, %.noexc39.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.fg, %.noexc39.i ], [ %.sroa.0.2.i.i.i, %bb.ck ], [ %.sroa.0.0.i16.i.i, %bb.at ], !dbg !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !1023
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !1024

bb.cn:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !174, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !174, !noalias !43
  %.pre132.i = load ptr, ptr %i.aq, align 8, !dbg !190, !noalias !43
  %.pre133.i = load i64, ptr %i.cc, align 8, !dbg !179, !noalias !43
  br label %bb.j, !dbg !174

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, %.noexc37.i, %.noexc34.i, %.noexc.i
  %.sroa.0.0.i27.i = phi ptr [ %i.da, %.noexc.i ], [ %.sroa.0.1.i.i.i, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.eq, %.noexc37.i ], [ %i.eh, %.noexc34.i ], !dbg !1026
  invoke void @_RNvXs_NtCs2Ov1vZ5ZpMw_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc11 unwind label %bb.fi, !dbg !1027

.noexc11:                                         ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !54, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !54, !noalias !43
  br label %bb.fj, !dbg !1030

bb.co:                                            ; preds = %.body.i
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1032
  unreachable, !dbg !1032

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i, %bb.f, %bb.d
  %i.li = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1033, !noalias !43 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 6, !dbg !1041
  call void @llvm.assume(i1 %i.lj), !dbg !1041
  %i.lk = icmp samesign ugt i64 %i.li, 4, !dbg !1042
  br i1 %i.lk, label %bb.cq, label %bb.cr, !dbg !1052

bb.cp:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i
  %i.ll = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1053, !noalias !43 ; 2 uses
  %i.lm = icmp ult i64 %i.ll, 6, !dbg !1061
  call void @llvm.assume(i1 %i.lm), !dbg !1061
  %i.ln = icmp samesign ugt i64 %i.ll, 4, !dbg !1062
  br i1 %i.ln, label %bb.ef, label %.thread.i, !dbg !1072

bb.cq:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !1073, !noalias !43
  store ptr %i.as, ptr %i.ai, align 8, !dbg !1073, !noalias !43
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !1073
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCsG258MDvU3F_3std4path4PathENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !1073, !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !1052, !noalias !43
  store ptr @3, ptr %i.ah, align 8, !dbg !1052, !noalias !43
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !1052
  store i64 23, ptr %i.lo, align 8, !dbg !1052, !noalias !43
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !1052
  store ptr @3, ptr %i.lp, align 8, !dbg !1052, !noalias !43
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !1052
  store i64 23, ptr %i.lq, align 8, !dbg !1052, !noalias !43
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !1052
  store ptr @20, ptr %i.lr, align 8, !dbg !1052, !noalias !43
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @19, ptr noundef nonnull %i.ai, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %.noexc12 unwind label %bb.fi, !dbg !1052

.noexc12:                                         ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !1052, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !1052, !noalias !43
  br label %bb.cr, !dbg !1052

bb.cr:                                            ; preds = %.noexc12, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1076), !dbg !1079
  call void @llvm.experimental.noalias.scope.decl(metadata !1080), !dbg !1079
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !1082
  %i.ls = load i64, ptr %0, align 8, !dbg !1082, !range !52, !alias.scope !1087, !noalias !1088, !noundef !15
  %i.lt = trunc nuw i64 %i.ls to i1, !dbg !1094
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !alias.scope !1087, !noalias !1095
  %i.lw = icmp ne i64 %i.lv, 0
  %not..i41.i = xor i1 %i.lt, true, !dbg !1094
  %or.cond.i42.i = select i1 %not..i41.i, i1 true, i1 %i.lw, !dbg !1094
  %i.lx = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !1087, !noalias !1095
  %i.ly = icmp eq i8 %i.lx, 0
  %or.cond82.i.i = select i1 %or.cond.i42.i, i1 true, i1 %i.ly, !dbg !1094
  br i1 %or.cond82.i.i, label %bb.cs, label %bb.cv, !dbg !1094

bb.cs:                                            ; preds = %bb.cr
  %.val.i.i.i.i51.i = load ptr, ptr %1, align 8, !dbg !1096, !alias.scope !1099, !noalias !1100, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.lz = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 84, !dbg !1101 ; 2 uses
  %.val.i.i.i.i.i52.i = load i8, ptr %i.lz, align 4, !dbg !1101, !range !80, !noalias !1103, !noundef !15 ; 4 uses
  %i.ma = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 85, !dbg !1101 ; 2 uses
  %.val1.i.i.i.i.i53.i = load i8, ptr %i.ma, align 1, !dbg !1101, !noalias !1103 ; 3 uses
  %.not.i.i54.i = icmp eq i8 %.val.i.i.i.i.i52.i, 2, !dbg !1104
  br i1 %.not.i.i54.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.ct, !dbg !1105

bb.ct:                                            ; preds = %bb.cs
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !1106
  %i.mc = load i8, ptr %i.mb, align 8, !dbg !1106, !range !60, !alias.scope !1087, !noalias !1088, !noundef !15 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !1106 ; 2 uses
  %i.me = icmp eq i8 %.val.i.i.i.i.i52.i, %i.mc, !dbg !1110
  br i1 %i.me, label %bb.cu, label %._crit_edge.i.i55.i, !dbg !1110

._crit_edge.i.i55.i:                              ; preds = %bb.ct
  %.pre.i.i56.i = load i8, ptr %i.md, align 1, !dbg !1111, !alias.scope !1087, !noalias !1088
  br label %bb.cv, !dbg !1110

bb.cu:                                            ; preds = %bb.ct
  %or.cond.not.i.i57.i = icmp ne i8 %.val.i.i.i.i.i52.i, 0, !dbg !1110
  %i.mf = load i8, ptr %i.md, align 1, !alias.scope !1087, !noalias !1095 ; 2 uses
  %.not12.i.i58.i = icmp eq i8 %.val1.i.i.i.i.i53.i, %i.mf
  %or.cond83.i.i = select i1 %or.cond.not.i.i57.i, i1 true, i1 %.not12.i.i58.i, !dbg !1110
  br i1 %or.cond83.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.cv, !dbg !1110

bb.cv:                                            ; preds = %bb.cu, %._crit_edge.i.i55.i, %bb.cr
  %.sroa.12.0.ph.i43.i = phi i8 [ %i.mf, %bb.cu ], [ %.pre.i.i56.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.11.0.ph.i43.i = phi i8 [ 0, %bb.cu ], [ %i.mc, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.10.0.ph.i44.i = phi i8 [ %.val1.i.i.i.i.i53.i, %bb.cu ], [ %.val1.i.i.i.i.i53.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.9.0.ph.i45.i = phi i8 [ 0, %bb.cu ], [ %.val.i.i.i.i.i52.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.060.0.ph.i.i = phi i64 [ -9223372036854775807, %bb.cu ], [ -9223372036854775807, %._crit_edge.i.i55.i ], [ -9223372036854775808, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1112, !noalias !1115
  store i64 %.sroa.060.0.ph.i.i, ptr %i.g, align 8, !dbg !1112, !noalias !1115
  %.sroa.9.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !1112
  store i8 %.sroa.9.0.ph.i45.i, ptr %.sroa.9.0..sroa_idx.i47.i, align 8, !dbg !1112, !noalias !1115
  %.sroa.10.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9, !dbg !1112
  store i8 %.sroa.10.0.ph.i44.i, ptr %.sroa.10.0..sroa_idx.i48.i, align 1, !dbg !1112, !noalias !1115
  %.sroa.11.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.g, i64 10, !dbg !1112
  store i8 %.sroa.11.0.ph.i43.i, ptr %.sroa.11.0..sroa_idx.i49.i, align 2, !dbg !1112, !noalias !1115
  %.sroa.12.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.g, i64 11, !dbg !1112
  store i8 %.sroa.12.0.ph.i43.i, ptr %.sroa.12.0..sroa_idx.i50.i, align 1, !dbg !1112, !noalias !1115
  %i.mg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc13 unwind label %bb.fi, !dbg !1116

.noexc13:                                         ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1120, !noalias !1115
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !1121

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i: ; preds = %bb.cu, %bb.cs
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !1122 ; 8 uses
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !1127, !alias.scope !1087, !noalias !1095, !noundef !15
  %i.mj = icmp eq i64 %i.mi, 0, !dbg !1132
  br i1 %i.mj, label %bb.cw, label %.invoke, !dbg !1132, !prof !427

bb.cw:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i
  store i64 -1, ptr %i.mh, align 8, !dbg !1133, !alias.scope !1087, !noalias !1095
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !1139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !1143, !noalias !1115
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !1143
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ml, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %bb.cy unwind label %bb.cx, !dbg !1145, !noalias !1146

bb.cx:                                            ; preds = %bb.cw
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cy:                                            ; preds = %bb.cw
  %i.mn = load i64, ptr %i.o, align 8, !dbg !1147, !range !450, !noalias !1115, !noundef !15 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, 2, !dbg !1147
  %i.mp = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !1150
  %i.mq = load ptr, ptr %i.mp, align 8, !dbg !1150, !noalias !1115 ; 3 uses
  br i1 %i.mo, label %bb.ed, label %bb.cz, !dbg !1151

bb.cz:                                            ; preds = %bb.cy
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx.i.i, i64 136, i1 false), !dbg !1152, !noalias !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !1153, !noalias !1115
  %i.mr = load i8, ptr %i.bf, align 8, !dbg !1154, !range !60, !alias.scope !1087, !noalias !1158, !noundef !15
  %i.ms = trunc nuw i8 %i.mr to i1, !dbg !1154
  br i1 %i.ms, label %bb.da, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !1161

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i54.i.i = load i8, ptr %i.lz, align 4, !dbg !1162, !range !80, !noalias !1166, !noundef !15 ; 3 uses
  %.not.i55.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 2, !dbg !1167
  %.phi.trans.insert.i.i62.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i = load i8, ptr %.phi.trans.insert.i.i62.i, align 8, !dbg !1168, !range !60, !alias.scope !1087, !noalias !1158 ; 2 uses
  %i.mt = icmp eq i8 %.val.i.i.i.i54.i.i, %.pre.i56.i.i
  %or.cond21.i.i63.i = select i1 %.not.i55.i.i, i1 %i.mt, i1 false, !dbg !1170
  br i1 %or.cond21.i.i63.i, label %bb.db, label %._crit_edge.i57.i.i, !dbg !1170

bb.db:                                            ; preds = %bb.da
  %.val1.i.i.i.i58.i.i = load i8, ptr %i.ma, align 1, !dbg !1162, !noalias !1166
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !1171
  %i.mv = load i8, ptr %i.mu, align 1, !dbg !1171, !alias.scope !1087, !noalias !1158 ; 2 uses
  %or.cond.not.i59.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 0, !dbg !1173
  %i.mw = icmp eq i8 %.val1.i.i.i.i58.i.i, %i.mv
  %or.cond.i.i69.i = select i1 %or.cond.not.i59.i.i, i1 true, i1 %i.mw, !dbg !1173
  br i1 %or.cond.i.i69.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !1173

._crit_edge.i57.i.i:                              ; preds = %bb.da
  %i.mx = trunc nuw i8 %.pre.i56.i.i to i1, !dbg !1176
  br i1 %i.mx, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, label %._crit_edge.i57..thread.i_crit_edge.i.i, !dbg !1178

._crit_edge.i57..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i57.i.i
  %.phi.trans.insert.i64.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i65.i = load i8, ptr %.phi.trans.insert.i64.i, align 1, !dbg !1176, !alias.scope !1087, !noalias !1158
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !1178

bb.dc:                                            ; preds = %bb.dt, %bb.dp, %bb.do, %bb.dd
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i, %._crit_edge.i57.i.i, %bb.db
  %.sroa.06.0.i.i67.i = phi i8 [ 10, %._crit_edge.i57.i.i ], [ %.pre.i65.i, %._crit_edge.i57..thread.i_crit_edge.i.i ], [ %i.mv, %bb.db ], !dbg !1180 ; 2 uses
  %i.mz = lshr i8 %.sroa.06.0.i.i67.i, 6, !dbg !1181
  %i.na = zext nneg i8 %i.mz to i64, !dbg !1183
  %i.nb = and i8 %.sroa.06.0.i.i67.i, 63, !dbg !1185
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i51.i, i64 %i.na, !dbg !1186
  %i.nd = load i64, ptr %i.nc, align 8, !dbg !1186, !noalias !1166, !noundef !15
  %i.ne = zext nneg i8 %i.nb to i64, !dbg !1187
  %i.nf = shl nuw i64 1, %i.ne, !dbg !1187
  %i.ng = and i64 %i.nf, %i.nd, !dbg !1186
  %.not17.i.i68.i = icmp eq i64 %i.ng, 0, !dbg !1186
  br i1 %.not17.i.i68.i, label %bb.dn, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !1188

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, %bb.db, %bb.cz
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !1189 ; 6 uses
  %i.ni = load i64, ptr %i.nh, align 8, !dbg !1195, !alias.scope !1087, !noalias !1095, !noundef !15
  %i.nj = icmp eq i64 %i.ni, 0, !dbg !1200
  br i1 %i.nj, label %bb.df, label %bb.dd, !dbg !1200, !prof !427

bb.dd:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.dm unwind label %bb.dc, !dbg !1201, !noalias !1146

bb.de:                                            ; preds = %bb.dj, %bb.dh, %bb.dg
  %i.nk = landingpad { ptr, i32 }
          cleanup
  %i.nl = load i64, ptr %i.nh, align 8, !dbg !1203, !alias.scope !1087, !noalias !1095, !noundef !15
  %i.nm = add i64 %i.nl, 1, !dbg !1208
  store i64 %i.nm, ptr %i.nh, align 8, !dbg !1209, !alias.scope !1087, !noalias !1095
  br label %bb.ee, !dbg !1212

bb.df:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  store i64 -1, ptr %i.nh, align 8, !dbg !1213, !alias.scope !1087, !noalias !1095
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1218
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !1223
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !1229
  store i64 0, ptr %i.np, align 8, !dbg !1229, !alias.scope !1087, !noalias !1095
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.no, i8 0, i64 32, i1 false), !dbg !1230, !alias.scope !1087, !noalias !1095
  %i.nq = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1231, !noalias !1115 ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 6, !dbg !1242
  call void @llvm.assume(i1 %i.nr), !dbg !1242
  %i.ns = icmp samesign ugt i64 %i.nq, 4, !dbg !1243
  br i1 %i.ns, label %bb.dg, label %bb.dh, !dbg !1257

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !1257, !noalias !1115
  store ptr @3, ptr %i.j, align 8, !dbg !1257, !noalias !1115
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !1257
  store i64 23, ptr %i.nt, align 8, !dbg !1257, !noalias !1115
  %i.nu = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !1257
  store ptr @3, ptr %i.nu, align 8, !dbg !1257, !noalias !1115
  %i.nv = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !1257
  store i64 23, ptr %i.nv, align 8, !dbg !1257, !noalias !1115
  %i.nw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !1257
  store ptr @9, ptr %i.nw, align 8, !dbg !1257, !noalias !1115
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.di unwind label %bb.de, !dbg !1257, !noalias !1146

bb.dh:                                            ; preds = %bb.di, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1258, !noalias !1115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1259, !noalias !1115
  store i64 %i.mn, ptr %i.h, align 8, !dbg !1259, !noalias !1115
  %.sroa.025.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1259
  store ptr %i.mq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1259, !noalias !1115
  %.sroa.025.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !1259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !1259, !noalias !1115
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152, !dbg !1259
  store ptr %i.nn, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !dbg !1259, !noalias !1115
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.i, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4)
          to label %bb.dj unwind label %bb.de, !dbg !1258

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !1257, !noalias !1115
  br label %bb.dh, !dbg !1257

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1260, !noalias !1115
  %i.nx = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.i)
          to label %bb.dk unwind label %bb.de, !dbg !1261

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1262, !noalias !1115
  %i.ny = load i64, ptr %i.nh, align 8, !dbg !1263, !alias.scope !1087, !noalias !1095, !noundef !15
  %i.nz = add i64 %i.ny, 1, !dbg !1268
  store i64 %i.nz, ptr %i.nh, align 8, !dbg !1269, !alias.scope !1087, !noalias !1095
  br label %bb.dl, !dbg !1272

bb.dl:                                            ; preds = %bb.eb, %bb.dk
  %.sroa.0.0.i61.i = phi ptr [ %i.ph, %bb.eb ], [ %i.nx, %bb.dk ], !dbg !1273
  %i.oa = load i64, ptr %i.mh, align 8, !dbg !1274, !alias.scope !1087, !noalias !1095, !noundef !15
  %i.ob = add i64 %i.oa, 1, !dbg !1279
  store i64 %i.ob, ptr %i.mh, align 8, !dbg !1280, !alias.scope !1087, !noalias !1095
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !1121

bb.dm:                                            ; preds = %bb.dd
  unreachable

bb.dn:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i
  %i.oc = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1283, !noalias !1115 ; 2 uses
  %i.od = icmp ult i64 %i.oc, 6, !dbg !1290
  call void @llvm.assume(i1 %i.od), !dbg !1290
  %i.oe = icmp samesign ugt i64 %i.oc, 4, !dbg !1291
  br i1 %i.oe, label %bb.do, label %bb.dp, !dbg !1301

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !1301, !noalias !1115
  store ptr @3, ptr %i.n, align 8, !dbg !1301, !noalias !1115
  %i.of = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !1301
  store i64 23, ptr %i.of, align 8, !dbg !1301, !noalias !1115
  %i.og = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !1301
  store ptr @3, ptr %i.og, align 8, !dbg !1301, !noalias !1115
  %i.oh = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !1301
  store i64 23, ptr %i.oh, align 8, !dbg !1301, !noalias !1115
  %i.oi = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !1301
  store ptr @12, ptr %i.oi, align 8, !dbg !1301, !noalias !1115
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 113 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.dq unwind label %bb.dc, !dbg !1301, !noalias !1146

bb.dp:                                            ; preds = %bb.dq, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !1302, !noalias !1115
  store i64 %i.mn, ptr %i.m, align 8, !dbg !1302, !noalias !1115
  %.sroa.618.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !1302
  store ptr %i.mq, ptr %.sroa.618.0..sroa_idx19.i.i, align 8, !dbg !1302, !noalias !1115
  %.sroa.7.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !1302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !1302, !noalias !1115
  %i.oj = invoke fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.m)
          to label %bb.dr unwind label %bb.dc, !dbg !1303, !noalias !1146 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1H_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
  br i1 %i.db, label %bb.r, label %bb.o, !dbg !1881

bb.o:                                             ; preds = %.noexc31.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !1882
  %i.dd = load i8, ptr %i.dc, align 8, !dbg !1882, !range !60, !alias.scope !1845, !noalias !1885, !noundef !15
  %i.de = trunc nuw i8 %i.dd to i1, !dbg !1882
  br i1 %i.de, label %bb.p, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !1888

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i8.i.i = load i8, ptr %i.ct, align 4, !dbg !1889, !range !80, !noalias !1893, !noundef !15 ; 3 uses
  %.not.i9.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 2, !dbg !1894
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i10.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !1895, !range !60, !alias.scope !1845, !noalias !1885 ; 2 uses
  %i.df = icmp eq i8 %.val.i.i.i.i8.i.i, %.pre.i10.i.i
  %or.cond21.i.i.i = select i1 %.not.i9.i.i, i1 %i.df, i1 false, !dbg !1897
  br i1 %or.cond21.i.i.i, label %bb.q, label %._crit_edge.i11.i.i, !dbg !1897

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i12.i.i = load i8, ptr %i.cu, align 1, !dbg !1889, !noalias !1893
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !1898
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !1898, !alias.scope !1845, !noalias !1885 ; 2 uses
  %or.cond.not.i13.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 0, !dbg !1900
  %i.di = icmp eq i8 %.val1.i.i.i.i12.i.i, %i.dh
  %or.cond.i.i.i = select i1 %or.cond.not.i13.i.i, i1 true, i1 %i.di, !dbg !1900
  br i1 %or.cond.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !1900

._crit_edge.i11.i.i:                              ; preds = %bb.p
  %i.dj = trunc nuw i8 %.pre.i10.i.i to i1, !dbg !1903
  br i1 %i.dj, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, label %._crit_edge.i11..thread.i_crit_edge.i.i, !dbg !1905

._crit_edge.i11..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i11.i.i
  %.phi.trans.insert.i29.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i30.i = load i8, ptr %.phi.trans.insert.i29.i, align 1, !dbg !1903, !alias.scope !1845, !noalias !1885
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !1905

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %._crit_edge.i11..thread.i_crit_edge.i.i, %._crit_edge.i11.i.i, %bb.q
  %.sroa.06.0.i.i.i = phi i8 [ 10, %._crit_edge.i11.i.i ], [ %.pre.i30.i, %._crit_edge.i11..thread.i_crit_edge.i.i ], [ %i.dh, %bb.q ], !dbg !1907 ; 2 uses
  %i.dk = lshr i8 %.sroa.06.0.i.i.i, 6, !dbg !1908
  %i.dl = zext nneg i8 %i.dk to i64, !dbg !1910
  %i.dm = and i8 %.sroa.06.0.i.i.i, 63, !dbg !1912
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.dl, !dbg !1913
  %i.do = load i64, ptr %i.dn, align 8, !dbg !1913, !noalias !1893, !noundef !15
  %i.dp = zext nneg i8 %i.dm to i64, !dbg !1914
  %i.dq = shl nuw i64 1, %i.dp, !dbg !1914
  %i.dr = and i64 %i.dq, %i.do, !dbg !1913
  %.not17.i.i.i = icmp eq i64 %i.dr, 0, !dbg !1913
  br i1 %.not17.i.i.i, label %bb.s, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !1915

bb.r:                                             ; preds = %.noexc31.i
  %i.ds = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1916, !noalias !1873 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 6, !dbg !1925
  call void @llvm.assume(i1 %i.dt), !dbg !1925
  %i.du = icmp samesign ugt i64 %i.ds, 4, !dbg !1926
  br i1 %i.du, label %bb.x, label %bb.y, !dbg !1940

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, %bb.q, %bb.o
  %i.dv = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1941, !noalias !1873 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 6, !dbg !1949
  call void @llvm.assume(i1 %i.dw), !dbg !1949
  %i.dx = icmp samesign ugt i64 %i.dv, 4, !dbg !1950
  br i1 %i.dx, label %bb.t, label %bb.u, !dbg !1960

bb.s:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i
  %i.dy = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1961, !noalias !1873 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6, !dbg !1969
  call void @llvm.assume(i1 %i.dz), !dbg !1969
  %i.ea = icmp samesign ugt i64 %i.dy, 4, !dbg !1970
  br i1 %i.ea, label %bb.v, label %bb.w, !dbg !1980

bb.t:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !1960, !noalias !1873
  store ptr @3, ptr %i.ac, align 8, !dbg !1960, !noalias !1873
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !1960
  store i64 23, ptr %i.eb, align 8, !dbg !1960, !noalias !1873
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !1960
  store ptr @3, ptr %i.ec, align 8, !dbg !1960, !noalias !1873
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !1960
  store i64 23, ptr %i.ed, align 8, !dbg !1960, !noalias !1873
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !1960
  store ptr @2, ptr %i.ee, align 8, !dbg !1960, !noalias !1873
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %.noexc32.i unwind label %bb.g, !dbg !1960, !noalias !1825

.noexc32.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !1960, !noalias !1873
  br label %bb.u, !dbg !1960

bb.u:                                             ; preds = %.noexc32.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !1981, !noalias !1873
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4, i1 noundef zeroext true)
          to label %.noexc33.i unwind label %bb.g, !dbg !1982

.noexc33.i:                                       ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 120, !dbg !1985
  store ptr %i.cl, ptr %i.ef, align 8, !dbg !1985, !noalias !1873
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 128, !dbg !1985
  store i64 %i.ck, ptr %i.eg, align 8, !dbg !1985, !noalias !1873
  %i.eh = invoke noundef ptr @_RNvMs_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB4_11SliceByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB18_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.ab)
          to label %.noexc34.i unwind label %bb.g, !dbg !1986

.noexc34.i:                                       ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !1987, !noalias !1873
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !1988

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !1980, !noalias !1873
  store ptr @3, ptr %i.ae, align 8, !dbg !1980, !noalias !1873
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !1980
  store i64 23, ptr %i.ei, align 8, !dbg !1980, !noalias !1873
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !1980
  store ptr @3, ptr %i.ej, align 8, !dbg !1980, !noalias !1873
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !1980
  store i64 23, ptr %i.ek, align 8, !dbg !1980, !noalias !1873
  %i.el = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !1980
  store ptr @5, ptr %i.el, align 8, !dbg !1980, !noalias !1873
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 93 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %.noexc35.i unwind label %bb.g, !dbg !1980, !noalias !1825

.noexc35.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !1980, !noalias !1873
  br label %bb.w, !dbg !1980

bb.w:                                             ; preds = %.noexc35.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !1989, !noalias !1873
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4, i1 noundef zeroext true)
          to label %.noexc36.i unwind label %bb.g, !dbg !1990

.noexc36.i:                                       ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 144, !dbg !1993
  store ptr %0, ptr %i.em, align 8, !dbg !1993, !noalias !1873
  %i.en = getelementptr inbounds nuw i8, ptr %i.ad, i64 152, !dbg !1993
  store ptr %i.cl, ptr %i.en, align 8, !dbg !1993, !noalias !1873
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ad, i64 160, !dbg !1993
  store i64 %i.ck, ptr %i.eo, align 8, !dbg !1993, !noalias !1873
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 120, !dbg !1993
  store i64 0, ptr %i.ep, align 8, !dbg !1993, !noalias !1873
  %i.eq = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.ad)
          to label %.noexc37.i unwind label %bb.g, !dbg !1994

.noexc37.i:                                       ; preds = %.noexc36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !1995, !noalias !1873
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !1988

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !1940, !noalias !1873
  store ptr @3, ptr %i.af, align 8, !dbg !1940, !noalias !1873
  %i.er = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !1940
  store i64 23, ptr %i.er, align 8, !dbg !1940, !noalias !1873
  %i.es = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !1940
  store ptr @3, ptr %i.es, align 8, !dbg !1940, !noalias !1873
  %i.et = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !1940
  store i64 23, ptr %i.et, align 8, !dbg !1940, !noalias !1873
  %i.eu = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !1940
  store ptr @7, ptr %i.eu, align 8, !dbg !1940, !noalias !1873
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 107 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %.noexc38.i unwind label %bb.g, !dbg !1940, !noalias !1825

.noexc38.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !1940, !noalias !1873
  br label %bb.y, !dbg !1940

bb.y:                                             ; preds = %.noexc38.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1996), !dbg !1999
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !2000
  %i.ev = load i64, ptr %0, align 8, !dbg !2000, !range !52, !alias.scope !2005, !noalias !2006, !noundef !15
  %i.ew = trunc nuw i64 %i.ev to i1, !dbg !2013
  %i.ex = load i64, ptr %i.co, align 8, !alias.scope !2005, !noalias !2014
  %i.ey = icmp ne i64 %i.ex, 0
  %not..i.i.i = xor i1 %i.ew, true, !dbg !2013
  %or.cond.i14.i.i = select i1 %not..i.i.i, i1 true, i1 %i.ey, !dbg !2013
  %i.ez = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !2005, !noalias !2014
  %i.fa = icmp eq i8 %i.ez, 0
  %or.cond92.i.i.i = select i1 %or.cond.i14.i.i, i1 true, i1 %i.fa, !dbg !2013
  br i1 %or.cond92.i.i.i, label %bb.z, label %bb.ac, !dbg !2013

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.ct, align 4, !dbg !2015, !range !80, !noalias !2019, !noundef !15 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.cu, align 1, !dbg !2015, !noalias !2019 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i, 2, !dbg !2020
  br i1 %.not.i.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.aa, !dbg !2021

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2022
  %i.fc = load i8, ptr %i.fb, align 8, !dbg !2022, !range !60, !alias.scope !2005, !noalias !2006, !noundef !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !2022 ; 2 uses
  %i.fe = icmp eq i8 %.val.i.i.i.i.i.i.i, %i.fc, !dbg !2026
  br i1 %i.fe, label %bb.ab, label %._crit_edge.i.i.i.i, !dbg !2026

._crit_edge.i.i.i.i:                              ; preds = %bb.aa
  %.pre.i.i.i.i = load i8, ptr %i.fd, align 1, !dbg !2027, !alias.scope !2005, !noalias !2006
  br label %bb.ac, !dbg !2026

bb.ab:                                            ; preds = %bb.aa
  %or.cond.not.i.i.i.i = icmp ne i8 %.val.i.i.i.i.i.i.i, 0, !dbg !2026
  %i.ff = load i8, ptr %i.fd, align 1, !alias.scope !2005, !noalias !2014 ; 2 uses
  %.not12.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, %i.ff
  %or.cond93.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %.not12.i.i.i.i, !dbg !2026
  br i1 %or.cond93.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.ac, !dbg !2026

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i, %bb.y
  %.sroa.12.0.ph.i.i.i = phi i8 [ %i.ff, %bb.ab ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.11.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %i.fc, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.10.0.ph.i.i.i = phi i8 [ %.val1.i.i.i.i.i.i.i, %bb.ab ], [ %.val1.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.9.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %.val.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.064.0.ph.i.i.i = phi i64 [ -9223372036854775807, %bb.ab ], [ -9223372036854775807, %._crit_edge.i.i.i.i ], [ -9223372036854775808, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !2028, !noalias !2031
  store i64 %.sroa.064.0.ph.i.i.i, ptr %i.r, align 8, !dbg !2028, !noalias !2031
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !2028
  store i8 %.sroa.9.0.ph.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !2028, !noalias !2031
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9, !dbg !2028
  store i8 %.sroa.10.0.ph.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !dbg !2028, !noalias !2031
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 10, !dbg !2028
  store i8 %.sroa.11.0.ph.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !dbg !2028, !noalias !2031
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 11, !dbg !2028
  store i8 %.sroa.12.0.ph.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !dbg !2028, !noalias !2031
  %i.fg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc39.i unwind label %bb.g, !dbg !2032, !noalias !1825

.noexc39.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !2036, !noalias !2031
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !2037

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.ab, %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !2038 ; 8 uses
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !2043, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.fj = icmp eq i64 %i.fi, 0, !dbg !2048
  br i1 %i.fj, label %bb.ad, label %bb.ae, !dbg !2048, !prof !427

bb.ad:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  store i64 -1, ptr %i.fh, align 8, !dbg !2049, !alias.scope !2005, !noalias !2014
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !2055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !2059, !noalias !2031
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2059
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %bb.ag unwind label %bb.af, !dbg !2061, !noalias !2062

bb.ae:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
          to label %.noexc40.i unwind label %bb.g, !dbg !2063, !noalias !1825

.noexc40.i:                                       ; preds = %bb.ae
  unreachable, !dbg !2063

bb.af:                                            ; preds = %bb.ad
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ag:                                            ; preds = %bb.ad
  %i.fn = load i64, ptr %i.z, align 8, !dbg !2065, !range !450, !noalias !2031, !noundef !15 ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 2, !dbg !2065
  %i.fp = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !2068
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !2068, !noalias !2031 ; 4 uses
  br i1 %i.fo, label %bb.cl, label %bb.ah, !dbg !2069

bb.ah:                                            ; preds = %bb.ag
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !2070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.537.0..sroa_idx.i.i.i, i64 144, i1 false), !dbg !2070, !noalias !2031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !2071, !noalias !2031
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !2072 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !dbg !2072, !range !60, !alias.scope !2005, !noalias !2076, !noundef !15
  %i.ft = trunc nuw i8 %i.fs to i1, !dbg !2072
  br i1 %i.ft, label %bb.ai, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !2079

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i.i.i54.i.i.i = load i8, ptr %i.ct, align 4, !dbg !2080, !range !80, !noalias !2084, !noundef !15 ; 3 uses
  %.not.i55.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 2, !dbg !2085
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !2086, !range !60, !alias.scope !2005, !noalias !2076 ; 2 uses
  %i.fu = icmp eq i8 %.val.i.i.i.i54.i.i.i, %.pre.i56.i.i.i
  %or.cond21.i.i.i.i = select i1 %.not.i55.i.i.i, i1 %i.fu, i1 false, !dbg !2088
  br i1 %or.cond21.i.i.i.i, label %bb.aj, label %._crit_edge.i57.i.i.i, !dbg !2088

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i.i.i58.i.i.i = load i8, ptr %i.cu, align 1, !dbg !2080, !noalias !2084
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !2089
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !2089, !alias.scope !2005, !noalias !2076 ; 2 uses
  %or.cond.not.i59.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 0, !dbg !2091
  %i.fx = icmp eq i8 %.val1.i.i.i.i58.i.i.i, %i.fw
  %or.cond.i.i.i.i = select i1 %or.cond.not.i59.i.i.i, i1 true, i1 %i.fx, !dbg !2091
  br i1 %or.cond.i.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !2091

._crit_edge.i57.i.i.i:                            ; preds = %bb.ai
  %i.fy = trunc nuw i8 %.pre.i56.i.i.i to i1, !dbg !2094
  br i1 %i.fy, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %._crit_edge.i57..thread.i_crit_edge.i.i.i, !dbg !2096

._crit_edge.i57..thread.i_crit_edge.i.i.i:        ; preds = %._crit_edge.i57.i.i.i
  %.phi.trans.insert.i17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i18.i.i = load i8, ptr %.phi.trans.insert.i17.i.i, align 1, !dbg !2094, !alias.scope !2005, !noalias !2076
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !2096

bb.ak:                                            ; preds = %bb.cb, %bb.bb, %bb.ay, %bb.aw, %bb.al
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i.i, %._crit_edge.i57.i.i.i, %bb.aj
  %.sroa.06.0.i.i.i.i = phi i8 [ 10, %._crit_edge.i57.i.i.i ], [ %.pre.i18.i.i, %._crit_edge.i57..thread.i_crit_edge.i.i.i ], [ %i.fw, %bb.aj ], !dbg !2098 ; 2 uses
  %i.ga = lshr i8 %.sroa.06.0.i.i.i.i, 6, !dbg !2099
  %i.gb = zext nneg i8 %i.ga to i64, !dbg !2101
  %i.gc = and i8 %.sroa.06.0.i.i.i.i, 63, !dbg !2103
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.gb, !dbg !2104
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !2104, !noalias !2084, !noundef !15
  %i.gf = zext nneg i8 %i.gc to i64, !dbg !2105
  %i.gg = shl nuw i64 1, %i.gf, !dbg !2105
  %i.gh = and i64 %i.gg, %i.ge, !dbg !2104
  %.not17.i.i.i.i = icmp eq i64 %i.gh, 0, !dbg !2104
  br i1 %.not17.i.i.i.i, label %bb.av, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !2106

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.aj, %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !2107 ; 6 uses
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !2113, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.gk = icmp eq i64 %i.gj, 0, !dbg !2118
  br i1 %i.gk, label %bb.an, label %bb.al, !dbg !2118, !prof !427

bb.al:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.au unwind label %bb.ak, !dbg !2119, !noalias !2062

bb.am:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load i64, ptr %i.gi, align 8, !dbg !2121, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.gn = add i64 %i.gm, 1, !dbg !2126
  store i64 %i.gn, ptr %i.gi, align 8, !dbg !2127, !alias.scope !2005, !noalias !2014
  br label %bb.cm, !dbg !2130

bb.an:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  store i64 -1, ptr %i.gi, align 8, !dbg !2131, !alias.scope !2005, !noalias !2014
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2136
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !2141
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !2147
  store i64 0, ptr %i.gq, align 8, !dbg !2147, !alias.scope !2005, !noalias !2014
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i8 0, i64 32, i1 false), !dbg !2148, !alias.scope !2005, !noalias !2014
  %i.gr = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !2149, !noalias !2031 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6, !dbg !2160
  call void @llvm.assume(i1 %i.gs), !dbg !2160
  %i.gt = icmp samesign ugt i64 %i.gr, 4, !dbg !2161
  br i1 %i.gt, label %bb.ao, label %bb.ap, !dbg !2175

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !2175, !noalias !2031
  store ptr @3, ptr %i.u, align 8, !dbg !2175, !noalias !2031
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !2175
  store i64 23, ptr %i.gu, align 8, !dbg !2175, !noalias !2031
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !2175
  store ptr @3, ptr %i.gv, align 8, !dbg !2175, !noalias !2031
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !2175
  store i64 23, ptr %i.gw, align 8, !dbg !2175, !noalias !2031
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !2175
  store ptr @9, ptr %i.gx, align 8, !dbg !2175, !noalias !2031
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.aq unwind label %bb.am, !dbg !2175, !noalias !2062

bb.ap:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !2176, !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !2177, !noalias !2031
  store i64 %i.fn, ptr %i.s, align 8, !dbg !2177, !noalias !2031
  %.sroa.025.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !2177
  store ptr %i.fq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !2177, !noalias !2031
  %.sroa.025.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !2177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.025.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, i64 144, i1 false), !dbg !2177, !noalias !2031
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160, !dbg !2177
  store ptr %i.go, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !dbg !2177, !noalias !2031
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4)
          to label %bb.ar unwind label %bb.am, !dbg !2176

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !2175, !noalias !2031
  br label %bb.ap, !dbg !2175

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !2178, !noalias !2031
  %i.gy = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.t)
          to label %bb.as unwind label %bb.am, !dbg !2179

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !2180, !noalias !2031
  %i.gz = load i64, ptr %i.gi, align 8, !dbg !2181, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.ha = add i64 %i.gz, 1, !dbg !2186
  store i64 %i.ha, ptr %i.gi, align 8, !dbg !2187, !alias.scope !2005, !noalias !2014
  br label %bb.at, !dbg !2190

bb.at:                                            ; preds = %bb.cj, %bb.as
  %.sroa.0.0.i16.i.i = phi ptr [ %i.la, %bb.cj ], [ %i.gy, %bb.as ], !dbg !2191
  %i.hb = load i64, ptr %i.fh, align 8, !dbg !2192, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.hc = add i64 %i.hb, 1, !dbg !2197
  store i64 %i.hc, ptr %i.fh, align 8, !dbg !2198, !alias.scope !2005, !noalias !2014
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !2037

bb.au:                                            ; preds = %bb.al
  unreachable

bb.av:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.hd = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !2201, !noalias !2031 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 6, !dbg !2208
  call void @llvm.assume(i1 %i.he), !dbg !2208
  %i.hf = icmp samesign ugt i64 %i.hd, 4, !dbg !2209
  br i1 %i.hf, label %bb.aw, label %.thread154.i.i.i, !dbg !2219

.thread154.i.i.i:                                 ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !2220, !noalias !2031
  store i64 %i.fn, ptr %i.x, align 8, !dbg !2220, !noalias !2031
  %.sroa.618.0..sroa_idx19155.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !2220
  store ptr %i.fq, ptr %.sroa.618.0..sroa_idx19155.i.i.i, align 8, !dbg !2220, !noalias !2031
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1H_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !2440
  store i64 23, ptr %i.ki, align 8, !dbg !2440, !noalias !2031
  %i.kj = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !2440
  store ptr @3, ptr %i.kj, align 8, !dbg !2440, !noalias !2031
  %i.kk = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !2440
  store i64 23, ptr %i.kk, align 8, !dbg !2440, !noalias !2031
  %i.kl = getelementptr inbounds nuw i8, ptr %i.w, i64 32, !dbg !2440
  store ptr @14, ptr %i.kl, align 8, !dbg !2440, !noalias !2031
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %bb.ce unwind label %bb.ak, !dbg !2440, !noalias !2062

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.km = phi i64 [ %i.ke, %bb.ca ], [ %.pre141.i.i.i, %bb.ce ], !dbg !2441 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !2446, !noalias !2031
  %i.kn = icmp ult i64 %i.km, 9223372036854775807, !dbg !2447
  br i1 %i.kn, label %bb.cg, label %bb.cd, !dbg !2449, !prof !427

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63.i.i.i unwind label %bb.cf, !dbg !2450, !noalias !2062

.noexc63.i.i.i:                                   ; preds = %bb.cd
  unreachable, !dbg !2450

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !2440, !noalias !2031
  %.pre141.i.i.i = load i64, ptr %i.hl, align 8, !dbg !2441, !alias.scope !2005, !noalias !2451
  br label %bb.cc, !dbg !2440

bb.cf:                                            ; preds = %bb.cd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm, !dbg !2454

bb.cg:                                            ; preds = %bb.cc
  %i.kp = add nuw nsw i64 %i.km, 1, !dbg !2455
  store i64 %i.kp, ptr %i.hl, align 8, !dbg !2457, !alias.scope !2005, !noalias !2451
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !2460
  %i.kr = load ptr, ptr %i.kq, align 8, !dbg !2460, !alias.scope !2005, !noalias !2014, !nonnull !15, !noundef !15
  %i.ks = load i64, ptr %i.hp, align 8, !dbg !2473, !alias.scope !2005, !noalias !2014, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !2474, !noalias !2031
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4, i1 noundef zeroext true)
          to label %bb.ci unwind label %bb.ch, !dbg !2474

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load i64, ptr %i.hl, align 8, !dbg !2477, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.kv = add i64 %i.ku, -1, !dbg !2482
  store i64 %i.kv, ptr %i.hl, align 8, !dbg !2483, !alias.scope !2005, !noalias !2014
  br label %bb.cm, !dbg !2486

bb.ci:                                            ; preds = %bb.cg
  %i.kw = getelementptr inbounds nuw i8, ptr %i.v, i64 144, !dbg !2487
  store ptr %0, ptr %i.kw, align 8, !dbg !2487, !noalias !2031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !dbg !2487, !noalias !2031
  %i.kx = getelementptr inbounds nuw i8, ptr %i.v, i64 152, !dbg !2487
  store ptr %i.kr, ptr %i.kx, align 8, !dbg !2487, !noalias !2031
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !2487
  store i64 %i.ks, ptr %i.ky, align 8, !dbg !2487, !noalias !2031
  %i.kz = getelementptr inbounds nuw i8, ptr %i.v, i64 120, !dbg !2487
  store i64 0, ptr %i.kz, align 8, !dbg !2487, !noalias !2031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !2488, !noalias !2031
  %i.la = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.v)
          to label %bb.cj unwind label %bb.ch, !dbg !2489

bb.cj:                                            ; preds = %bb.ci
  %i.lb = load i64, ptr %i.hl, align 8, !dbg !2490, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.lc = add i64 %i.lb, -1, !dbg !2495
  store i64 %i.lc, ptr %i.hl, align 8, !dbg !2496, !alias.scope !2005, !noalias !2014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !2499, !noalias !2031
  br label %bb.at, !dbg !2190

bb.ck:                                            ; preds = %bb.cl, %bb.bz, %.thread85.i.i.i
  %.sroa.0.2.i.i.i = phi ptr [ %i.fq, %bb.cl ], [ %i.kb, %bb.bz ], [ %.sroa.0.0.i60.ph.i.i.i, %.thread85.i.i.i ], !dbg !2500
  %i.ld = load i64, ptr %i.fh, align 8, !dbg !2503, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.le = add i64 %i.ld, 1, !dbg !2508
  store i64 %i.le, ptr %i.fh, align 8, !dbg !2509, !alias.scope !2005, !noalias !2014
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !2037

bb.cl:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !2071, !noalias !2031
  br label %bb.ck, !dbg !2512

bb.cm:                                            ; preds = %bb.ch, %bb.cf, %.loopexit.i.i.i.i, %bb.am, %bb.ak, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.af ], [ %i.gl, %bb.am ], [ %i.kt, %bb.ch ], [ %i.ko, %bb.cf ], [ %i.fz, %bb.ak ], [ %.pn.i.i.i.i, %.loopexit.i.i.i.i ]
  %i.lf = load i64, ptr %i.fh, align 8, !dbg !2514, !alias.scope !2005, !noalias !2014, !noundef !15
  %i.lg = add i64 %i.lf, 1, !dbg !2519
  store i64 %i.lg, ptr %i.fh, align 8, !dbg !2520, !alias.scope !2005, !noalias !2014
  br label %.body.i, !dbg !2523

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.ck, %bb.at, %.noexc39.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.fg, %.noexc39.i ], [ %.sroa.0.2.i.i.i, %bb.ck ], [ %.sroa.0.0.i16.i.i, %bb.at ], !dbg !2524
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !2525
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !2526

bb.cn:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !1821, !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !1821, !noalias !1746
  %.pre132.i = load ptr, ptr %i.aq, align 8, !dbg !1831, !noalias !1746
  %.pre133.i = load i64, ptr %i.cc, align 8, !dbg !1826, !noalias !1746
  br label %bb.j, !dbg !1821

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, %.noexc37.i, %.noexc34.i, %.noexc.i
  %.sroa.0.0.i27.i = phi ptr [ %i.da, %.noexc.i ], [ %.sroa.0.1.i.i.i, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.eq, %.noexc37.i ], [ %i.eh, %.noexc34.i ], !dbg !2528
  invoke void @_RNvXs_NtCs2Ov1vZ5ZpMw_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc11 unwind label %bb.fi, !dbg !2529

.noexc11:                                         ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !1756, !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !1756, !noalias !1746
  br label %bb.fj, !dbg !2532

bb.co:                                            ; preds = %.body.i
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !2534
  unreachable, !dbg !2534

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i, %bb.f, %bb.d
  %i.li = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !2535, !noalias !1746 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 6, !dbg !2543
  call void @llvm.assume(i1 %i.lj), !dbg !2543
  %i.lk = icmp samesign ugt i64 %i.li, 4, !dbg !2544
  br i1 %i.lk, label %bb.cq, label %bb.cr, !dbg !2554

bb.cp:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i
  %i.ll = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !2555, !noalias !1746 ; 2 uses
  %i.lm = icmp ult i64 %i.ll, 6, !dbg !2563
  call void @llvm.assume(i1 %i.lm), !dbg !2563
  %i.ln = icmp samesign ugt i64 %i.ll, 4, !dbg !2564
  br i1 %i.ln, label %bb.ef, label %.thread.i, !dbg !2574

bb.cq:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !2575, !noalias !1746
  store ptr %i.as, ptr %i.ai, align 8, !dbg !2575, !noalias !1746
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !2575
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCsG258MDvU3F_3std4path4PathENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !2575, !noalias !1746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !2554, !noalias !1746
  store ptr @3, ptr %i.ah, align 8, !dbg !2554, !noalias !1746
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !2554
  store i64 23, ptr %i.lo, align 8, !dbg !2554, !noalias !1746
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !2554
  store ptr @3, ptr %i.lp, align 8, !dbg !2554, !noalias !1746
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !2554
  store i64 23, ptr %i.lq, align 8, !dbg !2554, !noalias !1746
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !2554
  store ptr @20, ptr %i.lr, align 8, !dbg !2554, !noalias !1746
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @19, ptr noundef nonnull %i.ai, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %.noexc12 unwind label %bb.fi, !dbg !2554

.noexc12:                                         ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !2554, !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !2554, !noalias !1746
  br label %bb.cr, !dbg !2554

bb.cr:                                            ; preds = %.noexc12, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2578), !dbg !2581
  call void @llvm.experimental.noalias.scope.decl(metadata !2582), !dbg !2581
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !2584
  %i.ls = load i64, ptr %0, align 8, !dbg !2584, !range !52, !alias.scope !2589, !noalias !2590, !noundef !15
  %i.lt = trunc nuw i64 %i.ls to i1, !dbg !2596
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !alias.scope !2589, !noalias !2597
  %i.lw = icmp ne i64 %i.lv, 0
  %not..i41.i = xor i1 %i.lt, true, !dbg !2596
  %or.cond.i42.i = select i1 %not..i41.i, i1 true, i1 %i.lw, !dbg !2596
  %i.lx = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !2589, !noalias !2597
  %i.ly = icmp eq i8 %i.lx, 0
  %or.cond82.i.i = select i1 %or.cond.i42.i, i1 true, i1 %i.ly, !dbg !2596
  br i1 %or.cond82.i.i, label %bb.cs, label %bb.cv, !dbg !2596

bb.cs:                                            ; preds = %bb.cr
  %.val.i.i.i.i51.i = load ptr, ptr %1, align 8, !dbg !2598, !alias.scope !2601, !noalias !2602, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.lz = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 84, !dbg !2603 ; 2 uses
  %.val.i.i.i.i.i52.i = load i8, ptr %i.lz, align 4, !dbg !2603, !range !80, !noalias !2605, !noundef !15 ; 4 uses
  %i.ma = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 85, !dbg !2603 ; 2 uses
  %.val1.i.i.i.i.i53.i = load i8, ptr %i.ma, align 1, !dbg !2603, !noalias !2605 ; 3 uses
  %.not.i.i54.i = icmp eq i8 %.val.i.i.i.i.i52.i, 2, !dbg !2606
  br i1 %.not.i.i54.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.ct, !dbg !2607

bb.ct:                                            ; preds = %bb.cs
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2608
  %i.mc = load i8, ptr %i.mb, align 8, !dbg !2608, !range !60, !alias.scope !2589, !noalias !2590, !noundef !15 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !2608 ; 2 uses
  %i.me = icmp eq i8 %.val.i.i.i.i.i52.i, %i.mc, !dbg !2612
  br i1 %i.me, label %bb.cu, label %._crit_edge.i.i55.i, !dbg !2612

._crit_edge.i.i55.i:                              ; preds = %bb.ct
  %.pre.i.i56.i = load i8, ptr %i.md, align 1, !dbg !2613, !alias.scope !2589, !noalias !2590
  br label %bb.cv, !dbg !2612

bb.cu:                                            ; preds = %bb.ct
  %or.cond.not.i.i57.i = icmp ne i8 %.val.i.i.i.i.i52.i, 0, !dbg !2612
  %i.mf = load i8, ptr %i.md, align 1, !alias.scope !2589, !noalias !2597 ; 2 uses
  %.not12.i.i58.i = icmp eq i8 %.val1.i.i.i.i.i53.i, %i.mf
  %or.cond83.i.i = select i1 %or.cond.not.i.i57.i, i1 true, i1 %.not12.i.i58.i, !dbg !2612
  br i1 %or.cond83.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.cv, !dbg !2612

bb.cv:                                            ; preds = %bb.cu, %._crit_edge.i.i55.i, %bb.cr
  %.sroa.12.0.ph.i43.i = phi i8 [ %i.mf, %bb.cu ], [ %.pre.i.i56.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.11.0.ph.i43.i = phi i8 [ 0, %bb.cu ], [ %i.mc, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.10.0.ph.i44.i = phi i8 [ %.val1.i.i.i.i.i53.i, %bb.cu ], [ %.val1.i.i.i.i.i53.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.9.0.ph.i45.i = phi i8 [ 0, %bb.cu ], [ %.val.i.i.i.i.i52.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.060.0.ph.i.i = phi i64 [ -9223372036854775807, %bb.cu ], [ -9223372036854775807, %._crit_edge.i.i55.i ], [ -9223372036854775808, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2614, !noalias !2617
  store i64 %.sroa.060.0.ph.i.i, ptr %i.g, align 8, !dbg !2614, !noalias !2617
  %.sroa.9.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !2614
  store i8 %.sroa.9.0.ph.i45.i, ptr %.sroa.9.0..sroa_idx.i47.i, align 8, !dbg !2614, !noalias !2617
  %.sroa.10.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9, !dbg !2614
  store i8 %.sroa.10.0.ph.i44.i, ptr %.sroa.10.0..sroa_idx.i48.i, align 1, !dbg !2614, !noalias !2617
  %.sroa.11.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.g, i64 10, !dbg !2614
  store i8 %.sroa.11.0.ph.i43.i, ptr %.sroa.11.0..sroa_idx.i49.i, align 2, !dbg !2614, !noalias !2617
  %.sroa.12.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.g, i64 11, !dbg !2614
  store i8 %.sroa.12.0.ph.i43.i, ptr %.sroa.12.0..sroa_idx.i50.i, align 1, !dbg !2614, !noalias !2617
  %i.mg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc13 unwind label %bb.fi, !dbg !2618

.noexc13:                                         ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2622, !noalias !2617
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !2623

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i: ; preds = %bb.cu, %bb.cs
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !2624 ; 8 uses
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !2629, !alias.scope !2589, !noalias !2597, !noundef !15
  %i.mj = icmp eq i64 %i.mi, 0, !dbg !2634
  br i1 %i.mj, label %bb.cw, label %.invoke, !dbg !2634, !prof !427

bb.cw:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i
  store i64 -1, ptr %i.mh, align 8, !dbg !2635, !alias.scope !2589, !noalias !2597
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !2641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !2645, !noalias !2617
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2645
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ml, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %bb.cy unwind label %bb.cx, !dbg !2647, !noalias !2648

bb.cx:                                            ; preds = %bb.cw
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cy:                                            ; preds = %bb.cw
  %i.mn = load i64, ptr %i.o, align 8, !dbg !2649, !range !450, !noalias !2617, !noundef !15 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, 2, !dbg !2649
  %i.mp = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !2652
  %i.mq = load ptr, ptr %i.mp, align 8, !dbg !2652, !noalias !2617 ; 3 uses
  br i1 %i.mo, label %bb.ed, label %bb.cz, !dbg !2653

bb.cz:                                            ; preds = %bb.cy
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !2654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx.i.i, i64 136, i1 false), !dbg !2654, !noalias !2617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !2655, !noalias !2617
  %i.mr = load i8, ptr %i.bf, align 8, !dbg !2656, !range !60, !alias.scope !2589, !noalias !2660, !noundef !15
  %i.ms = trunc nuw i8 %i.mr to i1, !dbg !2656
  br i1 %i.ms, label %bb.da, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !2663

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i54.i.i = load i8, ptr %i.lz, align 4, !dbg !2664, !range !80, !noalias !2668, !noundef !15 ; 3 uses
  %.not.i55.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 2, !dbg !2669
  %.phi.trans.insert.i.i62.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i = load i8, ptr %.phi.trans.insert.i.i62.i, align 8, !dbg !2670, !range !60, !alias.scope !2589, !noalias !2660 ; 2 uses
  %i.mt = icmp eq i8 %.val.i.i.i.i54.i.i, %.pre.i56.i.i
  %or.cond21.i.i63.i = select i1 %.not.i55.i.i, i1 %i.mt, i1 false, !dbg !2672
  br i1 %or.cond21.i.i63.i, label %bb.db, label %._crit_edge.i57.i.i, !dbg !2672

bb.db:                                            ; preds = %bb.da
  %.val1.i.i.i.i58.i.i = load i8, ptr %i.ma, align 1, !dbg !2664, !noalias !2668
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !2673
  %i.mv = load i8, ptr %i.mu, align 1, !dbg !2673, !alias.scope !2589, !noalias !2660 ; 2 uses
  %or.cond.not.i59.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 0, !dbg !2675
  %i.mw = icmp eq i8 %.val1.i.i.i.i58.i.i, %i.mv
  %or.cond.i.i69.i = select i1 %or.cond.not.i59.i.i, i1 true, i1 %i.mw, !dbg !2675
  br i1 %or.cond.i.i69.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !2675

._crit_edge.i57.i.i:                              ; preds = %bb.da
  %i.mx = trunc nuw i8 %.pre.i56.i.i to i1, !dbg !2678
  br i1 %i.mx, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, label %._crit_edge.i57..thread.i_crit_edge.i.i, !dbg !2680

._crit_edge.i57..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i57.i.i
  %.phi.trans.insert.i64.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i65.i = load i8, ptr %.phi.trans.insert.i64.i, align 1, !dbg !2678, !alias.scope !2589, !noalias !2660
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !2680

bb.dc:                                            ; preds = %bb.dt, %bb.dp, %bb.do, %bb.dd
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i, %._crit_edge.i57.i.i, %bb.db
  %.sroa.06.0.i.i67.i = phi i8 [ 10, %._crit_edge.i57.i.i ], [ %.pre.i65.i, %._crit_edge.i57..thread.i_crit_edge.i.i ], [ %i.mv, %bb.db ], !dbg !2682 ; 2 uses
  %i.mz = lshr i8 %.sroa.06.0.i.i67.i, 6, !dbg !2683
  %i.na = zext nneg i8 %i.mz to i64, !dbg !2685
  %i.nb = and i8 %.sroa.06.0.i.i67.i, 63, !dbg !2687
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i51.i, i64 %i.na, !dbg !2688
  %i.nd = load i64, ptr %i.nc, align 8, !dbg !2688, !noalias !2668, !noundef !15
  %i.ne = zext nneg i8 %i.nb to i64, !dbg !2689
  %i.nf = shl nuw i64 1, %i.ne, !dbg !2689
  %i.ng = and i64 %i.nf, %i.nd, !dbg !2688
  %.not17.i.i68.i = icmp eq i64 %i.ng, 0, !dbg !2688
  br i1 %.not17.i.i68.i, label %bb.dn, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !2690

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, %bb.db, %bb.cz
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !2691 ; 6 uses
  %i.ni = load i64, ptr %i.nh, align 8, !dbg !2697, !alias.scope !2589, !noalias !2597, !noundef !15
  %i.nj = icmp eq i64 %i.ni, 0, !dbg !2702
  br i1 %i.nj, label %bb.df, label %bb.dd, !dbg !2702, !prof !427

bb.dd:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.dm unwind label %bb.dc, !dbg !2703, !noalias !2648

bb.de:                                            ; preds = %bb.dj, %bb.dh, %bb.dg
  %i.nk = landingpad { ptr, i32 }
          cleanup
  %i.nl = load i64, ptr %i.nh, align 8, !dbg !2705, !alias.scope !2589, !noalias !2597, !noundef !15
  %i.nm = add i64 %i.nl, 1, !dbg !2710
  store i64 %i.nm, ptr %i.nh, align 8, !dbg !2711, !alias.scope !2589, !noalias !2597
  br label %bb.ee, !dbg !2714

bb.df:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  store i64 -1, ptr %i.nh, align 8, !dbg !2715, !alias.scope !2589, !noalias !2597
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2720
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !2725
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !2731
  store i64 0, ptr %i.np, align 8, !dbg !2731, !alias.scope !2589, !noalias !2597
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.no, i8 0, i64 32, i1 false), !dbg !2732, !alias.scope !2589, !noalias !2597
  %i.nq = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !2733, !noalias !2617 ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 6, !dbg !2744
  call void @llvm.assume(i1 %i.nr), !dbg !2744
  %i.ns = icmp samesign ugt i64 %i.nq, 4, !dbg !2745
  br i1 %i.ns, label %bb.dg, label %bb.dh, !dbg !2759

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !2759, !noalias !2617
  store ptr @3, ptr %i.j, align 8, !dbg !2759, !noalias !2617
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !2759
  store i64 23, ptr %i.nt, align 8, !dbg !2759, !noalias !2617
  %i.nu = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !2759
  store ptr @3, ptr %i.nu, align 8, !dbg !2759, !noalias !2617
  %i.nv = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !2759
  store i64 23, ptr %i.nv, align 8, !dbg !2759, !noalias !2617
  %i.nw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !2759
  store ptr @9, ptr %i.nw, align 8, !dbg !2759, !noalias !2617
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.di unwind label %bb.de, !dbg !2759, !noalias !2648

bb.dh:                                            ; preds = %bb.di, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !2760, !noalias !2617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !2761, !noalias !2617
  store i64 %i.mn, ptr %i.h, align 8, !dbg !2761, !noalias !2617
  %.sroa.025.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2761
  store ptr %i.mq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2761, !noalias !2617
  %.sroa.025.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !2761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !2761, !noalias !2617
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152, !dbg !2761
  store ptr %i.nn, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !dbg !2761, !noalias !2617
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.i, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4)
          to label %bb.dj unwind label %bb.de, !dbg !2760

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !2759, !noalias !2617
  br label %bb.dh, !dbg !2759

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2762, !noalias !2617
  %i.nx = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.i)
          to label %bb.dk unwind label %bb.de, !dbg !2763

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2764, !noalias !2617
  %i.ny = load i64, ptr %i.nh, align 8, !dbg !2765, !alias.scope !2589, !noalias !2597, !noundef !15
  %i.nz = add i64 %i.ny, 1, !dbg !2770
  store i64 %i.nz, ptr %i.nh, align 8, !dbg !2771, !alias.scope !2589, !noalias !2597
  br label %bb.dl, !dbg !2774

bb.dl:                                            ; preds = %bb.eb, %bb.dk
  %.sroa.0.0.i61.i = phi ptr [ %i.ph, %bb.eb ], [ %i.nx, %bb.dk ], !dbg !2775
  %i.oa = load i64, ptr %i.mh, align 8, !dbg !2776, !alias.scope !2589, !noalias !2597, !noundef !15
  %i.ob = add i64 %i.oa, 1, !dbg !2781
  store i64 %i.ob, ptr %i.mh, align 8, !dbg !2782, !alias.scope !2589, !noalias !2597
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !2623

bb.dm:                                            ; preds = %bb.dd
  unreachable

bb.dn:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i
  %i.oc = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !2785, !noalias !2617 ; 2 uses
  %i.od = icmp ult i64 %i.oc, 6, !dbg !2792
  call void @llvm.assume(i1 %i.od), !dbg !2792
  %i.oe = icmp samesign ugt i64 %i.oc, 4, !dbg !2793
  br i1 %i.oe, label %bb.do, label %bb.dp, !dbg !2803

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !2803, !noalias !2617
  store ptr @3, ptr %i.n, align 8, !dbg !2803, !noalias !2617
  %i.of = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !2803
  store i64 23, ptr %i.of, align 8, !dbg !2803, !noalias !2617
  %i.og = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !2803
  store ptr @3, ptr %i.og, align 8, !dbg !2803, !noalias !2617
  %i.oh = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !2803
  store i64 23, ptr %i.oh, align 8, !dbg !2803, !noalias !2617
  %i.oi = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !2803
  store ptr @12, ptr %i.oi, align 8, !dbg !2803, !noalias !2617
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 113 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.dq unwind label %bb.dc, !dbg !2803, !noalias !2648

bb.dp:                                            ; preds = %bb.dq, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !2804, !noalias !2617
  store i64 %i.mn, ptr %i.m, align 8, !dbg !2804, !noalias !2617
  %.sroa.618.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !2804
  store ptr %i.mq, ptr %.sroa.618.0..sroa_idx19.i.i, align 8, !dbg !2804, !noalias !2617
  %.sroa.7.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !2804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !2804, !noalias !2617
  %i.oj = invoke fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.m)
          to label %bb.dr unwind label %bb.dc, !dbg !2805, !noalias !2648 ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1H_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
  br i1 %i.db, label %bb.r, label %bb.o, !dbg !3364

bb.o:                                             ; preds = %.noexc31.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !3365
  %i.dd = load i8, ptr %i.dc, align 8, !dbg !3365, !range !60, !alias.scope !3328, !noalias !3368, !noundef !15
  %i.de = trunc nuw i8 %i.dd to i1, !dbg !3365
  br i1 %i.de, label %bb.p, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !3371

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i8.i.i = load i8, ptr %i.ct, align 4, !dbg !3372, !range !80, !noalias !3376, !noundef !15 ; 3 uses
  %.not.i9.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 2, !dbg !3377
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i10.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !3378, !range !60, !alias.scope !3328, !noalias !3368 ; 2 uses
  %i.df = icmp eq i8 %.val.i.i.i.i8.i.i, %.pre.i10.i.i
  %or.cond21.i.i.i = select i1 %.not.i9.i.i, i1 %i.df, i1 false, !dbg !3380
  br i1 %or.cond21.i.i.i, label %bb.q, label %._crit_edge.i11.i.i, !dbg !3380

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i12.i.i = load i8, ptr %i.cu, align 1, !dbg !3372, !noalias !3376
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !3381
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !3381, !alias.scope !3328, !noalias !3368 ; 2 uses
  %or.cond.not.i13.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 0, !dbg !3383
  %i.di = icmp eq i8 %.val1.i.i.i.i12.i.i, %i.dh
  %or.cond.i.i.i = select i1 %or.cond.not.i13.i.i, i1 true, i1 %i.di, !dbg !3383
  br i1 %or.cond.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !3383

._crit_edge.i11.i.i:                              ; preds = %bb.p
  %i.dj = trunc nuw i8 %.pre.i10.i.i to i1, !dbg !3386
  br i1 %i.dj, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, label %._crit_edge.i11..thread.i_crit_edge.i.i, !dbg !3388

._crit_edge.i11..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i11.i.i
  %.phi.trans.insert.i29.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i30.i = load i8, ptr %.phi.trans.insert.i29.i, align 1, !dbg !3386, !alias.scope !3328, !noalias !3368
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !3388

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %._crit_edge.i11..thread.i_crit_edge.i.i, %._crit_edge.i11.i.i, %bb.q
  %.sroa.06.0.i.i.i = phi i8 [ 10, %._crit_edge.i11.i.i ], [ %.pre.i30.i, %._crit_edge.i11..thread.i_crit_edge.i.i ], [ %i.dh, %bb.q ], !dbg !3390 ; 2 uses
  %i.dk = lshr i8 %.sroa.06.0.i.i.i, 6, !dbg !3391
  %i.dl = zext nneg i8 %i.dk to i64, !dbg !3393
  %i.dm = and i8 %.sroa.06.0.i.i.i, 63, !dbg !3395
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.dl, !dbg !3396
  %i.do = load i64, ptr %i.dn, align 8, !dbg !3396, !noalias !3376, !noundef !15
  %i.dp = zext nneg i8 %i.dm to i64, !dbg !3397
  %i.dq = shl nuw i64 1, %i.dp, !dbg !3397
  %i.dr = and i64 %i.dq, %i.do, !dbg !3396
  %.not17.i.i.i = icmp eq i64 %i.dr, 0, !dbg !3396
  br i1 %.not17.i.i.i, label %bb.s, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !3398

bb.r:                                             ; preds = %.noexc31.i
  %i.ds = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !3399, !noalias !3356 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 6, !dbg !3408
  call void @llvm.assume(i1 %i.dt), !dbg !3408
  %i.du = icmp samesign ugt i64 %i.ds, 4, !dbg !3409
  br i1 %i.du, label %bb.x, label %bb.y, !dbg !3423

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, %bb.q, %bb.o
  %i.dv = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !3424, !noalias !3356 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 6, !dbg !3432
  call void @llvm.assume(i1 %i.dw), !dbg !3432
  %i.dx = icmp samesign ugt i64 %i.dv, 4, !dbg !3433
  br i1 %i.dx, label %bb.t, label %bb.u, !dbg !3443

bb.s:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i
  %i.dy = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !3444, !noalias !3356 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6, !dbg !3452
  call void @llvm.assume(i1 %i.dz), !dbg !3452
  %i.ea = icmp samesign ugt i64 %i.dy, 4, !dbg !3453
  br i1 %i.ea, label %bb.v, label %bb.w, !dbg !3463

bb.t:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !3443, !noalias !3356
  store ptr @3, ptr %i.ac, align 8, !dbg !3443, !noalias !3356
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3443
  store i64 23, ptr %i.eb, align 8, !dbg !3443, !noalias !3356
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3443
  store ptr @3, ptr %i.ec, align 8, !dbg !3443, !noalias !3356
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !3443
  store i64 23, ptr %i.ed, align 8, !dbg !3443, !noalias !3356
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !3443
  store ptr @2, ptr %i.ee, align 8, !dbg !3443, !noalias !3356
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %.noexc32.i unwind label %bb.g, !dbg !3443, !noalias !3308

.noexc32.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !3443, !noalias !3356
  br label %bb.u, !dbg !3443

bb.u:                                             ; preds = %.noexc32.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !3464, !noalias !3356
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4, i1 noundef zeroext true)
          to label %.noexc33.i unwind label %bb.g, !dbg !3465

.noexc33.i:                                       ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 120, !dbg !3468
  store ptr %i.cl, ptr %i.ef, align 8, !dbg !3468, !noalias !3356
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 128, !dbg !3468
  store i64 %i.ck, ptr %i.eg, align 8, !dbg !3468, !noalias !3356
  %i.eh = invoke noundef ptr @_RNvMs_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB4_11SliceByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB18_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.ab)
          to label %.noexc34.i unwind label %bb.g, !dbg !3469

.noexc34.i:                                       ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !3470, !noalias !3356
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !3471

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !3463, !noalias !3356
  store ptr @3, ptr %i.ae, align 8, !dbg !3463, !noalias !3356
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !3463
  store i64 23, ptr %i.ei, align 8, !dbg !3463, !noalias !3356
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !3463
  store ptr @3, ptr %i.ej, align 8, !dbg !3463, !noalias !3356
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !3463
  store i64 23, ptr %i.ek, align 8, !dbg !3463, !noalias !3356
  %i.el = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !3463
  store ptr @5, ptr %i.el, align 8, !dbg !3463, !noalias !3356
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 93 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %.noexc35.i unwind label %bb.g, !dbg !3463, !noalias !3308

.noexc35.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !3463, !noalias !3356
  br label %bb.w, !dbg !3463

bb.w:                                             ; preds = %.noexc35.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !3472, !noalias !3356
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4, i1 noundef zeroext true)
          to label %.noexc36.i unwind label %bb.g, !dbg !3473

.noexc36.i:                                       ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 144, !dbg !3476
  store ptr %0, ptr %i.em, align 8, !dbg !3476, !noalias !3356
  %i.en = getelementptr inbounds nuw i8, ptr %i.ad, i64 152, !dbg !3476
  store ptr %i.cl, ptr %i.en, align 8, !dbg !3476, !noalias !3356
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ad, i64 160, !dbg !3476
  store i64 %i.ck, ptr %i.eo, align 8, !dbg !3476, !noalias !3356
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 120, !dbg !3476
  store i64 0, ptr %i.ep, align 8, !dbg !3476, !noalias !3356
  %i.eq = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.ad)
          to label %.noexc37.i unwind label %bb.g, !dbg !3477

.noexc37.i:                                       ; preds = %.noexc36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !3478, !noalias !3356
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !3471

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !3423, !noalias !3356
  store ptr @3, ptr %i.af, align 8, !dbg !3423, !noalias !3356
  %i.er = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !3423
  store i64 23, ptr %i.er, align 8, !dbg !3423, !noalias !3356
  %i.es = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !3423
  store ptr @3, ptr %i.es, align 8, !dbg !3423, !noalias !3356
  %i.et = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !3423
  store i64 23, ptr %i.et, align 8, !dbg !3423, !noalias !3356
  %i.eu = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !3423
  store ptr @7, ptr %i.eu, align 8, !dbg !3423, !noalias !3356
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 107 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %.noexc38.i unwind label %bb.g, !dbg !3423, !noalias !3308

.noexc38.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !3423, !noalias !3356
  br label %bb.y, !dbg !3423

bb.y:                                             ; preds = %.noexc38.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !3479), !dbg !3482
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !3483
  %i.ev = load i64, ptr %0, align 8, !dbg !3483, !range !52, !alias.scope !3488, !noalias !3489, !noundef !15
  %i.ew = trunc nuw i64 %i.ev to i1, !dbg !3496
  %i.ex = load i64, ptr %i.co, align 8, !alias.scope !3488, !noalias !3497
  %i.ey = icmp ne i64 %i.ex, 0
  %not..i.i.i = xor i1 %i.ew, true, !dbg !3496
  %or.cond.i14.i.i = select i1 %not..i.i.i, i1 true, i1 %i.ey, !dbg !3496
  %i.ez = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !3488, !noalias !3497
  %i.fa = icmp eq i8 %i.ez, 0
  %or.cond92.i.i.i = select i1 %or.cond.i14.i.i, i1 true, i1 %i.fa, !dbg !3496
  br i1 %or.cond92.i.i.i, label %bb.z, label %bb.ac, !dbg !3496

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.ct, align 4, !dbg !3498, !range !80, !noalias !3502, !noundef !15 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.cu, align 1, !dbg !3498, !noalias !3502 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i, 2, !dbg !3503
  br i1 %.not.i.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.aa, !dbg !3504

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3505
  %i.fc = load i8, ptr %i.fb, align 8, !dbg !3505, !range !60, !alias.scope !3488, !noalias !3489, !noundef !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !3505 ; 2 uses
  %i.fe = icmp eq i8 %.val.i.i.i.i.i.i.i, %i.fc, !dbg !3509
  br i1 %i.fe, label %bb.ab, label %._crit_edge.i.i.i.i, !dbg !3509

._crit_edge.i.i.i.i:                              ; preds = %bb.aa
  %.pre.i.i.i.i = load i8, ptr %i.fd, align 1, !dbg !3510, !alias.scope !3488, !noalias !3489
  br label %bb.ac, !dbg !3509

bb.ab:                                            ; preds = %bb.aa
  %or.cond.not.i.i.i.i = icmp ne i8 %.val.i.i.i.i.i.i.i, 0, !dbg !3509
  %i.ff = load i8, ptr %i.fd, align 1, !alias.scope !3488, !noalias !3497 ; 2 uses
  %.not12.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, %i.ff
  %or.cond93.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %.not12.i.i.i.i, !dbg !3509
  br i1 %or.cond93.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.ac, !dbg !3509

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i, %bb.y
  %.sroa.12.0.ph.i.i.i = phi i8 [ %i.ff, %bb.ab ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.11.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %i.fc, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.10.0.ph.i.i.i = phi i8 [ %.val1.i.i.i.i.i.i.i, %bb.ab ], [ %.val1.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.9.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %.val.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.064.0.ph.i.i.i = phi i64 [ -9223372036854775807, %bb.ab ], [ -9223372036854775807, %._crit_edge.i.i.i.i ], [ -9223372036854775808, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3511, !noalias !3514
  store i64 %.sroa.064.0.ph.i.i.i, ptr %i.r, align 8, !dbg !3511, !noalias !3514
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !3511
  store i8 %.sroa.9.0.ph.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !3511, !noalias !3514
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9, !dbg !3511
  store i8 %.sroa.10.0.ph.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !dbg !3511, !noalias !3514
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 10, !dbg !3511
  store i8 %.sroa.11.0.ph.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !dbg !3511, !noalias !3514
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 11, !dbg !3511
  store i8 %.sroa.12.0.ph.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !dbg !3511, !noalias !3514
  %i.fg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc39.i unwind label %bb.g, !dbg !3515, !noalias !3308

.noexc39.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3519, !noalias !3514
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !3520

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.ab, %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !3521 ; 8 uses
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !3526, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.fj = icmp eq i64 %i.fi, 0, !dbg !3531
  br i1 %i.fj, label %bb.ad, label %bb.ae, !dbg !3531, !prof !427

bb.ad:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  store i64 -1, ptr %i.fh, align 8, !dbg !3532, !alias.scope !3488, !noalias !3497
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !3538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !3542, !noalias !3514
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !3542
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %bb.ag unwind label %bb.af, !dbg !3544, !noalias !3545

bb.ae:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
          to label %.noexc40.i unwind label %bb.g, !dbg !3546, !noalias !3308

.noexc40.i:                                       ; preds = %bb.ae
  unreachable, !dbg !3546

bb.af:                                            ; preds = %bb.ad
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ag:                                            ; preds = %bb.ad
  %i.fn = load i64, ptr %i.z, align 8, !dbg !3548, !range !450, !noalias !3514, !noundef !15 ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 2, !dbg !3548
  %i.fp = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !3551
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !3551, !noalias !3514 ; 4 uses
  br i1 %i.fo, label %bb.cl, label %bb.ah, !dbg !3552

bb.ah:                                            ; preds = %bb.ag
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !3553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.537.0..sroa_idx.i.i.i, i64 144, i1 false), !dbg !3553, !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !3554, !noalias !3514
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !3555 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !dbg !3555, !range !60, !alias.scope !3488, !noalias !3559, !noundef !15
  %i.ft = trunc nuw i8 %i.fs to i1, !dbg !3555
  br i1 %i.ft, label %bb.ai, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !3562

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i.i.i54.i.i.i = load i8, ptr %i.ct, align 4, !dbg !3563, !range !80, !noalias !3567, !noundef !15 ; 3 uses
  %.not.i55.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 2, !dbg !3568
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !3569, !range !60, !alias.scope !3488, !noalias !3559 ; 2 uses
  %i.fu = icmp eq i8 %.val.i.i.i.i54.i.i.i, %.pre.i56.i.i.i
  %or.cond21.i.i.i.i = select i1 %.not.i55.i.i.i, i1 %i.fu, i1 false, !dbg !3571
  br i1 %or.cond21.i.i.i.i, label %bb.aj, label %._crit_edge.i57.i.i.i, !dbg !3571

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i.i.i58.i.i.i = load i8, ptr %i.cu, align 1, !dbg !3563, !noalias !3567
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !3572
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !3572, !alias.scope !3488, !noalias !3559 ; 2 uses
  %or.cond.not.i59.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 0, !dbg !3574
  %i.fx = icmp eq i8 %.val1.i.i.i.i58.i.i.i, %i.fw
  %or.cond.i.i.i.i = select i1 %or.cond.not.i59.i.i.i, i1 true, i1 %i.fx, !dbg !3574
  br i1 %or.cond.i.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !3574

._crit_edge.i57.i.i.i:                            ; preds = %bb.ai
  %i.fy = trunc nuw i8 %.pre.i56.i.i.i to i1, !dbg !3577
  br i1 %i.fy, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %._crit_edge.i57..thread.i_crit_edge.i.i.i, !dbg !3579

._crit_edge.i57..thread.i_crit_edge.i.i.i:        ; preds = %._crit_edge.i57.i.i.i
  %.phi.trans.insert.i17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i18.i.i = load i8, ptr %.phi.trans.insert.i17.i.i, align 1, !dbg !3577, !alias.scope !3488, !noalias !3559
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !3579

bb.ak:                                            ; preds = %bb.cb, %bb.bb, %bb.ay, %bb.aw, %bb.al
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i.i, %._crit_edge.i57.i.i.i, %bb.aj
  %.sroa.06.0.i.i.i.i = phi i8 [ 10, %._crit_edge.i57.i.i.i ], [ %.pre.i18.i.i, %._crit_edge.i57..thread.i_crit_edge.i.i.i ], [ %i.fw, %bb.aj ], !dbg !3581 ; 2 uses
  %i.ga = lshr i8 %.sroa.06.0.i.i.i.i, 6, !dbg !3582
  %i.gb = zext nneg i8 %i.ga to i64, !dbg !3584
  %i.gc = and i8 %.sroa.06.0.i.i.i.i, 63, !dbg !3586
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.gb, !dbg !3587
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !3587, !noalias !3567, !noundef !15
  %i.gf = zext nneg i8 %i.gc to i64, !dbg !3588
  %i.gg = shl nuw i64 1, %i.gf, !dbg !3588
  %i.gh = and i64 %i.gg, %i.ge, !dbg !3587
  %.not17.i.i.i.i = icmp eq i64 %i.gh, 0, !dbg !3587
  br i1 %.not17.i.i.i.i, label %bb.av, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !3589

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.aj, %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !3590 ; 6 uses
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !3596, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.gk = icmp eq i64 %i.gj, 0, !dbg !3601
  br i1 %i.gk, label %bb.an, label %bb.al, !dbg !3601, !prof !427

bb.al:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.au unwind label %bb.ak, !dbg !3602, !noalias !3545

bb.am:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load i64, ptr %i.gi, align 8, !dbg !3604, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.gn = add i64 %i.gm, 1, !dbg !3609
  store i64 %i.gn, ptr %i.gi, align 8, !dbg !3610, !alias.scope !3488, !noalias !3497
  br label %bb.cm, !dbg !3613

bb.an:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  store i64 -1, ptr %i.gi, align 8, !dbg !3614, !alias.scope !3488, !noalias !3497
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !3619
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !3624
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !3630
  store i64 0, ptr %i.gq, align 8, !dbg !3630, !alias.scope !3488, !noalias !3497
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i8 0, i64 32, i1 false), !dbg !3631, !alias.scope !3488, !noalias !3497
  %i.gr = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !3632, !noalias !3514 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6, !dbg !3643
  call void @llvm.assume(i1 %i.gs), !dbg !3643
  %i.gt = icmp samesign ugt i64 %i.gr, 4, !dbg !3644
  br i1 %i.gt, label %bb.ao, label %bb.ap, !dbg !3658

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !3658, !noalias !3514
  store ptr @3, ptr %i.u, align 8, !dbg !3658, !noalias !3514
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !3658
  store i64 23, ptr %i.gu, align 8, !dbg !3658, !noalias !3514
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !3658
  store ptr @3, ptr %i.gv, align 8, !dbg !3658, !noalias !3514
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !3658
  store i64 23, ptr %i.gw, align 8, !dbg !3658, !noalias !3514
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !3658
  store ptr @9, ptr %i.gx, align 8, !dbg !3658, !noalias !3514
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.aq unwind label %bb.am, !dbg !3658, !noalias !3545

bb.ap:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !3659, !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !3660, !noalias !3514
  store i64 %i.fn, ptr %i.s, align 8, !dbg !3660, !noalias !3514
  %.sroa.025.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !3660
  store ptr %i.fq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !3660, !noalias !3514
  %.sroa.025.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !3660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.025.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, i64 144, i1 false), !dbg !3660, !noalias !3514
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160, !dbg !3660
  store ptr %i.go, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !dbg !3660, !noalias !3514
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.ar unwind label %bb.am, !dbg !3659

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !3658, !noalias !3514
  br label %bb.ap, !dbg !3658

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !3661, !noalias !3514
  %i.gy = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.t)
          to label %bb.as unwind label %bb.am, !dbg !3662

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !3663, !noalias !3514
  %i.gz = load i64, ptr %i.gi, align 8, !dbg !3664, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.ha = add i64 %i.gz, 1, !dbg !3669
  store i64 %i.ha, ptr %i.gi, align 8, !dbg !3670, !alias.scope !3488, !noalias !3497
  br label %bb.at, !dbg !3673

bb.at:                                            ; preds = %bb.cj, %bb.as
  %.sroa.0.0.i16.i.i = phi ptr [ %i.la, %bb.cj ], [ %i.gy, %bb.as ], !dbg !3674
  %i.hb = load i64, ptr %i.fh, align 8, !dbg !3675, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.hc = add i64 %i.hb, 1, !dbg !3680
  store i64 %i.hc, ptr %i.fh, align 8, !dbg !3681, !alias.scope !3488, !noalias !3497
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !3520

bb.au:                                            ; preds = %bb.al
  unreachable

bb.av:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.hd = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !3684, !noalias !3514 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 6, !dbg !3691
  call void @llvm.assume(i1 %i.he), !dbg !3691
  %i.hf = icmp samesign ugt i64 %i.hd, 4, !dbg !3692
  br i1 %i.hf, label %bb.aw, label %.thread154.i.i.i, !dbg !3702

.thread154.i.i.i:                                 ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !3703, !noalias !3514
  store i64 %i.fn, ptr %i.x, align 8, !dbg !3703, !noalias !3514
  %.sroa.618.0..sroa_idx19155.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !3703
  store ptr %i.fq, ptr %.sroa.618.0..sroa_idx19155.i.i.i, align 8, !dbg !3703, !noalias !3514
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1H_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !3923
  store i64 23, ptr %i.ki, align 8, !dbg !3923, !noalias !3514
  %i.kj = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !3923
  store ptr @3, ptr %i.kj, align 8, !dbg !3923, !noalias !3514
  %i.kk = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !3923
  store i64 23, ptr %i.kk, align 8, !dbg !3923, !noalias !3514
  %i.kl = getelementptr inbounds nuw i8, ptr %i.w, i64 32, !dbg !3923
  store ptr @14, ptr %i.kl, align 8, !dbg !3923, !noalias !3514
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %bb.ce unwind label %bb.ak, !dbg !3923, !noalias !3545

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.km = phi i64 [ %i.ke, %bb.ca ], [ %.pre141.i.i.i, %bb.ce ], !dbg !3924 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !3929, !noalias !3514
  %i.kn = icmp ult i64 %i.km, 9223372036854775807, !dbg !3930
  br i1 %i.kn, label %bb.cg, label %bb.cd, !dbg !3932, !prof !427

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63.i.i.i unwind label %bb.cf, !dbg !3933, !noalias !3545

.noexc63.i.i.i:                                   ; preds = %bb.cd
  unreachable, !dbg !3933

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !3923, !noalias !3514
  %.pre141.i.i.i = load i64, ptr %i.hl, align 8, !dbg !3924, !alias.scope !3488, !noalias !3934
  br label %bb.cc, !dbg !3923

bb.cf:                                            ; preds = %bb.cd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm, !dbg !3937

bb.cg:                                            ; preds = %bb.cc
  %i.kp = add nuw nsw i64 %i.km, 1, !dbg !3938
  store i64 %i.kp, ptr %i.hl, align 8, !dbg !3940, !alias.scope !3488, !noalias !3934
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !3943
  %i.kr = load ptr, ptr %i.kq, align 8, !dbg !3943, !alias.scope !3488, !noalias !3497, !nonnull !15, !noundef !15
  %i.ks = load i64, ptr %i.hp, align 8, !dbg !3956, !alias.scope !3488, !noalias !3497, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !3957, !noalias !3514
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4, i1 noundef zeroext true)
          to label %bb.ci unwind label %bb.ch, !dbg !3957

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load i64, ptr %i.hl, align 8, !dbg !3960, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.kv = add i64 %i.ku, -1, !dbg !3965
  store i64 %i.kv, ptr %i.hl, align 8, !dbg !3966, !alias.scope !3488, !noalias !3497
  br label %bb.cm, !dbg !3969

bb.ci:                                            ; preds = %bb.cg
  %i.kw = getelementptr inbounds nuw i8, ptr %i.v, i64 144, !dbg !3970
  store ptr %0, ptr %i.kw, align 8, !dbg !3970, !noalias !3514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !dbg !3970, !noalias !3514
  %i.kx = getelementptr inbounds nuw i8, ptr %i.v, i64 152, !dbg !3970
  store ptr %i.kr, ptr %i.kx, align 8, !dbg !3970, !noalias !3514
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !3970
  store i64 %i.ks, ptr %i.ky, align 8, !dbg !3970, !noalias !3514
  %i.kz = getelementptr inbounds nuw i8, ptr %i.v, i64 120, !dbg !3970
  store i64 0, ptr %i.kz, align 8, !dbg !3970, !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !3971, !noalias !3514
  %i.la = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.v)
          to label %bb.cj unwind label %bb.ch, !dbg !3972

bb.cj:                                            ; preds = %bb.ci
  %i.lb = load i64, ptr %i.hl, align 8, !dbg !3973, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.lc = add i64 %i.lb, -1, !dbg !3978
  store i64 %i.lc, ptr %i.hl, align 8, !dbg !3979, !alias.scope !3488, !noalias !3497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !3982, !noalias !3514
  br label %bb.at, !dbg !3673

bb.ck:                                            ; preds = %bb.cl, %bb.bz, %.thread85.i.i.i
  %.sroa.0.2.i.i.i = phi ptr [ %i.fq, %bb.cl ], [ %i.kb, %bb.bz ], [ %.sroa.0.0.i60.ph.i.i.i, %.thread85.i.i.i ], !dbg !3983
  %i.ld = load i64, ptr %i.fh, align 8, !dbg !3986, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.le = add i64 %i.ld, 1, !dbg !3991
  store i64 %i.le, ptr %i.fh, align 8, !dbg !3992, !alias.scope !3488, !noalias !3497
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !3520

bb.cl:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !3554, !noalias !3514
  br label %bb.ck, !dbg !3995

bb.cm:                                            ; preds = %bb.ch, %bb.cf, %.loopexit.i.i.i.i, %bb.am, %bb.ak, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.af ], [ %i.gl, %bb.am ], [ %i.kt, %bb.ch ], [ %i.ko, %bb.cf ], [ %i.fz, %bb.ak ], [ %.pn.i.i.i.i, %.loopexit.i.i.i.i ]
  %i.lf = load i64, ptr %i.fh, align 8, !dbg !3997, !alias.scope !3488, !noalias !3497, !noundef !15
  %i.lg = add i64 %i.lf, 1, !dbg !4002
  store i64 %i.lg, ptr %i.fh, align 8, !dbg !4003, !alias.scope !3488, !noalias !3497
  br label %.body.i, !dbg !4006

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.ck, %bb.at, %.noexc39.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.fg, %.noexc39.i ], [ %.sroa.0.2.i.i.i, %bb.ck ], [ %.sroa.0.0.i16.i.i, %bb.at ], !dbg !4007
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !4008
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4009

bb.cn:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !3304, !noalias !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !3304, !noalias !3229
  %.pre132.i = load ptr, ptr %i.aq, align 8, !dbg !3314, !noalias !3229
  %.pre133.i = load i64, ptr %i.cc, align 8, !dbg !3309, !noalias !3229
  br label %bb.j, !dbg !3304

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, %.noexc37.i, %.noexc34.i, %.noexc.i
  %.sroa.0.0.i27.i = phi ptr [ %i.da, %.noexc.i ], [ %.sroa.0.1.i.i.i, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.eq, %.noexc37.i ], [ %i.eh, %.noexc34.i ], !dbg !4011
  invoke void @_RNvXs_NtCs2Ov1vZ5ZpMw_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc11 unwind label %bb.fi, !dbg !4012

.noexc11:                                         ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !3239, !noalias !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !3239, !noalias !3229
  br label %bb.fj, !dbg !4015

bb.co:                                            ; preds = %.body.i
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !4017
  unreachable, !dbg !4017

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i, %bb.f, %bb.d
  %i.li = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !4018, !noalias !3229 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 6, !dbg !4026
  call void @llvm.assume(i1 %i.lj), !dbg !4026
  %i.lk = icmp samesign ugt i64 %i.li, 4, !dbg !4027
  br i1 %i.lk, label %bb.cq, label %bb.cr, !dbg !4037

bb.cp:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i
  %i.ll = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !4038, !noalias !3229 ; 2 uses
  %i.lm = icmp ult i64 %i.ll, 6, !dbg !4046
  call void @llvm.assume(i1 %i.lm), !dbg !4046
  %i.ln = icmp samesign ugt i64 %i.ll, 4, !dbg !4047
  br i1 %i.ln, label %bb.ef, label %.thread.i, !dbg !4057

bb.cq:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !4058, !noalias !3229
  store ptr %i.as, ptr %i.ai, align 8, !dbg !4058, !noalias !3229
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !4058
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCsG258MDvU3F_3std4path4PathENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !4058, !noalias !3229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !4037, !noalias !3229
  store ptr @3, ptr %i.ah, align 8, !dbg !4037, !noalias !3229
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !4037
  store i64 23, ptr %i.lo, align 8, !dbg !4037, !noalias !3229
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !4037
  store ptr @3, ptr %i.lp, align 8, !dbg !4037, !noalias !3229
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !4037
  store i64 23, ptr %i.lq, align 8, !dbg !4037, !noalias !3229
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !4037
  store ptr @20, ptr %i.lr, align 8, !dbg !4037, !noalias !3229
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @19, ptr noundef nonnull %i.ai, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %.noexc12 unwind label %bb.fi, !dbg !4037

.noexc12:                                         ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !4037, !noalias !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !4037, !noalias !3229
  br label %bb.cr, !dbg !4037

bb.cr:                                            ; preds = %.noexc12, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4061), !dbg !4064
  call void @llvm.experimental.noalias.scope.decl(metadata !4065), !dbg !4064
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !4067
  %i.ls = load i64, ptr %0, align 8, !dbg !4067, !range !52, !alias.scope !4072, !noalias !4073, !noundef !15
  %i.lt = trunc nuw i64 %i.ls to i1, !dbg !4079
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !alias.scope !4072, !noalias !4080
  %i.lw = icmp ne i64 %i.lv, 0
  %not..i41.i = xor i1 %i.lt, true, !dbg !4079
  %or.cond.i42.i = select i1 %not..i41.i, i1 true, i1 %i.lw, !dbg !4079
  %i.lx = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !4072, !noalias !4080
  %i.ly = icmp eq i8 %i.lx, 0
  %or.cond82.i.i = select i1 %or.cond.i42.i, i1 true, i1 %i.ly, !dbg !4079
  br i1 %or.cond82.i.i, label %bb.cs, label %bb.cv, !dbg !4079

bb.cs:                                            ; preds = %bb.cr
  %.val.i.i.i.i51.i = load ptr, ptr %1, align 8, !dbg !4081, !alias.scope !4084, !noalias !4085, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.lz = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 84, !dbg !4086 ; 2 uses
  %.val.i.i.i.i.i52.i = load i8, ptr %i.lz, align 4, !dbg !4086, !range !80, !noalias !4088, !noundef !15 ; 4 uses
  %i.ma = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 85, !dbg !4086 ; 2 uses
  %.val1.i.i.i.i.i53.i = load i8, ptr %i.ma, align 1, !dbg !4086, !noalias !4088 ; 3 uses
  %.not.i.i54.i = icmp eq i8 %.val.i.i.i.i.i52.i, 2, !dbg !4089
  br i1 %.not.i.i54.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.ct, !dbg !4090

bb.ct:                                            ; preds = %bb.cs
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !4091
  %i.mc = load i8, ptr %i.mb, align 8, !dbg !4091, !range !60, !alias.scope !4072, !noalias !4073, !noundef !15 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !4091 ; 2 uses
  %i.me = icmp eq i8 %.val.i.i.i.i.i52.i, %i.mc, !dbg !4095
  br i1 %i.me, label %bb.cu, label %._crit_edge.i.i55.i, !dbg !4095

._crit_edge.i.i55.i:                              ; preds = %bb.ct
  %.pre.i.i56.i = load i8, ptr %i.md, align 1, !dbg !4096, !alias.scope !4072, !noalias !4073
  br label %bb.cv, !dbg !4095

bb.cu:                                            ; preds = %bb.ct
  %or.cond.not.i.i57.i = icmp ne i8 %.val.i.i.i.i.i52.i, 0, !dbg !4095
  %i.mf = load i8, ptr %i.md, align 1, !alias.scope !4072, !noalias !4080 ; 2 uses
  %.not12.i.i58.i = icmp eq i8 %.val1.i.i.i.i.i53.i, %i.mf
  %or.cond83.i.i = select i1 %or.cond.not.i.i57.i, i1 true, i1 %.not12.i.i58.i, !dbg !4095
  br i1 %or.cond83.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.cv, !dbg !4095

bb.cv:                                            ; preds = %bb.cu, %._crit_edge.i.i55.i, %bb.cr
  %.sroa.12.0.ph.i43.i = phi i8 [ %i.mf, %bb.cu ], [ %.pre.i.i56.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.11.0.ph.i43.i = phi i8 [ 0, %bb.cu ], [ %i.mc, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.10.0.ph.i44.i = phi i8 [ %.val1.i.i.i.i.i53.i, %bb.cu ], [ %.val1.i.i.i.i.i53.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.9.0.ph.i45.i = phi i8 [ 0, %bb.cu ], [ %.val.i.i.i.i.i52.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.060.0.ph.i.i = phi i64 [ -9223372036854775807, %bb.cu ], [ -9223372036854775807, %._crit_edge.i.i55.i ], [ -9223372036854775808, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4097, !noalias !4100
  store i64 %.sroa.060.0.ph.i.i, ptr %i.g, align 8, !dbg !4097, !noalias !4100
  %.sroa.9.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !4097
  store i8 %.sroa.9.0.ph.i45.i, ptr %.sroa.9.0..sroa_idx.i47.i, align 8, !dbg !4097, !noalias !4100
  %.sroa.10.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9, !dbg !4097
  store i8 %.sroa.10.0.ph.i44.i, ptr %.sroa.10.0..sroa_idx.i48.i, align 1, !dbg !4097, !noalias !4100
  %.sroa.11.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.g, i64 10, !dbg !4097
  store i8 %.sroa.11.0.ph.i43.i, ptr %.sroa.11.0..sroa_idx.i49.i, align 2, !dbg !4097, !noalias !4100
  %.sroa.12.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.g, i64 11, !dbg !4097
  store i8 %.sroa.12.0.ph.i43.i, ptr %.sroa.12.0..sroa_idx.i50.i, align 1, !dbg !4097, !noalias !4100
  %i.mg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc13 unwind label %bb.fi, !dbg !4101

.noexc13:                                         ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4105, !noalias !4100
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4106

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i: ; preds = %bb.cu, %bb.cs
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !4107 ; 8 uses
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !4112, !alias.scope !4072, !noalias !4080, !noundef !15
  %i.mj = icmp eq i64 %i.mi, 0, !dbg !4117
  br i1 %i.mj, label %bb.cw, label %.invoke, !dbg !4117, !prof !427

bb.cw:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i
  store i64 -1, ptr %i.mh, align 8, !dbg !4118, !alias.scope !4072, !noalias !4080
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !4124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !4128, !noalias !4100
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4128
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ml, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %bb.cy unwind label %bb.cx, !dbg !4130, !noalias !4131

bb.cx:                                            ; preds = %bb.cw
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cy:                                            ; preds = %bb.cw
  %i.mn = load i64, ptr %i.o, align 8, !dbg !4132, !range !450, !noalias !4100, !noundef !15 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, 2, !dbg !4132
  %i.mp = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !4135
  %i.mq = load ptr, ptr %i.mp, align 8, !dbg !4135, !noalias !4100 ; 3 uses
  br i1 %i.mo, label %bb.ed, label %bb.cz, !dbg !4136

bb.cz:                                            ; preds = %bb.cy
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !4137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx.i.i, i64 136, i1 false), !dbg !4137, !noalias !4100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !4138, !noalias !4100
  %i.mr = load i8, ptr %i.bf, align 8, !dbg !4139, !range !60, !alias.scope !4072, !noalias !4143, !noundef !15
  %i.ms = trunc nuw i8 %i.mr to i1, !dbg !4139
  br i1 %i.ms, label %bb.da, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !4146

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i54.i.i = load i8, ptr %i.lz, align 4, !dbg !4147, !range !80, !noalias !4151, !noundef !15 ; 3 uses
  %.not.i55.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 2, !dbg !4152
  %.phi.trans.insert.i.i62.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i = load i8, ptr %.phi.trans.insert.i.i62.i, align 8, !dbg !4153, !range !60, !alias.scope !4072, !noalias !4143 ; 2 uses
  %i.mt = icmp eq i8 %.val.i.i.i.i54.i.i, %.pre.i56.i.i
  %or.cond21.i.i63.i = select i1 %.not.i55.i.i, i1 %i.mt, i1 false, !dbg !4155
  br i1 %or.cond21.i.i63.i, label %bb.db, label %._crit_edge.i57.i.i, !dbg !4155

bb.db:                                            ; preds = %bb.da
  %.val1.i.i.i.i58.i.i = load i8, ptr %i.ma, align 1, !dbg !4147, !noalias !4151
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !4156
  %i.mv = load i8, ptr %i.mu, align 1, !dbg !4156, !alias.scope !4072, !noalias !4143 ; 2 uses
  %or.cond.not.i59.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 0, !dbg !4158
  %i.mw = icmp eq i8 %.val1.i.i.i.i58.i.i, %i.mv
  %or.cond.i.i69.i = select i1 %or.cond.not.i59.i.i, i1 true, i1 %i.mw, !dbg !4158
  br i1 %or.cond.i.i69.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !4158

._crit_edge.i57.i.i:                              ; preds = %bb.da
  %i.mx = trunc nuw i8 %.pre.i56.i.i to i1, !dbg !4161
  br i1 %i.mx, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, label %._crit_edge.i57..thread.i_crit_edge.i.i, !dbg !4163

._crit_edge.i57..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i57.i.i
  %.phi.trans.insert.i64.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i65.i = load i8, ptr %.phi.trans.insert.i64.i, align 1, !dbg !4161, !alias.scope !4072, !noalias !4143
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !4163

bb.dc:                                            ; preds = %bb.dt, %bb.dp, %bb.do, %bb.dd
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i, %._crit_edge.i57.i.i, %bb.db
  %.sroa.06.0.i.i67.i = phi i8 [ 10, %._crit_edge.i57.i.i ], [ %.pre.i65.i, %._crit_edge.i57..thread.i_crit_edge.i.i ], [ %i.mv, %bb.db ], !dbg !4165 ; 2 uses
  %i.mz = lshr i8 %.sroa.06.0.i.i67.i, 6, !dbg !4166
  %i.na = zext nneg i8 %i.mz to i64, !dbg !4168
  %i.nb = and i8 %.sroa.06.0.i.i67.i, 63, !dbg !4170
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i51.i, i64 %i.na, !dbg !4171
  %i.nd = load i64, ptr %i.nc, align 8, !dbg !4171, !noalias !4151, !noundef !15
  %i.ne = zext nneg i8 %i.nb to i64, !dbg !4172
  %i.nf = shl nuw i64 1, %i.ne, !dbg !4172
  %i.ng = and i64 %i.nf, %i.nd, !dbg !4171
  %.not17.i.i68.i = icmp eq i64 %i.ng, 0, !dbg !4171
  br i1 %.not17.i.i68.i, label %bb.dn, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !4173

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, %bb.db, %bb.cz
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !4174 ; 6 uses
  %i.ni = load i64, ptr %i.nh, align 8, !dbg !4180, !alias.scope !4072, !noalias !4080, !noundef !15
  %i.nj = icmp eq i64 %i.ni, 0, !dbg !4185
  br i1 %i.nj, label %bb.df, label %bb.dd, !dbg !4185, !prof !427

bb.dd:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.dm unwind label %bb.dc, !dbg !4186, !noalias !4131

bb.de:                                            ; preds = %bb.dj, %bb.dh, %bb.dg
  %i.nk = landingpad { ptr, i32 }
          cleanup
  %i.nl = load i64, ptr %i.nh, align 8, !dbg !4188, !alias.scope !4072, !noalias !4080, !noundef !15
  %i.nm = add i64 %i.nl, 1, !dbg !4193
  store i64 %i.nm, ptr %i.nh, align 8, !dbg !4194, !alias.scope !4072, !noalias !4080
  br label %bb.ee, !dbg !4197

bb.df:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  store i64 -1, ptr %i.nh, align 8, !dbg !4198, !alias.scope !4072, !noalias !4080
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !4203
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !4208
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !4214
  store i64 0, ptr %i.np, align 8, !dbg !4214, !alias.scope !4072, !noalias !4080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.no, i8 0, i64 32, i1 false), !dbg !4215, !alias.scope !4072, !noalias !4080
  %i.nq = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !4216, !noalias !4100 ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 6, !dbg !4227
  call void @llvm.assume(i1 %i.nr), !dbg !4227
  %i.ns = icmp samesign ugt i64 %i.nq, 4, !dbg !4228
  br i1 %i.ns, label %bb.dg, label %bb.dh, !dbg !4242

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4242, !noalias !4100
  store ptr @3, ptr %i.j, align 8, !dbg !4242, !noalias !4100
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !4242
  store i64 23, ptr %i.nt, align 8, !dbg !4242, !noalias !4100
  %i.nu = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !4242
  store ptr @3, ptr %i.nu, align 8, !dbg !4242, !noalias !4100
  %i.nv = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !4242
  store i64 23, ptr %i.nv, align 8, !dbg !4242, !noalias !4100
  %i.nw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !4242
  store ptr @9, ptr %i.nw, align 8, !dbg !4242, !noalias !4100
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.di unwind label %bb.de, !dbg !4242, !noalias !4131

bb.dh:                                            ; preds = %bb.di, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !4243, !noalias !4100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !4244, !noalias !4100
  store i64 %i.mn, ptr %i.h, align 8, !dbg !4244, !noalias !4100
  %.sroa.025.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !4244
  store ptr %i.mq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4244, !noalias !4100
  %.sroa.025.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !4244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !4244, !noalias !4100
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152, !dbg !4244
  store ptr %i.nn, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !dbg !4244, !noalias !4100
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.i, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.dj unwind label %bb.de, !dbg !4243

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !4242, !noalias !4100
  br label %bb.dh, !dbg !4242

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !4245, !noalias !4100
  %i.nx = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.i)
          to label %bb.dk unwind label %bb.de, !dbg !4246

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !4247, !noalias !4100
  %i.ny = load i64, ptr %i.nh, align 8, !dbg !4248, !alias.scope !4072, !noalias !4080, !noundef !15
  %i.nz = add i64 %i.ny, 1, !dbg !4253
  store i64 %i.nz, ptr %i.nh, align 8, !dbg !4254, !alias.scope !4072, !noalias !4080
  br label %bb.dl, !dbg !4257

bb.dl:                                            ; preds = %bb.eb, %bb.dk
  %.sroa.0.0.i61.i = phi ptr [ %i.ph, %bb.eb ], [ %i.nx, %bb.dk ], !dbg !4258
  %i.oa = load i64, ptr %i.mh, align 8, !dbg !4259, !alias.scope !4072, !noalias !4080, !noundef !15
  %i.ob = add i64 %i.oa, 1, !dbg !4264
  store i64 %i.ob, ptr %i.mh, align 8, !dbg !4265, !alias.scope !4072, !noalias !4080
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4106

bb.dm:                                            ; preds = %bb.dd
  unreachable

bb.dn:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i
  %i.oc = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !4268, !noalias !4100 ; 2 uses
  %i.od = icmp ult i64 %i.oc, 6, !dbg !4275
  call void @llvm.assume(i1 %i.od), !dbg !4275
  %i.oe = icmp samesign ugt i64 %i.oc, 4, !dbg !4276
  br i1 %i.oe, label %bb.do, label %bb.dp, !dbg !4286

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !4286, !noalias !4100
  store ptr @3, ptr %i.n, align 8, !dbg !4286, !noalias !4100
  %i.of = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !4286
  store i64 23, ptr %i.of, align 8, !dbg !4286, !noalias !4100
  %i.og = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !4286
  store ptr @3, ptr %i.og, align 8, !dbg !4286, !noalias !4100
  %i.oh = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !4286
  store i64 23, ptr %i.oh, align 8, !dbg !4286, !noalias !4100
  %i.oi = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !4286
  store ptr @12, ptr %i.oi, align 8, !dbg !4286, !noalias !4100
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 113 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.dq unwind label %bb.dc, !dbg !4286, !noalias !4131

bb.dp:                                            ; preds = %bb.dq, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !4287, !noalias !4100
  store i64 %i.mn, ptr %i.m, align 8, !dbg !4287, !noalias !4100
  %.sroa.618.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !4287
  store ptr %i.mq, ptr %.sroa.618.0..sroa_idx19.i.i, align 8, !dbg !4287, !noalias !4100
  %.sroa.7.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !4287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !4287, !noalias !4100
  %i.oj = invoke fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.m)
          to label %bb.dr unwind label %bb.dc, !dbg !4288, !noalias !4131 ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1H_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
  br i1 %i.db, label %bb.r, label %bb.o, !dbg !4847

bb.o:                                             ; preds = %.noexc31.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4848
  %i.dd = load i8, ptr %i.dc, align 8, !dbg !4848, !range !60, !alias.scope !4811, !noalias !4851, !noundef !15
  %i.de = trunc nuw i8 %i.dd to i1, !dbg !4848
  br i1 %i.de, label %bb.p, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !4854

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i8.i.i = load i8, ptr %i.ct, align 4, !dbg !4855, !range !80, !noalias !4859, !noundef !15 ; 3 uses
  %.not.i9.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 2, !dbg !4860
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i10.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !4861, !range !60, !alias.scope !4811, !noalias !4851 ; 2 uses
  %i.df = icmp eq i8 %.val.i.i.i.i8.i.i, %.pre.i10.i.i
  %or.cond21.i.i.i = select i1 %.not.i9.i.i, i1 %i.df, i1 false, !dbg !4863
  br i1 %or.cond21.i.i.i, label %bb.q, label %._crit_edge.i11.i.i, !dbg !4863

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i12.i.i = load i8, ptr %i.cu, align 1, !dbg !4855, !noalias !4859
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !4864
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !4864, !alias.scope !4811, !noalias !4851 ; 2 uses
  %or.cond.not.i13.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 0, !dbg !4866
  %i.di = icmp eq i8 %.val1.i.i.i.i12.i.i, %i.dh
  %or.cond.i.i.i = select i1 %or.cond.not.i13.i.i, i1 true, i1 %i.di, !dbg !4866
  br i1 %or.cond.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !4866

._crit_edge.i11.i.i:                              ; preds = %bb.p
  %i.dj = trunc nuw i8 %.pre.i10.i.i to i1, !dbg !4869
  br i1 %i.dj, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, label %._crit_edge.i11..thread.i_crit_edge.i.i, !dbg !4871

._crit_edge.i11..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i11.i.i
  %.phi.trans.insert.i29.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i30.i = load i8, ptr %.phi.trans.insert.i29.i, align 1, !dbg !4869, !alias.scope !4811, !noalias !4851
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !4871

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %._crit_edge.i11..thread.i_crit_edge.i.i, %._crit_edge.i11.i.i, %bb.q
  %.sroa.06.0.i.i.i = phi i8 [ 10, %._crit_edge.i11.i.i ], [ %.pre.i30.i, %._crit_edge.i11..thread.i_crit_edge.i.i ], [ %i.dh, %bb.q ], !dbg !4873 ; 2 uses
  %i.dk = lshr i8 %.sroa.06.0.i.i.i, 6, !dbg !4874
  %i.dl = zext nneg i8 %i.dk to i64, !dbg !4876
  %i.dm = and i8 %.sroa.06.0.i.i.i, 63, !dbg !4878
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.dl, !dbg !4879
  %i.do = load i64, ptr %i.dn, align 8, !dbg !4879, !noalias !4859, !noundef !15
  %i.dp = zext nneg i8 %i.dm to i64, !dbg !4880
  %i.dq = shl nuw i64 1, %i.dp, !dbg !4880
  %i.dr = and i64 %i.dq, %i.do, !dbg !4879
  %.not17.i.i.i = icmp eq i64 %i.dr, 0, !dbg !4879
  br i1 %.not17.i.i.i, label %bb.s, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !4881

bb.r:                                             ; preds = %.noexc31.i
  %i.ds = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !4882, !noalias !4839 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 6, !dbg !4891
  call void @llvm.assume(i1 %i.dt), !dbg !4891
  %i.du = icmp samesign ugt i64 %i.ds, 4, !dbg !4892
  br i1 %i.du, label %bb.x, label %bb.y, !dbg !4906

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, %bb.q, %bb.o
  %i.dv = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !4907, !noalias !4839 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 6, !dbg !4915
  call void @llvm.assume(i1 %i.dw), !dbg !4915
  %i.dx = icmp samesign ugt i64 %i.dv, 4, !dbg !4916
  br i1 %i.dx, label %bb.t, label %bb.u, !dbg !4926

bb.s:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i
  %i.dy = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !4927, !noalias !4839 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6, !dbg !4935
  call void @llvm.assume(i1 %i.dz), !dbg !4935
  %i.ea = icmp samesign ugt i64 %i.dy, 4, !dbg !4936
  br i1 %i.ea, label %bb.v, label %bb.w, !dbg !4946

bb.t:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !4926, !noalias !4839
  store ptr @3, ptr %i.ac, align 8, !dbg !4926, !noalias !4839
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !4926
  store i64 23, ptr %i.eb, align 8, !dbg !4926, !noalias !4839
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !4926
  store ptr @3, ptr %i.ec, align 8, !dbg !4926, !noalias !4839
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !4926
  store i64 23, ptr %i.ed, align 8, !dbg !4926, !noalias !4839
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !4926
  store ptr @2, ptr %i.ee, align 8, !dbg !4926, !noalias !4839
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %.noexc32.i unwind label %bb.g, !dbg !4926, !noalias !4791

.noexc32.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !4926, !noalias !4839
  br label %bb.u, !dbg !4926

bb.u:                                             ; preds = %.noexc32.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !4947, !noalias !4839
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4, i1 noundef zeroext true)
          to label %.noexc33.i unwind label %bb.g, !dbg !4948

.noexc33.i:                                       ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 120, !dbg !4951
  store ptr %i.cl, ptr %i.ef, align 8, !dbg !4951, !noalias !4839
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 128, !dbg !4951
  store i64 %i.ck, ptr %i.eg, align 8, !dbg !4951, !noalias !4839
  %i.eh = invoke noundef ptr @_RNvMs_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB4_11SliceByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB18_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.ab)
          to label %.noexc34.i unwind label %bb.g, !dbg !4952

.noexc34.i:                                       ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !4953, !noalias !4839
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4954

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !4946, !noalias !4839
  store ptr @3, ptr %i.ae, align 8, !dbg !4946, !noalias !4839
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !4946
  store i64 23, ptr %i.ei, align 8, !dbg !4946, !noalias !4839
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !4946
  store ptr @3, ptr %i.ej, align 8, !dbg !4946, !noalias !4839
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !4946
  store i64 23, ptr %i.ek, align 8, !dbg !4946, !noalias !4839
  %i.el = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !4946
  store ptr @5, ptr %i.el, align 8, !dbg !4946, !noalias !4839
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 93 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %.noexc35.i unwind label %bb.g, !dbg !4946, !noalias !4791

.noexc35.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !4946, !noalias !4839
  br label %bb.w, !dbg !4946

bb.w:                                             ; preds = %.noexc35.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !4955, !noalias !4839
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4, i1 noundef zeroext true)
          to label %.noexc36.i unwind label %bb.g, !dbg !4956

.noexc36.i:                                       ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 144, !dbg !4959
  store ptr %0, ptr %i.em, align 8, !dbg !4959, !noalias !4839
  %i.en = getelementptr inbounds nuw i8, ptr %i.ad, i64 152, !dbg !4959
  store ptr %i.cl, ptr %i.en, align 8, !dbg !4959, !noalias !4839
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ad, i64 160, !dbg !4959
  store i64 %i.ck, ptr %i.eo, align 8, !dbg !4959, !noalias !4839
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 120, !dbg !4959
  store i64 0, ptr %i.ep, align 8, !dbg !4959, !noalias !4839
  %i.eq = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.ad)
          to label %.noexc37.i unwind label %bb.g, !dbg !4960

.noexc37.i:                                       ; preds = %.noexc36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !4961, !noalias !4839
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4954

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !4906, !noalias !4839
  store ptr @3, ptr %i.af, align 8, !dbg !4906, !noalias !4839
  %i.er = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !4906
  store i64 23, ptr %i.er, align 8, !dbg !4906, !noalias !4839
  %i.es = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !4906
  store ptr @3, ptr %i.es, align 8, !dbg !4906, !noalias !4839
  %i.et = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !4906
  store i64 23, ptr %i.et, align 8, !dbg !4906, !noalias !4839
  %i.eu = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !4906
  store ptr @7, ptr %i.eu, align 8, !dbg !4906, !noalias !4839
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 107 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %.noexc38.i unwind label %bb.g, !dbg !4906, !noalias !4791

.noexc38.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !4906, !noalias !4839
  br label %bb.y, !dbg !4906

bb.y:                                             ; preds = %.noexc38.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !4962), !dbg !4965
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !4966
  %i.ev = load i64, ptr %0, align 8, !dbg !4966, !range !52, !alias.scope !4971, !noalias !4972, !noundef !15
  %i.ew = trunc nuw i64 %i.ev to i1, !dbg !4979
  %i.ex = load i64, ptr %i.co, align 8, !alias.scope !4971, !noalias !4980
  %i.ey = icmp ne i64 %i.ex, 0
  %not..i.i.i = xor i1 %i.ew, true, !dbg !4979
  %or.cond.i14.i.i = select i1 %not..i.i.i, i1 true, i1 %i.ey, !dbg !4979
  %i.ez = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !4971, !noalias !4980
  %i.fa = icmp eq i8 %i.ez, 0
  %or.cond92.i.i.i = select i1 %or.cond.i14.i.i, i1 true, i1 %i.fa, !dbg !4979
  br i1 %or.cond92.i.i.i, label %bb.z, label %bb.ac, !dbg !4979

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.ct, align 4, !dbg !4981, !range !80, !noalias !4985, !noundef !15 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.cu, align 1, !dbg !4981, !noalias !4985 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i, 2, !dbg !4986
  br i1 %.not.i.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.aa, !dbg !4987

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !4988
  %i.fc = load i8, ptr %i.fb, align 8, !dbg !4988, !range !60, !alias.scope !4971, !noalias !4972, !noundef !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !4988 ; 2 uses
  %i.fe = icmp eq i8 %.val.i.i.i.i.i.i.i, %i.fc, !dbg !4992
  br i1 %i.fe, label %bb.ab, label %._crit_edge.i.i.i.i, !dbg !4992

._crit_edge.i.i.i.i:                              ; preds = %bb.aa
  %.pre.i.i.i.i = load i8, ptr %i.fd, align 1, !dbg !4993, !alias.scope !4971, !noalias !4972
  br label %bb.ac, !dbg !4992

bb.ab:                                            ; preds = %bb.aa
  %or.cond.not.i.i.i.i = icmp ne i8 %.val.i.i.i.i.i.i.i, 0, !dbg !4992
  %i.ff = load i8, ptr %i.fd, align 1, !alias.scope !4971, !noalias !4980 ; 2 uses
  %.not12.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, %i.ff
  %or.cond93.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %.not12.i.i.i.i, !dbg !4992
  br i1 %or.cond93.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.ac, !dbg !4992

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i, %bb.y
  %.sroa.12.0.ph.i.i.i = phi i8 [ %i.ff, %bb.ab ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.11.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %i.fc, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.10.0.ph.i.i.i = phi i8 [ %.val1.i.i.i.i.i.i.i, %bb.ab ], [ %.val1.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.9.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %.val.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.064.0.ph.i.i.i = phi i64 [ -9223372036854775807, %bb.ab ], [ -9223372036854775807, %._crit_edge.i.i.i.i ], [ -9223372036854775808, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !4994, !noalias !4997
  store i64 %.sroa.064.0.ph.i.i.i, ptr %i.r, align 8, !dbg !4994, !noalias !4997
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !4994
  store i8 %.sroa.9.0.ph.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !4994, !noalias !4997
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9, !dbg !4994
  store i8 %.sroa.10.0.ph.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !dbg !4994, !noalias !4997
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 10, !dbg !4994
  store i8 %.sroa.11.0.ph.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !dbg !4994, !noalias !4997
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 11, !dbg !4994
  store i8 %.sroa.12.0.ph.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !dbg !4994, !noalias !4997
  %i.fg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc39.i unwind label %bb.g, !dbg !4998, !noalias !4791

.noexc39.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !5002, !noalias !4997
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !5003

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.ab, %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !5004 ; 8 uses
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !5009, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.fj = icmp eq i64 %i.fi, 0, !dbg !5014
  br i1 %i.fj, label %bb.ad, label %bb.ae, !dbg !5014, !prof !427

bb.ad:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  store i64 -1, ptr %i.fh, align 8, !dbg !5015, !alias.scope !4971, !noalias !4980
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !5021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !5025, !noalias !4997
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !5025
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %bb.ag unwind label %bb.af, !dbg !5027, !noalias !5028

bb.ae:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
          to label %.noexc40.i unwind label %bb.g, !dbg !5029, !noalias !4791

.noexc40.i:                                       ; preds = %bb.ae
  unreachable, !dbg !5029

bb.af:                                            ; preds = %bb.ad
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ag:                                            ; preds = %bb.ad
  %i.fn = load i64, ptr %i.z, align 8, !dbg !5031, !range !450, !noalias !4997, !noundef !15 ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 2, !dbg !5031
  %i.fp = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !5034
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !5034, !noalias !4997 ; 4 uses
  br i1 %i.fo, label %bb.cl, label %bb.ah, !dbg !5035

bb.ah:                                            ; preds = %bb.ag
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !5036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.537.0..sroa_idx.i.i.i, i64 144, i1 false), !dbg !5036, !noalias !4997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !5037, !noalias !4997
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !5038 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !dbg !5038, !range !60, !alias.scope !4971, !noalias !5042, !noundef !15
  %i.ft = trunc nuw i8 %i.fs to i1, !dbg !5038
  br i1 %i.ft, label %bb.ai, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !5045

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i.i.i54.i.i.i = load i8, ptr %i.ct, align 4, !dbg !5046, !range !80, !noalias !5050, !noundef !15 ; 3 uses
  %.not.i55.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 2, !dbg !5051
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !5052, !range !60, !alias.scope !4971, !noalias !5042 ; 2 uses
  %i.fu = icmp eq i8 %.val.i.i.i.i54.i.i.i, %.pre.i56.i.i.i
  %or.cond21.i.i.i.i = select i1 %.not.i55.i.i.i, i1 %i.fu, i1 false, !dbg !5054
  br i1 %or.cond21.i.i.i.i, label %bb.aj, label %._crit_edge.i57.i.i.i, !dbg !5054

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i.i.i58.i.i.i = load i8, ptr %i.cu, align 1, !dbg !5046, !noalias !5050
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !5055
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !5055, !alias.scope !4971, !noalias !5042 ; 2 uses
  %or.cond.not.i59.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 0, !dbg !5057
  %i.fx = icmp eq i8 %.val1.i.i.i.i58.i.i.i, %i.fw
  %or.cond.i.i.i.i = select i1 %or.cond.not.i59.i.i.i, i1 true, i1 %i.fx, !dbg !5057
  br i1 %or.cond.i.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !5057

._crit_edge.i57.i.i.i:                            ; preds = %bb.ai
  %i.fy = trunc nuw i8 %.pre.i56.i.i.i to i1, !dbg !5060
  br i1 %i.fy, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %._crit_edge.i57..thread.i_crit_edge.i.i.i, !dbg !5062

._crit_edge.i57..thread.i_crit_edge.i.i.i:        ; preds = %._crit_edge.i57.i.i.i
  %.phi.trans.insert.i17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i18.i.i = load i8, ptr %.phi.trans.insert.i17.i.i, align 1, !dbg !5060, !alias.scope !4971, !noalias !5042
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !5062

bb.ak:                                            ; preds = %bb.cb, %bb.bb, %bb.ay, %bb.aw, %bb.al
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i.i, %._crit_edge.i57.i.i.i, %bb.aj
  %.sroa.06.0.i.i.i.i = phi i8 [ 10, %._crit_edge.i57.i.i.i ], [ %.pre.i18.i.i, %._crit_edge.i57..thread.i_crit_edge.i.i.i ], [ %i.fw, %bb.aj ], !dbg !5064 ; 2 uses
  %i.ga = lshr i8 %.sroa.06.0.i.i.i.i, 6, !dbg !5065
  %i.gb = zext nneg i8 %i.ga to i64, !dbg !5067
  %i.gc = and i8 %.sroa.06.0.i.i.i.i, 63, !dbg !5069
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.gb, !dbg !5070
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !5070, !noalias !5050, !noundef !15
  %i.gf = zext nneg i8 %i.gc to i64, !dbg !5071
  %i.gg = shl nuw i64 1, %i.gf, !dbg !5071
  %i.gh = and i64 %i.gg, %i.ge, !dbg !5070
  %.not17.i.i.i.i = icmp eq i64 %i.gh, 0, !dbg !5070
  br i1 %.not17.i.i.i.i, label %bb.av, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !5072

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.aj, %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !5073 ; 6 uses
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !5079, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.gk = icmp eq i64 %i.gj, 0, !dbg !5084
  br i1 %i.gk, label %bb.an, label %bb.al, !dbg !5084, !prof !427

bb.al:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.au unwind label %bb.ak, !dbg !5085, !noalias !5028

bb.am:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load i64, ptr %i.gi, align 8, !dbg !5087, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.gn = add i64 %i.gm, 1, !dbg !5092
  store i64 %i.gn, ptr %i.gi, align 8, !dbg !5093, !alias.scope !4971, !noalias !4980
  br label %bb.cm, !dbg !5096

bb.an:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  store i64 -1, ptr %i.gi, align 8, !dbg !5097, !alias.scope !4971, !noalias !4980
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !5102
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !5107
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !5113
  store i64 0, ptr %i.gq, align 8, !dbg !5113, !alias.scope !4971, !noalias !4980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i8 0, i64 32, i1 false), !dbg !5114, !alias.scope !4971, !noalias !4980
  %i.gr = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !5115, !noalias !4997 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6, !dbg !5126
  call void @llvm.assume(i1 %i.gs), !dbg !5126
  %i.gt = icmp samesign ugt i64 %i.gr, 4, !dbg !5127
  br i1 %i.gt, label %bb.ao, label %bb.ap, !dbg !5141

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !5141, !noalias !4997
  store ptr @3, ptr %i.u, align 8, !dbg !5141, !noalias !4997
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !5141
  store i64 23, ptr %i.gu, align 8, !dbg !5141, !noalias !4997
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !5141
  store ptr @3, ptr %i.gv, align 8, !dbg !5141, !noalias !4997
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !5141
  store i64 23, ptr %i.gw, align 8, !dbg !5141, !noalias !4997
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !5141
  store ptr @9, ptr %i.gx, align 8, !dbg !5141, !noalias !4997
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.aq unwind label %bb.am, !dbg !5141, !noalias !5028

bb.ap:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !5142, !noalias !4997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !5143, !noalias !4997
  store i64 %i.fn, ptr %i.s, align 8, !dbg !5143, !noalias !4997
  %.sroa.025.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !5143
  store ptr %i.fq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !5143, !noalias !4997
  %.sroa.025.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !5143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.025.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, i64 144, i1 false), !dbg !5143, !noalias !4997
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160, !dbg !5143
  store ptr %i.go, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !dbg !5143, !noalias !4997
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.ar unwind label %bb.am, !dbg !5142

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !5141, !noalias !4997
  br label %bb.ap, !dbg !5141

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !5144, !noalias !4997
  %i.gy = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.t)
          to label %bb.as unwind label %bb.am, !dbg !5145

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !5146, !noalias !4997
  %i.gz = load i64, ptr %i.gi, align 8, !dbg !5147, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.ha = add i64 %i.gz, 1, !dbg !5152
  store i64 %i.ha, ptr %i.gi, align 8, !dbg !5153, !alias.scope !4971, !noalias !4980
  br label %bb.at, !dbg !5156

bb.at:                                            ; preds = %bb.cj, %bb.as
  %.sroa.0.0.i16.i.i = phi ptr [ %i.la, %bb.cj ], [ %i.gy, %bb.as ], !dbg !5157
  %i.hb = load i64, ptr %i.fh, align 8, !dbg !5158, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.hc = add i64 %i.hb, 1, !dbg !5163
  store i64 %i.hc, ptr %i.fh, align 8, !dbg !5164, !alias.scope !4971, !noalias !4980
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !5003

bb.au:                                            ; preds = %bb.al
  unreachable

bb.av:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.hd = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !5167, !noalias !4997 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 6, !dbg !5174
  call void @llvm.assume(i1 %i.he), !dbg !5174
  %i.hf = icmp samesign ugt i64 %i.hd, 4, !dbg !5175
  br i1 %i.hf, label %bb.aw, label %.thread154.i.i.i, !dbg !5185

.thread154.i.i.i:                                 ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !5186, !noalias !4997
  store i64 %i.fn, ptr %i.x, align 8, !dbg !5186, !noalias !4997
  %.sroa.618.0..sroa_idx19155.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !5186
  store ptr %i.fq, ptr %.sroa.618.0..sroa_idx19155.i.i.i, align 8, !dbg !5186, !noalias !4997
end_hunk_6
begin_hunk_7_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1H_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !5406
  store i64 23, ptr %i.ki, align 8, !dbg !5406, !noalias !4997
  %i.kj = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !5406
  store ptr @3, ptr %i.kj, align 8, !dbg !5406, !noalias !4997
  %i.kk = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !5406
  store i64 23, ptr %i.kk, align 8, !dbg !5406, !noalias !4997
  %i.kl = getelementptr inbounds nuw i8, ptr %i.w, i64 32, !dbg !5406
  store ptr @14, ptr %i.kl, align 8, !dbg !5406, !noalias !4997
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %bb.ce unwind label %bb.ak, !dbg !5406, !noalias !5028

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.km = phi i64 [ %i.ke, %bb.ca ], [ %.pre141.i.i.i, %bb.ce ], !dbg !5407 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !5412, !noalias !4997
  %i.kn = icmp ult i64 %i.km, 9223372036854775807, !dbg !5413
  br i1 %i.kn, label %bb.cg, label %bb.cd, !dbg !5415, !prof !427

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63.i.i.i unwind label %bb.cf, !dbg !5416, !noalias !5028

.noexc63.i.i.i:                                   ; preds = %bb.cd
  unreachable, !dbg !5416

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !5406, !noalias !4997
  %.pre141.i.i.i = load i64, ptr %i.hl, align 8, !dbg !5407, !alias.scope !4971, !noalias !5417
  br label %bb.cc, !dbg !5406

bb.cf:                                            ; preds = %bb.cd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm, !dbg !5420

bb.cg:                                            ; preds = %bb.cc
  %i.kp = add nuw nsw i64 %i.km, 1, !dbg !5421
  store i64 %i.kp, ptr %i.hl, align 8, !dbg !5423, !alias.scope !4971, !noalias !5417
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !5426
  %i.kr = load ptr, ptr %i.kq, align 8, !dbg !5426, !alias.scope !4971, !noalias !4980, !nonnull !15, !noundef !15
  %i.ks = load i64, ptr %i.hp, align 8, !dbg !5439, !alias.scope !4971, !noalias !4980, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !5440, !noalias !4997
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4, i1 noundef zeroext true)
          to label %bb.ci unwind label %bb.ch, !dbg !5440

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load i64, ptr %i.hl, align 8, !dbg !5443, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.kv = add i64 %i.ku, -1, !dbg !5448
  store i64 %i.kv, ptr %i.hl, align 8, !dbg !5449, !alias.scope !4971, !noalias !4980
  br label %bb.cm, !dbg !5452

bb.ci:                                            ; preds = %bb.cg
  %i.kw = getelementptr inbounds nuw i8, ptr %i.v, i64 144, !dbg !5453
  store ptr %0, ptr %i.kw, align 8, !dbg !5453, !noalias !4997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !dbg !5453, !noalias !4997
  %i.kx = getelementptr inbounds nuw i8, ptr %i.v, i64 152, !dbg !5453
  store ptr %i.kr, ptr %i.kx, align 8, !dbg !5453, !noalias !4997
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !5453
  store i64 %i.ks, ptr %i.ky, align 8, !dbg !5453, !noalias !4997
  %i.kz = getelementptr inbounds nuw i8, ptr %i.v, i64 120, !dbg !5453
  store i64 0, ptr %i.kz, align 8, !dbg !5453, !noalias !4997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !5454, !noalias !4997
  %i.la = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.v)
          to label %bb.cj unwind label %bb.ch, !dbg !5455

bb.cj:                                            ; preds = %bb.ci
  %i.lb = load i64, ptr %i.hl, align 8, !dbg !5456, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.lc = add i64 %i.lb, -1, !dbg !5461
  store i64 %i.lc, ptr %i.hl, align 8, !dbg !5462, !alias.scope !4971, !noalias !4980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !5465, !noalias !4997
  br label %bb.at, !dbg !5156

bb.ck:                                            ; preds = %bb.cl, %bb.bz, %.thread85.i.i.i
  %.sroa.0.2.i.i.i = phi ptr [ %i.fq, %bb.cl ], [ %i.kb, %bb.bz ], [ %.sroa.0.0.i60.ph.i.i.i, %.thread85.i.i.i ], !dbg !5466
  %i.ld = load i64, ptr %i.fh, align 8, !dbg !5469, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.le = add i64 %i.ld, 1, !dbg !5474
  store i64 %i.le, ptr %i.fh, align 8, !dbg !5475, !alias.scope !4971, !noalias !4980
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !5003

bb.cl:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !5037, !noalias !4997
  br label %bb.ck, !dbg !5478

bb.cm:                                            ; preds = %bb.ch, %bb.cf, %.loopexit.i.i.i.i, %bb.am, %bb.ak, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.af ], [ %i.gl, %bb.am ], [ %i.kt, %bb.ch ], [ %i.ko, %bb.cf ], [ %i.fz, %bb.ak ], [ %.pn.i.i.i.i, %.loopexit.i.i.i.i ]
  %i.lf = load i64, ptr %i.fh, align 8, !dbg !5480, !alias.scope !4971, !noalias !4980, !noundef !15
  %i.lg = add i64 %i.lf, 1, !dbg !5485
  store i64 %i.lg, ptr %i.fh, align 8, !dbg !5486, !alias.scope !4971, !noalias !4980
  br label %.body.i, !dbg !5489

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.ck, %bb.at, %.noexc39.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.fg, %.noexc39.i ], [ %.sroa.0.2.i.i.i, %bb.ck ], [ %.sroa.0.0.i16.i.i, %bb.at ], !dbg !5490
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !5491
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !5492

bb.cn:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !4787, !noalias !4712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !4787, !noalias !4712
  %.pre132.i = load ptr, ptr %i.aq, align 8, !dbg !4797, !noalias !4712
  %.pre133.i = load i64, ptr %i.cc, align 8, !dbg !4792, !noalias !4712
  br label %bb.j, !dbg !4787

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, %.noexc37.i, %.noexc34.i, %.noexc.i
  %.sroa.0.0.i27.i = phi ptr [ %i.da, %.noexc.i ], [ %.sroa.0.1.i.i.i, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.eq, %.noexc37.i ], [ %i.eh, %.noexc34.i ], !dbg !5494
  invoke void @_RNvXs_NtCs2Ov1vZ5ZpMw_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc11 unwind label %bb.fi, !dbg !5495

.noexc11:                                         ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !4722, !noalias !4712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !4722, !noalias !4712
  br label %bb.fj, !dbg !5498

bb.co:                                            ; preds = %.body.i
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !5500
  unreachable, !dbg !5500

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i, %bb.f, %bb.d
  %i.li = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !5501, !noalias !4712 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 6, !dbg !5509
  call void @llvm.assume(i1 %i.lj), !dbg !5509
  %i.lk = icmp samesign ugt i64 %i.li, 4, !dbg !5510
  br i1 %i.lk, label %bb.cq, label %bb.cr, !dbg !5520

bb.cp:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i
  %i.ll = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !5521, !noalias !4712 ; 2 uses
  %i.lm = icmp ult i64 %i.ll, 6, !dbg !5529
  call void @llvm.assume(i1 %i.lm), !dbg !5529
  %i.ln = icmp samesign ugt i64 %i.ll, 4, !dbg !5530
  br i1 %i.ln, label %bb.ef, label %.thread.i, !dbg !5540

bb.cq:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !5541, !noalias !4712
  store ptr %i.as, ptr %i.ai, align 8, !dbg !5541, !noalias !4712
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !5541
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCsG258MDvU3F_3std4path4PathENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !5541, !noalias !4712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !5520, !noalias !4712
  store ptr @3, ptr %i.ah, align 8, !dbg !5520, !noalias !4712
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !5520
  store i64 23, ptr %i.lo, align 8, !dbg !5520, !noalias !4712
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !5520
  store ptr @3, ptr %i.lp, align 8, !dbg !5520, !noalias !4712
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !5520
  store i64 23, ptr %i.lq, align 8, !dbg !5520, !noalias !4712
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !5520
  store ptr @20, ptr %i.lr, align 8, !dbg !5520, !noalias !4712
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @19, ptr noundef nonnull %i.ai, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %.noexc12 unwind label %bb.fi, !dbg !5520

.noexc12:                                         ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !5520, !noalias !4712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !5520, !noalias !4712
  br label %bb.cr, !dbg !5520

bb.cr:                                            ; preds = %.noexc12, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5544), !dbg !5547
  call void @llvm.experimental.noalias.scope.decl(metadata !5548), !dbg !5547
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !5550
  %i.ls = load i64, ptr %0, align 8, !dbg !5550, !range !52, !alias.scope !5555, !noalias !5556, !noundef !15
  %i.lt = trunc nuw i64 %i.ls to i1, !dbg !5562
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !alias.scope !5555, !noalias !5563
  %i.lw = icmp ne i64 %i.lv, 0
  %not..i41.i = xor i1 %i.lt, true, !dbg !5562
  %or.cond.i42.i = select i1 %not..i41.i, i1 true, i1 %i.lw, !dbg !5562
  %i.lx = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !5555, !noalias !5563
  %i.ly = icmp eq i8 %i.lx, 0
  %or.cond82.i.i = select i1 %or.cond.i42.i, i1 true, i1 %i.ly, !dbg !5562
  br i1 %or.cond82.i.i, label %bb.cs, label %bb.cv, !dbg !5562

bb.cs:                                            ; preds = %bb.cr
  %.val.i.i.i.i51.i = load ptr, ptr %1, align 8, !dbg !5564, !alias.scope !5567, !noalias !5568, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.lz = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 84, !dbg !5569 ; 2 uses
  %.val.i.i.i.i.i52.i = load i8, ptr %i.lz, align 4, !dbg !5569, !range !80, !noalias !5571, !noundef !15 ; 4 uses
  %i.ma = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 85, !dbg !5569 ; 2 uses
  %.val1.i.i.i.i.i53.i = load i8, ptr %i.ma, align 1, !dbg !5569, !noalias !5571 ; 3 uses
  %.not.i.i54.i = icmp eq i8 %.val.i.i.i.i.i52.i, 2, !dbg !5572
  br i1 %.not.i.i54.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.ct, !dbg !5573

bb.ct:                                            ; preds = %bb.cs
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5574
  %i.mc = load i8, ptr %i.mb, align 8, !dbg !5574, !range !60, !alias.scope !5555, !noalias !5556, !noundef !15 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !5574 ; 2 uses
  %i.me = icmp eq i8 %.val.i.i.i.i.i52.i, %i.mc, !dbg !5578
  br i1 %i.me, label %bb.cu, label %._crit_edge.i.i55.i, !dbg !5578

._crit_edge.i.i55.i:                              ; preds = %bb.ct
  %.pre.i.i56.i = load i8, ptr %i.md, align 1, !dbg !5579, !alias.scope !5555, !noalias !5556
  br label %bb.cv, !dbg !5578

bb.cu:                                            ; preds = %bb.ct
  %or.cond.not.i.i57.i = icmp ne i8 %.val.i.i.i.i.i52.i, 0, !dbg !5578
  %i.mf = load i8, ptr %i.md, align 1, !alias.scope !5555, !noalias !5563 ; 2 uses
  %.not12.i.i58.i = icmp eq i8 %.val1.i.i.i.i.i53.i, %i.mf
  %or.cond83.i.i = select i1 %or.cond.not.i.i57.i, i1 true, i1 %.not12.i.i58.i, !dbg !5578
  br i1 %or.cond83.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.cv, !dbg !5578

bb.cv:                                            ; preds = %bb.cu, %._crit_edge.i.i55.i, %bb.cr
  %.sroa.12.0.ph.i43.i = phi i8 [ %i.mf, %bb.cu ], [ %.pre.i.i56.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.11.0.ph.i43.i = phi i8 [ 0, %bb.cu ], [ %i.mc, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.10.0.ph.i44.i = phi i8 [ %.val1.i.i.i.i.i53.i, %bb.cu ], [ %.val1.i.i.i.i.i53.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.9.0.ph.i45.i = phi i8 [ 0, %bb.cu ], [ %.val.i.i.i.i.i52.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.060.0.ph.i.i = phi i64 [ -9223372036854775807, %bb.cu ], [ -9223372036854775807, %._crit_edge.i.i55.i ], [ -9223372036854775808, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !5580, !noalias !5583
  store i64 %.sroa.060.0.ph.i.i, ptr %i.g, align 8, !dbg !5580, !noalias !5583
  %.sroa.9.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !5580
  store i8 %.sroa.9.0.ph.i45.i, ptr %.sroa.9.0..sroa_idx.i47.i, align 8, !dbg !5580, !noalias !5583
  %.sroa.10.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9, !dbg !5580
  store i8 %.sroa.10.0.ph.i44.i, ptr %.sroa.10.0..sroa_idx.i48.i, align 1, !dbg !5580, !noalias !5583
  %.sroa.11.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.g, i64 10, !dbg !5580
  store i8 %.sroa.11.0.ph.i43.i, ptr %.sroa.11.0..sroa_idx.i49.i, align 2, !dbg !5580, !noalias !5583
  %.sroa.12.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.g, i64 11, !dbg !5580
  store i8 %.sroa.12.0.ph.i43.i, ptr %.sroa.12.0..sroa_idx.i50.i, align 1, !dbg !5580, !noalias !5583
  %i.mg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc13 unwind label %bb.fi, !dbg !5584

.noexc13:                                         ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5588, !noalias !5583
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !5589

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i: ; preds = %bb.cu, %bb.cs
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !5590 ; 8 uses
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !5595, !alias.scope !5555, !noalias !5563, !noundef !15
  %i.mj = icmp eq i64 %i.mi, 0, !dbg !5600
  br i1 %i.mj, label %bb.cw, label %.invoke, !dbg !5600, !prof !427

bb.cw:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i
  store i64 -1, ptr %i.mh, align 8, !dbg !5601, !alias.scope !5555, !noalias !5563
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !5607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !5611, !noalias !5583
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !5611
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ml, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %bb.cy unwind label %bb.cx, !dbg !5613, !noalias !5614

bb.cx:                                            ; preds = %bb.cw
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cy:                                            ; preds = %bb.cw
  %i.mn = load i64, ptr %i.o, align 8, !dbg !5615, !range !450, !noalias !5583, !noundef !15 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, 2, !dbg !5615
  %i.mp = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !5618
  %i.mq = load ptr, ptr %i.mp, align 8, !dbg !5618, !noalias !5583 ; 3 uses
  br i1 %i.mo, label %bb.ed, label %bb.cz, !dbg !5619

bb.cz:                                            ; preds = %bb.cy
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !5620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx.i.i, i64 136, i1 false), !dbg !5620, !noalias !5583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !5621, !noalias !5583
  %i.mr = load i8, ptr %i.bf, align 8, !dbg !5622, !range !60, !alias.scope !5555, !noalias !5626, !noundef !15
  %i.ms = trunc nuw i8 %i.mr to i1, !dbg !5622
  br i1 %i.ms, label %bb.da, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !5629

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i54.i.i = load i8, ptr %i.lz, align 4, !dbg !5630, !range !80, !noalias !5634, !noundef !15 ; 3 uses
  %.not.i55.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 2, !dbg !5635
  %.phi.trans.insert.i.i62.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i = load i8, ptr %.phi.trans.insert.i.i62.i, align 8, !dbg !5636, !range !60, !alias.scope !5555, !noalias !5626 ; 2 uses
  %i.mt = icmp eq i8 %.val.i.i.i.i54.i.i, %.pre.i56.i.i
  %or.cond21.i.i63.i = select i1 %.not.i55.i.i, i1 %i.mt, i1 false, !dbg !5638
  br i1 %or.cond21.i.i63.i, label %bb.db, label %._crit_edge.i57.i.i, !dbg !5638

bb.db:                                            ; preds = %bb.da
  %.val1.i.i.i.i58.i.i = load i8, ptr %i.ma, align 1, !dbg !5630, !noalias !5634
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !5639
  %i.mv = load i8, ptr %i.mu, align 1, !dbg !5639, !alias.scope !5555, !noalias !5626 ; 2 uses
  %or.cond.not.i59.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 0, !dbg !5641
  %i.mw = icmp eq i8 %.val1.i.i.i.i58.i.i, %i.mv
  %or.cond.i.i69.i = select i1 %or.cond.not.i59.i.i, i1 true, i1 %i.mw, !dbg !5641
  br i1 %or.cond.i.i69.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !5641

._crit_edge.i57.i.i:                              ; preds = %bb.da
  %i.mx = trunc nuw i8 %.pre.i56.i.i to i1, !dbg !5644
  br i1 %i.mx, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, label %._crit_edge.i57..thread.i_crit_edge.i.i, !dbg !5646

._crit_edge.i57..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i57.i.i
  %.phi.trans.insert.i64.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i65.i = load i8, ptr %.phi.trans.insert.i64.i, align 1, !dbg !5644, !alias.scope !5555, !noalias !5626
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !5646

bb.dc:                                            ; preds = %bb.dt, %bb.dp, %bb.do, %bb.dd
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i, %._crit_edge.i57.i.i, %bb.db
  %.sroa.06.0.i.i67.i = phi i8 [ 10, %._crit_edge.i57.i.i ], [ %.pre.i65.i, %._crit_edge.i57..thread.i_crit_edge.i.i ], [ %i.mv, %bb.db ], !dbg !5648 ; 2 uses
  %i.mz = lshr i8 %.sroa.06.0.i.i67.i, 6, !dbg !5649
  %i.na = zext nneg i8 %i.mz to i64, !dbg !5651
  %i.nb = and i8 %.sroa.06.0.i.i67.i, 63, !dbg !5653
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i51.i, i64 %i.na, !dbg !5654
  %i.nd = load i64, ptr %i.nc, align 8, !dbg !5654, !noalias !5634, !noundef !15
  %i.ne = zext nneg i8 %i.nb to i64, !dbg !5655
  %i.nf = shl nuw i64 1, %i.ne, !dbg !5655
  %i.ng = and i64 %i.nf, %i.nd, !dbg !5654
  %.not17.i.i68.i = icmp eq i64 %i.ng, 0, !dbg !5654
  br i1 %.not17.i.i68.i, label %bb.dn, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !5656

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, %bb.db, %bb.cz
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !5657 ; 6 uses
  %i.ni = load i64, ptr %i.nh, align 8, !dbg !5663, !alias.scope !5555, !noalias !5563, !noundef !15
  %i.nj = icmp eq i64 %i.ni, 0, !dbg !5668
  br i1 %i.nj, label %bb.df, label %bb.dd, !dbg !5668, !prof !427

bb.dd:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.dm unwind label %bb.dc, !dbg !5669, !noalias !5614

bb.de:                                            ; preds = %bb.dj, %bb.dh, %bb.dg
  %i.nk = landingpad { ptr, i32 }
          cleanup
  %i.nl = load i64, ptr %i.nh, align 8, !dbg !5671, !alias.scope !5555, !noalias !5563, !noundef !15
  %i.nm = add i64 %i.nl, 1, !dbg !5676
  store i64 %i.nm, ptr %i.nh, align 8, !dbg !5677, !alias.scope !5555, !noalias !5563
  br label %bb.ee, !dbg !5680

bb.df:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  store i64 -1, ptr %i.nh, align 8, !dbg !5681, !alias.scope !5555, !noalias !5563
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !5686
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !5691
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !5697
  store i64 0, ptr %i.np, align 8, !dbg !5697, !alias.scope !5555, !noalias !5563
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.no, i8 0, i64 32, i1 false), !dbg !5698, !alias.scope !5555, !noalias !5563
  %i.nq = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !5699, !noalias !5583 ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 6, !dbg !5710
  call void @llvm.assume(i1 %i.nr), !dbg !5710
  %i.ns = icmp samesign ugt i64 %i.nq, 4, !dbg !5711
  br i1 %i.ns, label %bb.dg, label %bb.dh, !dbg !5725

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !5725, !noalias !5583
  store ptr @3, ptr %i.j, align 8, !dbg !5725, !noalias !5583
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !5725
  store i64 23, ptr %i.nt, align 8, !dbg !5725, !noalias !5583
  %i.nu = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !5725
  store ptr @3, ptr %i.nu, align 8, !dbg !5725, !noalias !5583
  %i.nv = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !5725
  store i64 23, ptr %i.nv, align 8, !dbg !5725, !noalias !5583
  %i.nw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !5725
  store ptr @9, ptr %i.nw, align 8, !dbg !5725, !noalias !5583
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.di unwind label %bb.de, !dbg !5725, !noalias !5614

bb.dh:                                            ; preds = %bb.di, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5726, !noalias !5583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5727, !noalias !5583
  store i64 %i.mn, ptr %i.h, align 8, !dbg !5727, !noalias !5583
  %.sroa.025.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !5727
  store ptr %i.mq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5727, !noalias !5583
  %.sroa.025.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !5727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !5727, !noalias !5583
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152, !dbg !5727
  store ptr %i.nn, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !dbg !5727, !noalias !5583
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.i, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.dj unwind label %bb.de, !dbg !5726

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5725, !noalias !5583
  br label %bb.dh, !dbg !5725

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5728, !noalias !5583
  %i.nx = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.i)
          to label %bb.dk unwind label %bb.de, !dbg !5729

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5730, !noalias !5583
  %i.ny = load i64, ptr %i.nh, align 8, !dbg !5731, !alias.scope !5555, !noalias !5563, !noundef !15
  %i.nz = add i64 %i.ny, 1, !dbg !5736
  store i64 %i.nz, ptr %i.nh, align 8, !dbg !5737, !alias.scope !5555, !noalias !5563
  br label %bb.dl, !dbg !5740

bb.dl:                                            ; preds = %bb.eb, %bb.dk
  %.sroa.0.0.i61.i = phi ptr [ %i.ph, %bb.eb ], [ %i.nx, %bb.dk ], !dbg !5741
  %i.oa = load i64, ptr %i.mh, align 8, !dbg !5742, !alias.scope !5555, !noalias !5563, !noundef !15
  %i.ob = add i64 %i.oa, 1, !dbg !5747
  store i64 %i.ob, ptr %i.mh, align 8, !dbg !5748, !alias.scope !5555, !noalias !5563
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !5589

bb.dm:                                            ; preds = %bb.dd
  unreachable

bb.dn:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i
  %i.oc = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !5751, !noalias !5583 ; 2 uses
  %i.od = icmp ult i64 %i.oc, 6, !dbg !5758
  call void @llvm.assume(i1 %i.od), !dbg !5758
  %i.oe = icmp samesign ugt i64 %i.oc, 4, !dbg !5759
  br i1 %i.oe, label %bb.do, label %bb.dp, !dbg !5769

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !5769, !noalias !5583
  store ptr @3, ptr %i.n, align 8, !dbg !5769, !noalias !5583
  %i.of = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !5769
  store i64 23, ptr %i.of, align 8, !dbg !5769, !noalias !5583
  %i.og = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !5769
  store ptr @3, ptr %i.og, align 8, !dbg !5769, !noalias !5583
  %i.oh = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !5769
  store i64 23, ptr %i.oh, align 8, !dbg !5769, !noalias !5583
  %i.oi = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !5769
  store ptr @12, ptr %i.oi, align 8, !dbg !5769, !noalias !5583
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 113 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.dq unwind label %bb.dc, !dbg !5769, !noalias !5614

bb.dp:                                            ; preds = %bb.dq, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !5770, !noalias !5583
  store i64 %i.mn, ptr %i.m, align 8, !dbg !5770, !noalias !5583
  %.sroa.618.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !5770
  store ptr %i.mq, ptr %.sroa.618.0..sroa_idx19.i.i, align 8, !dbg !5770, !noalias !5583
  %.sroa.7.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !5770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !5770, !noalias !5583
  %i.oj = invoke fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.m)
          to label %bb.dr unwind label %bb.dc, !dbg !5771, !noalias !5614 ; 2 uses
end_hunk_7
begin_hunk_8_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1H_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
  br i1 %i.db, label %bb.r, label %bb.o, !dbg !6330

bb.o:                                             ; preds = %.noexc31.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !6331
  %i.dd = load i8, ptr %i.dc, align 8, !dbg !6331, !range !60, !alias.scope !6294, !noalias !6334, !noundef !15
  %i.de = trunc nuw i8 %i.dd to i1, !dbg !6331
  br i1 %i.de, label %bb.p, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !6337

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i8.i.i = load i8, ptr %i.ct, align 4, !dbg !6338, !range !80, !noalias !6342, !noundef !15 ; 3 uses
  %.not.i9.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 2, !dbg !6343
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i10.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !6344, !range !60, !alias.scope !6294, !noalias !6334 ; 2 uses
  %i.df = icmp eq i8 %.val.i.i.i.i8.i.i, %.pre.i10.i.i
  %or.cond21.i.i.i = select i1 %.not.i9.i.i, i1 %i.df, i1 false, !dbg !6346
  br i1 %or.cond21.i.i.i, label %bb.q, label %._crit_edge.i11.i.i, !dbg !6346

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i12.i.i = load i8, ptr %i.cu, align 1, !dbg !6338, !noalias !6342
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !6347
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !6347, !alias.scope !6294, !noalias !6334 ; 2 uses
  %or.cond.not.i13.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 0, !dbg !6349
  %i.di = icmp eq i8 %.val1.i.i.i.i12.i.i, %i.dh
  %or.cond.i.i.i = select i1 %or.cond.not.i13.i.i, i1 true, i1 %i.di, !dbg !6349
  br i1 %or.cond.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !6349

._crit_edge.i11.i.i:                              ; preds = %bb.p
  %i.dj = trunc nuw i8 %.pre.i10.i.i to i1, !dbg !6352
  br i1 %i.dj, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, label %._crit_edge.i11..thread.i_crit_edge.i.i, !dbg !6354

._crit_edge.i11..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i11.i.i
  %.phi.trans.insert.i29.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i30.i = load i8, ptr %.phi.trans.insert.i29.i, align 1, !dbg !6352, !alias.scope !6294, !noalias !6334
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !6354

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %._crit_edge.i11..thread.i_crit_edge.i.i, %._crit_edge.i11.i.i, %bb.q
  %.sroa.06.0.i.i.i = phi i8 [ 10, %._crit_edge.i11.i.i ], [ %.pre.i30.i, %._crit_edge.i11..thread.i_crit_edge.i.i ], [ %i.dh, %bb.q ], !dbg !6356 ; 2 uses
  %i.dk = lshr i8 %.sroa.06.0.i.i.i, 6, !dbg !6357
  %i.dl = zext nneg i8 %i.dk to i64, !dbg !6359
  %i.dm = and i8 %.sroa.06.0.i.i.i, 63, !dbg !6361
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.dl, !dbg !6362
  %i.do = load i64, ptr %i.dn, align 8, !dbg !6362, !noalias !6342, !noundef !15
  %i.dp = zext nneg i8 %i.dm to i64, !dbg !6363
  %i.dq = shl nuw i64 1, %i.dp, !dbg !6363
  %i.dr = and i64 %i.dq, %i.do, !dbg !6362
  %.not17.i.i.i = icmp eq i64 %i.dr, 0, !dbg !6362
  br i1 %.not17.i.i.i, label %bb.s, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !6364

bb.r:                                             ; preds = %.noexc31.i
  %i.ds = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !6365, !noalias !6322 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 6, !dbg !6374
  call void @llvm.assume(i1 %i.dt), !dbg !6374
  %i.du = icmp samesign ugt i64 %i.ds, 4, !dbg !6375
  br i1 %i.du, label %bb.x, label %bb.y, !dbg !6389

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, %bb.q, %bb.o
  %i.dv = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !6390, !noalias !6322 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 6, !dbg !6398
  call void @llvm.assume(i1 %i.dw), !dbg !6398
  %i.dx = icmp samesign ugt i64 %i.dv, 4, !dbg !6399
  br i1 %i.dx, label %bb.t, label %bb.u, !dbg !6409

bb.s:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i
  %i.dy = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !6410, !noalias !6322 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6, !dbg !6418
  call void @llvm.assume(i1 %i.dz), !dbg !6418
  %i.ea = icmp samesign ugt i64 %i.dy, 4, !dbg !6419
  br i1 %i.ea, label %bb.v, label %bb.w, !dbg !6429

bb.t:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !6409, !noalias !6322
  store ptr @3, ptr %i.ac, align 8, !dbg !6409, !noalias !6322
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !6409
  store i64 23, ptr %i.eb, align 8, !dbg !6409, !noalias !6322
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !6409
  store ptr @3, ptr %i.ec, align 8, !dbg !6409, !noalias !6322
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !6409
  store i64 23, ptr %i.ed, align 8, !dbg !6409, !noalias !6322
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !6409
  store ptr @2, ptr %i.ee, align 8, !dbg !6409, !noalias !6322
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %.noexc32.i unwind label %bb.g, !dbg !6409, !noalias !6274

.noexc32.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !6409, !noalias !6322
  br label %bb.u, !dbg !6409

bb.u:                                             ; preds = %.noexc32.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !6430, !noalias !6322
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4, i1 noundef zeroext true)
          to label %.noexc33.i unwind label %bb.g, !dbg !6431

.noexc33.i:                                       ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 120, !dbg !6434
  store ptr %i.cl, ptr %i.ef, align 8, !dbg !6434, !noalias !6322
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 128, !dbg !6434
  store i64 %i.ck, ptr %i.eg, align 8, !dbg !6434, !noalias !6322
  %i.eh = invoke noundef ptr @_RNvMs_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB4_11SliceByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB18_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.ab)
          to label %.noexc34.i unwind label %bb.g, !dbg !6435

.noexc34.i:                                       ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !6436, !noalias !6322
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !6437

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !6429, !noalias !6322
  store ptr @3, ptr %i.ae, align 8, !dbg !6429, !noalias !6322
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !6429
  store i64 23, ptr %i.ei, align 8, !dbg !6429, !noalias !6322
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !6429
  store ptr @3, ptr %i.ej, align 8, !dbg !6429, !noalias !6322
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !6429
  store i64 23, ptr %i.ek, align 8, !dbg !6429, !noalias !6322
  %i.el = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !6429
  store ptr @5, ptr %i.el, align 8, !dbg !6429, !noalias !6322
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 93 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %.noexc35.i unwind label %bb.g, !dbg !6429, !noalias !6274

.noexc35.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !6429, !noalias !6322
  br label %bb.w, !dbg !6429

bb.w:                                             ; preds = %.noexc35.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !6438, !noalias !6322
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4, i1 noundef zeroext true)
          to label %.noexc36.i unwind label %bb.g, !dbg !6439

.noexc36.i:                                       ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 144, !dbg !6442
  store ptr %0, ptr %i.em, align 8, !dbg !6442, !noalias !6322
  %i.en = getelementptr inbounds nuw i8, ptr %i.ad, i64 152, !dbg !6442
  store ptr %i.cl, ptr %i.en, align 8, !dbg !6442, !noalias !6322
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ad, i64 160, !dbg !6442
  store i64 %i.ck, ptr %i.eo, align 8, !dbg !6442, !noalias !6322
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 120, !dbg !6442
  store i64 0, ptr %i.ep, align 8, !dbg !6442, !noalias !6322
  %i.eq = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.ad)
          to label %.noexc37.i unwind label %bb.g, !dbg !6443

.noexc37.i:                                       ; preds = %.noexc36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !6444, !noalias !6322
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !6437

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !6389, !noalias !6322
  store ptr @3, ptr %i.af, align 8, !dbg !6389, !noalias !6322
  %i.er = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !6389
  store i64 23, ptr %i.er, align 8, !dbg !6389, !noalias !6322
  %i.es = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !6389
  store ptr @3, ptr %i.es, align 8, !dbg !6389, !noalias !6322
  %i.et = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !6389
  store i64 23, ptr %i.et, align 8, !dbg !6389, !noalias !6322
  %i.eu = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !6389
  store ptr @7, ptr %i.eu, align 8, !dbg !6389, !noalias !6322
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 107 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %.noexc38.i unwind label %bb.g, !dbg !6389, !noalias !6274

.noexc38.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !6389, !noalias !6322
  br label %bb.y, !dbg !6389

bb.y:                                             ; preds = %.noexc38.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !6445), !dbg !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !6449
  %i.ev = load i64, ptr %0, align 8, !dbg !6449, !range !52, !alias.scope !6454, !noalias !6455, !noundef !15
  %i.ew = trunc nuw i64 %i.ev to i1, !dbg !6462
  %i.ex = load i64, ptr %i.co, align 8, !alias.scope !6454, !noalias !6463
  %i.ey = icmp ne i64 %i.ex, 0
  %not..i.i.i = xor i1 %i.ew, true, !dbg !6462
  %or.cond.i14.i.i = select i1 %not..i.i.i, i1 true, i1 %i.ey, !dbg !6462
  %i.ez = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !6454, !noalias !6463
  %i.fa = icmp eq i8 %i.ez, 0
  %or.cond92.i.i.i = select i1 %or.cond.i14.i.i, i1 true, i1 %i.fa, !dbg !6462
  br i1 %or.cond92.i.i.i, label %bb.z, label %bb.ac, !dbg !6462

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.ct, align 4, !dbg !6464, !range !80, !noalias !6468, !noundef !15 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.cu, align 1, !dbg !6464, !noalias !6468 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i, 2, !dbg !6469
  br i1 %.not.i.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.aa, !dbg !6470

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6471
  %i.fc = load i8, ptr %i.fb, align 8, !dbg !6471, !range !60, !alias.scope !6454, !noalias !6455, !noundef !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !6471 ; 2 uses
  %i.fe = icmp eq i8 %.val.i.i.i.i.i.i.i, %i.fc, !dbg !6475
  br i1 %i.fe, label %bb.ab, label %._crit_edge.i.i.i.i, !dbg !6475

._crit_edge.i.i.i.i:                              ; preds = %bb.aa
  %.pre.i.i.i.i = load i8, ptr %i.fd, align 1, !dbg !6476, !alias.scope !6454, !noalias !6455
  br label %bb.ac, !dbg !6475

bb.ab:                                            ; preds = %bb.aa
  %or.cond.not.i.i.i.i = icmp ne i8 %.val.i.i.i.i.i.i.i, 0, !dbg !6475
  %i.ff = load i8, ptr %i.fd, align 1, !alias.scope !6454, !noalias !6463 ; 2 uses
  %.not12.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, %i.ff
  %or.cond93.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %.not12.i.i.i.i, !dbg !6475
  br i1 %or.cond93.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.ac, !dbg !6475

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i, %bb.y
  %.sroa.12.0.ph.i.i.i = phi i8 [ %i.ff, %bb.ab ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.11.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %i.fc, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.10.0.ph.i.i.i = phi i8 [ %.val1.i.i.i.i.i.i.i, %bb.ab ], [ %.val1.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.9.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %.val.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.064.0.ph.i.i.i = phi i64 [ -9223372036854775807, %bb.ab ], [ -9223372036854775807, %._crit_edge.i.i.i.i ], [ -9223372036854775808, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !6477, !noalias !6480
  store i64 %.sroa.064.0.ph.i.i.i, ptr %i.r, align 8, !dbg !6477, !noalias !6480
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !6477
  store i8 %.sroa.9.0.ph.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !6477, !noalias !6480
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9, !dbg !6477
  store i8 %.sroa.10.0.ph.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !dbg !6477, !noalias !6480
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 10, !dbg !6477
  store i8 %.sroa.11.0.ph.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !dbg !6477, !noalias !6480
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 11, !dbg !6477
  store i8 %.sroa.12.0.ph.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !dbg !6477, !noalias !6480
  %i.fg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc39.i unwind label %bb.g, !dbg !6481, !noalias !6274

.noexc39.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !6485, !noalias !6480
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !6486

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.ab, %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !6487 ; 8 uses
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !6492, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.fj = icmp eq i64 %i.fi, 0, !dbg !6497
  br i1 %i.fj, label %bb.ad, label %bb.ae, !dbg !6497, !prof !427

bb.ad:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  store i64 -1, ptr %i.fh, align 8, !dbg !6498, !alias.scope !6454, !noalias !6463
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !6504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !6508, !noalias !6480
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !6508
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %bb.ag unwind label %bb.af, !dbg !6510, !noalias !6511

bb.ae:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
          to label %.noexc40.i unwind label %bb.g, !dbg !6512, !noalias !6274

.noexc40.i:                                       ; preds = %bb.ae
  unreachable, !dbg !6512

bb.af:                                            ; preds = %bb.ad
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ag:                                            ; preds = %bb.ad
  %i.fn = load i64, ptr %i.z, align 8, !dbg !6514, !range !450, !noalias !6480, !noundef !15 ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 2, !dbg !6514
  %i.fp = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !6517
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !6517, !noalias !6480 ; 4 uses
  br i1 %i.fo, label %bb.cl, label %bb.ah, !dbg !6518

bb.ah:                                            ; preds = %bb.ag
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !6519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.537.0..sroa_idx.i.i.i, i64 144, i1 false), !dbg !6519, !noalias !6480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !6520, !noalias !6480
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !6521 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !dbg !6521, !range !60, !alias.scope !6454, !noalias !6525, !noundef !15
  %i.ft = trunc nuw i8 %i.fs to i1, !dbg !6521
  br i1 %i.ft, label %bb.ai, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !6528

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i.i.i54.i.i.i = load i8, ptr %i.ct, align 4, !dbg !6529, !range !80, !noalias !6533, !noundef !15 ; 3 uses
  %.not.i55.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 2, !dbg !6534
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !6535, !range !60, !alias.scope !6454, !noalias !6525 ; 2 uses
  %i.fu = icmp eq i8 %.val.i.i.i.i54.i.i.i, %.pre.i56.i.i.i
  %or.cond21.i.i.i.i = select i1 %.not.i55.i.i.i, i1 %i.fu, i1 false, !dbg !6537
  br i1 %or.cond21.i.i.i.i, label %bb.aj, label %._crit_edge.i57.i.i.i, !dbg !6537

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i.i.i58.i.i.i = load i8, ptr %i.cu, align 1, !dbg !6529, !noalias !6533
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !6538
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !6538, !alias.scope !6454, !noalias !6525 ; 2 uses
  %or.cond.not.i59.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 0, !dbg !6540
  %i.fx = icmp eq i8 %.val1.i.i.i.i58.i.i.i, %i.fw
  %or.cond.i.i.i.i = select i1 %or.cond.not.i59.i.i.i, i1 true, i1 %i.fx, !dbg !6540
  br i1 %or.cond.i.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !6540

._crit_edge.i57.i.i.i:                            ; preds = %bb.ai
  %i.fy = trunc nuw i8 %.pre.i56.i.i.i to i1, !dbg !6543
  br i1 %i.fy, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %._crit_edge.i57..thread.i_crit_edge.i.i.i, !dbg !6545

._crit_edge.i57..thread.i_crit_edge.i.i.i:        ; preds = %._crit_edge.i57.i.i.i
  %.phi.trans.insert.i17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i18.i.i = load i8, ptr %.phi.trans.insert.i17.i.i, align 1, !dbg !6543, !alias.scope !6454, !noalias !6525
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !6545

bb.ak:                                            ; preds = %bb.cb, %bb.bb, %bb.ay, %bb.aw, %bb.al
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i.i, %._crit_edge.i57.i.i.i, %bb.aj
  %.sroa.06.0.i.i.i.i = phi i8 [ 10, %._crit_edge.i57.i.i.i ], [ %.pre.i18.i.i, %._crit_edge.i57..thread.i_crit_edge.i.i.i ], [ %i.fw, %bb.aj ], !dbg !6547 ; 2 uses
  %i.ga = lshr i8 %.sroa.06.0.i.i.i.i, 6, !dbg !6548
  %i.gb = zext nneg i8 %i.ga to i64, !dbg !6550
  %i.gc = and i8 %.sroa.06.0.i.i.i.i, 63, !dbg !6552
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.gb, !dbg !6553
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !6553, !noalias !6533, !noundef !15
  %i.gf = zext nneg i8 %i.gc to i64, !dbg !6554
  %i.gg = shl nuw i64 1, %i.gf, !dbg !6554
  %i.gh = and i64 %i.gg, %i.ge, !dbg !6553
  %.not17.i.i.i.i = icmp eq i64 %i.gh, 0, !dbg !6553
  br i1 %.not17.i.i.i.i, label %bb.av, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !6555

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.aj, %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !6556 ; 6 uses
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !6562, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.gk = icmp eq i64 %i.gj, 0, !dbg !6567
  br i1 %i.gk, label %bb.an, label %bb.al, !dbg !6567, !prof !427

bb.al:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.au unwind label %bb.ak, !dbg !6568, !noalias !6511

bb.am:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load i64, ptr %i.gi, align 8, !dbg !6570, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.gn = add i64 %i.gm, 1, !dbg !6575
  store i64 %i.gn, ptr %i.gi, align 8, !dbg !6576, !alias.scope !6454, !noalias !6463
  br label %bb.cm, !dbg !6579

bb.an:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  store i64 -1, ptr %i.gi, align 8, !dbg !6580, !alias.scope !6454, !noalias !6463
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !6585
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !6590
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !6596
  store i64 0, ptr %i.gq, align 8, !dbg !6596, !alias.scope !6454, !noalias !6463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i8 0, i64 32, i1 false), !dbg !6597, !alias.scope !6454, !noalias !6463
  %i.gr = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !6598, !noalias !6480 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6, !dbg !6609
  call void @llvm.assume(i1 %i.gs), !dbg !6609
  %i.gt = icmp samesign ugt i64 %i.gr, 4, !dbg !6610
  br i1 %i.gt, label %bb.ao, label %bb.ap, !dbg !6624

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !6624, !noalias !6480
  store ptr @3, ptr %i.u, align 8, !dbg !6624, !noalias !6480
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !6624
  store i64 23, ptr %i.gu, align 8, !dbg !6624, !noalias !6480
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !6624
  store ptr @3, ptr %i.gv, align 8, !dbg !6624, !noalias !6480
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !6624
  store i64 23, ptr %i.gw, align 8, !dbg !6624, !noalias !6480
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !6624
  store ptr @9, ptr %i.gx, align 8, !dbg !6624, !noalias !6480
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.aq unwind label %bb.am, !dbg !6624, !noalias !6511

bb.ap:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !6625, !noalias !6480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !6626, !noalias !6480
  store i64 %i.fn, ptr %i.s, align 8, !dbg !6626, !noalias !6480
  %.sroa.025.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !6626
  store ptr %i.fq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !6626, !noalias !6480
  %.sroa.025.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !6626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.025.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, i64 144, i1 false), !dbg !6626, !noalias !6480
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160, !dbg !6626
  store ptr %i.go, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !dbg !6626, !noalias !6480
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4)
          to label %bb.ar unwind label %bb.am, !dbg !6625

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !6624, !noalias !6480
  br label %bb.ap, !dbg !6624

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !6627, !noalias !6480
  %i.gy = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.t)
          to label %bb.as unwind label %bb.am, !dbg !6628

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !6629, !noalias !6480
  %i.gz = load i64, ptr %i.gi, align 8, !dbg !6630, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.ha = add i64 %i.gz, 1, !dbg !6635
  store i64 %i.ha, ptr %i.gi, align 8, !dbg !6636, !alias.scope !6454, !noalias !6463
  br label %bb.at, !dbg !6639

bb.at:                                            ; preds = %bb.cj, %bb.as
  %.sroa.0.0.i16.i.i = phi ptr [ %i.la, %bb.cj ], [ %i.gy, %bb.as ], !dbg !6640
  %i.hb = load i64, ptr %i.fh, align 8, !dbg !6641, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.hc = add i64 %i.hb, 1, !dbg !6646
  store i64 %i.hc, ptr %i.fh, align 8, !dbg !6647, !alias.scope !6454, !noalias !6463
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !6486

bb.au:                                            ; preds = %bb.al
  unreachable

bb.av:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.hd = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !6650, !noalias !6480 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 6, !dbg !6657
  call void @llvm.assume(i1 %i.he), !dbg !6657
  %i.hf = icmp samesign ugt i64 %i.hd, 4, !dbg !6658
  br i1 %i.hf, label %bb.aw, label %.thread154.i.i.i, !dbg !6668

.thread154.i.i.i:                                 ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !6669, !noalias !6480
  store i64 %i.fn, ptr %i.x, align 8, !dbg !6669, !noalias !6480
  %.sroa.618.0..sroa_idx19155.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !6669
  store ptr %i.fq, ptr %.sroa.618.0..sroa_idx19155.i.i.i, align 8, !dbg !6669, !noalias !6480
end_hunk_8
begin_hunk_9_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1H_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !6889
  store i64 23, ptr %i.ki, align 8, !dbg !6889, !noalias !6480
  %i.kj = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !6889
  store ptr @3, ptr %i.kj, align 8, !dbg !6889, !noalias !6480
  %i.kk = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !6889
  store i64 23, ptr %i.kk, align 8, !dbg !6889, !noalias !6480
  %i.kl = getelementptr inbounds nuw i8, ptr %i.w, i64 32, !dbg !6889
  store ptr @14, ptr %i.kl, align 8, !dbg !6889, !noalias !6480
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %bb.ce unwind label %bb.ak, !dbg !6889, !noalias !6511

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.km = phi i64 [ %i.ke, %bb.ca ], [ %.pre141.i.i.i, %bb.ce ], !dbg !6890 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !6895, !noalias !6480
  %i.kn = icmp ult i64 %i.km, 9223372036854775807, !dbg !6896
  br i1 %i.kn, label %bb.cg, label %bb.cd, !dbg !6898, !prof !427

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63.i.i.i unwind label %bb.cf, !dbg !6899, !noalias !6511

.noexc63.i.i.i:                                   ; preds = %bb.cd
  unreachable, !dbg !6899

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !6889, !noalias !6480
  %.pre141.i.i.i = load i64, ptr %i.hl, align 8, !dbg !6890, !alias.scope !6454, !noalias !6900
  br label %bb.cc, !dbg !6889

bb.cf:                                            ; preds = %bb.cd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm, !dbg !6903

bb.cg:                                            ; preds = %bb.cc
  %i.kp = add nuw nsw i64 %i.km, 1, !dbg !6904
  store i64 %i.kp, ptr %i.hl, align 8, !dbg !6906, !alias.scope !6454, !noalias !6900
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !6909
  %i.kr = load ptr, ptr %i.kq, align 8, !dbg !6909, !alias.scope !6454, !noalias !6463, !nonnull !15, !noundef !15
  %i.ks = load i64, ptr %i.hp, align 8, !dbg !6922, !alias.scope !6454, !noalias !6463, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !6923, !noalias !6480
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4, i1 noundef zeroext true)
          to label %bb.ci unwind label %bb.ch, !dbg !6923

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load i64, ptr %i.hl, align 8, !dbg !6926, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.kv = add i64 %i.ku, -1, !dbg !6931
  store i64 %i.kv, ptr %i.hl, align 8, !dbg !6932, !alias.scope !6454, !noalias !6463
  br label %bb.cm, !dbg !6935

bb.ci:                                            ; preds = %bb.cg
  %i.kw = getelementptr inbounds nuw i8, ptr %i.v, i64 144, !dbg !6936
  store ptr %0, ptr %i.kw, align 8, !dbg !6936, !noalias !6480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !dbg !6936, !noalias !6480
  %i.kx = getelementptr inbounds nuw i8, ptr %i.v, i64 152, !dbg !6936
  store ptr %i.kr, ptr %i.kx, align 8, !dbg !6936, !noalias !6480
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !6936
  store i64 %i.ks, ptr %i.ky, align 8, !dbg !6936, !noalias !6480
  %i.kz = getelementptr inbounds nuw i8, ptr %i.v, i64 120, !dbg !6936
  store i64 0, ptr %i.kz, align 8, !dbg !6936, !noalias !6480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !6937, !noalias !6480
  %i.la = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.v)
          to label %bb.cj unwind label %bb.ch, !dbg !6938

bb.cj:                                            ; preds = %bb.ci
  %i.lb = load i64, ptr %i.hl, align 8, !dbg !6939, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.lc = add i64 %i.lb, -1, !dbg !6944
  store i64 %i.lc, ptr %i.hl, align 8, !dbg !6945, !alias.scope !6454, !noalias !6463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !6948, !noalias !6480
  br label %bb.at, !dbg !6639

bb.ck:                                            ; preds = %bb.cl, %bb.bz, %.thread85.i.i.i
  %.sroa.0.2.i.i.i = phi ptr [ %i.fq, %bb.cl ], [ %i.kb, %bb.bz ], [ %.sroa.0.0.i60.ph.i.i.i, %.thread85.i.i.i ], !dbg !6949
  %i.ld = load i64, ptr %i.fh, align 8, !dbg !6952, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.le = add i64 %i.ld, 1, !dbg !6957
  store i64 %i.le, ptr %i.fh, align 8, !dbg !6958, !alias.scope !6454, !noalias !6463
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !6486

bb.cl:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !6520, !noalias !6480
  br label %bb.ck, !dbg !6961

bb.cm:                                            ; preds = %bb.ch, %bb.cf, %.loopexit.i.i.i.i, %bb.am, %bb.ak, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.af ], [ %i.gl, %bb.am ], [ %i.kt, %bb.ch ], [ %i.ko, %bb.cf ], [ %i.fz, %bb.ak ], [ %.pn.i.i.i.i, %.loopexit.i.i.i.i ]
  %i.lf = load i64, ptr %i.fh, align 8, !dbg !6963, !alias.scope !6454, !noalias !6463, !noundef !15
  %i.lg = add i64 %i.lf, 1, !dbg !6968
  store i64 %i.lg, ptr %i.fh, align 8, !dbg !6969, !alias.scope !6454, !noalias !6463
  br label %.body.i, !dbg !6972

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.ck, %bb.at, %.noexc39.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.fg, %.noexc39.i ], [ %.sroa.0.2.i.i.i, %bb.ck ], [ %.sroa.0.0.i16.i.i, %bb.at ], !dbg !6973
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !6974
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !6975

bb.cn:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !6270, !noalias !6195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !6270, !noalias !6195
  %.pre132.i = load ptr, ptr %i.aq, align 8, !dbg !6280, !noalias !6195
  %.pre133.i = load i64, ptr %i.cc, align 8, !dbg !6275, !noalias !6195
  br label %bb.j, !dbg !6270

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i, %.noexc37.i, %.noexc34.i, %.noexc.i
  %.sroa.0.0.i27.i = phi ptr [ %i.da, %.noexc.i ], [ %.sroa.0.1.i.i.i, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.eq, %.noexc37.i ], [ %i.eh, %.noexc34.i ], !dbg !6977
  invoke void @_RNvXs_NtCs2Ov1vZ5ZpMw_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc11 unwind label %bb.fi, !dbg !6978

.noexc11:                                         ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !6205, !noalias !6195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !6205, !noalias !6195
  br label %bb.fj, !dbg !6981

bb.co:                                            ; preds = %.body.i
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !6983
  unreachable, !dbg !6983

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i, %bb.f, %bb.d
  %i.li = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !6984, !noalias !6195 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 6, !dbg !6992
  call void @llvm.assume(i1 %i.lj), !dbg !6992
  %i.lk = icmp samesign ugt i64 %i.li, 4, !dbg !6993
  br i1 %i.lk, label %bb.cq, label %bb.cr, !dbg !7003

bb.cp:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i
  %i.ll = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !7004, !noalias !6195 ; 2 uses
  %i.lm = icmp ult i64 %i.ll, 6, !dbg !7012
  call void @llvm.assume(i1 %i.lm), !dbg !7012
  %i.ln = icmp samesign ugt i64 %i.ll, 4, !dbg !7013
  br i1 %i.ln, label %bb.ef, label %.thread.i, !dbg !7023

bb.cq:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !7024, !noalias !6195
  store ptr %i.as, ptr %i.ai, align 8, !dbg !7024, !noalias !6195
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !7024
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCsG258MDvU3F_3std4path4PathENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !7024, !noalias !6195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !7003, !noalias !6195
  store ptr @3, ptr %i.ah, align 8, !dbg !7003, !noalias !6195
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !7003
  store i64 23, ptr %i.lo, align 8, !dbg !7003, !noalias !6195
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !7003
  store ptr @3, ptr %i.lp, align 8, !dbg !7003, !noalias !6195
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !7003
  store i64 23, ptr %i.lq, align 8, !dbg !7003, !noalias !6195
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !7003
  store ptr @20, ptr %i.lr, align 8, !dbg !7003, !noalias !6195
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @19, ptr noundef nonnull %i.ai, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %.noexc12 unwind label %bb.fi, !dbg !7003

.noexc12:                                         ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !7003, !noalias !6195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !7003, !noalias !6195
  br label %bb.cr, !dbg !7003

bb.cr:                                            ; preds = %.noexc12, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7027), !dbg !7030
  call void @llvm.experimental.noalias.scope.decl(metadata !7031), !dbg !7030
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !7033
  %i.ls = load i64, ptr %0, align 8, !dbg !7033, !range !52, !alias.scope !7038, !noalias !7039, !noundef !15
  %i.lt = trunc nuw i64 %i.ls to i1, !dbg !7045
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !alias.scope !7038, !noalias !7046
  %i.lw = icmp ne i64 %i.lv, 0
  %not..i41.i = xor i1 %i.lt, true, !dbg !7045
  %or.cond.i42.i = select i1 %not..i41.i, i1 true, i1 %i.lw, !dbg !7045
  %i.lx = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !7038, !noalias !7046
  %i.ly = icmp eq i8 %i.lx, 0
  %or.cond82.i.i = select i1 %or.cond.i42.i, i1 true, i1 %i.ly, !dbg !7045
  br i1 %or.cond82.i.i, label %bb.cs, label %bb.cv, !dbg !7045

bb.cs:                                            ; preds = %bb.cr
  %.val.i.i.i.i51.i = load ptr, ptr %1, align 8, !dbg !7047, !alias.scope !7050, !noalias !7051, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.lz = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 84, !dbg !7052 ; 2 uses
  %.val.i.i.i.i.i52.i = load i8, ptr %i.lz, align 4, !dbg !7052, !range !80, !noalias !7054, !noundef !15 ; 4 uses
  %i.ma = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 85, !dbg !7052 ; 2 uses
  %.val1.i.i.i.i.i53.i = load i8, ptr %i.ma, align 1, !dbg !7052, !noalias !7054 ; 3 uses
  %.not.i.i54.i = icmp eq i8 %.val.i.i.i.i.i52.i, 2, !dbg !7055
  br i1 %.not.i.i54.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.ct, !dbg !7056

bb.ct:                                            ; preds = %bb.cs
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7057
  %i.mc = load i8, ptr %i.mb, align 8, !dbg !7057, !range !60, !alias.scope !7038, !noalias !7039, !noundef !15 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !7057 ; 2 uses
  %i.me = icmp eq i8 %.val.i.i.i.i.i52.i, %i.mc, !dbg !7061
  br i1 %i.me, label %bb.cu, label %._crit_edge.i.i55.i, !dbg !7061

._crit_edge.i.i55.i:                              ; preds = %bb.ct
  %.pre.i.i56.i = load i8, ptr %i.md, align 1, !dbg !7062, !alias.scope !7038, !noalias !7039
  br label %bb.cv, !dbg !7061

bb.cu:                                            ; preds = %bb.ct
  %or.cond.not.i.i57.i = icmp ne i8 %.val.i.i.i.i.i52.i, 0, !dbg !7061
  %i.mf = load i8, ptr %i.md, align 1, !alias.scope !7038, !noalias !7046 ; 2 uses
  %.not12.i.i58.i = icmp eq i8 %.val1.i.i.i.i.i53.i, %i.mf
  %or.cond83.i.i = select i1 %or.cond.not.i.i57.i, i1 true, i1 %.not12.i.i58.i, !dbg !7061
  br i1 %or.cond83.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.cv, !dbg !7061

bb.cv:                                            ; preds = %bb.cu, %._crit_edge.i.i55.i, %bb.cr
  %.sroa.12.0.ph.i43.i = phi i8 [ %i.mf, %bb.cu ], [ %.pre.i.i56.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.11.0.ph.i43.i = phi i8 [ 0, %bb.cu ], [ %i.mc, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.10.0.ph.i44.i = phi i8 [ %.val1.i.i.i.i.i53.i, %bb.cu ], [ %.val1.i.i.i.i.i53.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.9.0.ph.i45.i = phi i8 [ 0, %bb.cu ], [ %.val.i.i.i.i.i52.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.060.0.ph.i.i = phi i64 [ -9223372036854775807, %bb.cu ], [ -9223372036854775807, %._crit_edge.i.i55.i ], [ -9223372036854775808, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !7063, !noalias !7066
  store i64 %.sroa.060.0.ph.i.i, ptr %i.g, align 8, !dbg !7063, !noalias !7066
  %.sroa.9.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !7063
  store i8 %.sroa.9.0.ph.i45.i, ptr %.sroa.9.0..sroa_idx.i47.i, align 8, !dbg !7063, !noalias !7066
  %.sroa.10.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9, !dbg !7063
  store i8 %.sroa.10.0.ph.i44.i, ptr %.sroa.10.0..sroa_idx.i48.i, align 1, !dbg !7063, !noalias !7066
  %.sroa.11.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.g, i64 10, !dbg !7063
  store i8 %.sroa.11.0.ph.i43.i, ptr %.sroa.11.0..sroa_idx.i49.i, align 2, !dbg !7063, !noalias !7066
  %.sroa.12.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.g, i64 11, !dbg !7063
  store i8 %.sroa.12.0.ph.i43.i, ptr %.sroa.12.0..sroa_idx.i50.i, align 1, !dbg !7063, !noalias !7066
  %i.mg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc13 unwind label %bb.fi, !dbg !7067

.noexc13:                                         ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !7071, !noalias !7066
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !7072

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i: ; preds = %bb.cu, %bb.cs
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7073 ; 8 uses
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !7078, !alias.scope !7038, !noalias !7046, !noundef !15
  %i.mj = icmp eq i64 %i.mi, 0, !dbg !7083
  br i1 %i.mj, label %bb.cw, label %.invoke, !dbg !7083, !prof !427

bb.cw:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i
  store i64 -1, ptr %i.mh, align 8, !dbg !7084, !alias.scope !7038, !noalias !7046
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !7094, !noalias !7066
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7094
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ml, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %bb.cy unwind label %bb.cx, !dbg !7096, !noalias !7097

bb.cx:                                            ; preds = %bb.cw
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cy:                                            ; preds = %bb.cw
  %i.mn = load i64, ptr %i.o, align 8, !dbg !7098, !range !450, !noalias !7066, !noundef !15 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, 2, !dbg !7098
  %i.mp = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !7101
  %i.mq = load ptr, ptr %i.mp, align 8, !dbg !7101, !noalias !7066 ; 3 uses
  br i1 %i.mo, label %bb.ed, label %bb.cz, !dbg !7102

bb.cz:                                            ; preds = %bb.cy
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !7103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx.i.i, i64 136, i1 false), !dbg !7103, !noalias !7066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !7104, !noalias !7066
  %i.mr = load i8, ptr %i.bf, align 8, !dbg !7105, !range !60, !alias.scope !7038, !noalias !7109, !noundef !15
  %i.ms = trunc nuw i8 %i.mr to i1, !dbg !7105
  br i1 %i.ms, label %bb.da, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !7112

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i54.i.i = load i8, ptr %i.lz, align 4, !dbg !7113, !range !80, !noalias !7117, !noundef !15 ; 3 uses
  %.not.i55.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 2, !dbg !7118
  %.phi.trans.insert.i.i62.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i = load i8, ptr %.phi.trans.insert.i.i62.i, align 8, !dbg !7119, !range !60, !alias.scope !7038, !noalias !7109 ; 2 uses
  %i.mt = icmp eq i8 %.val.i.i.i.i54.i.i, %.pre.i56.i.i
  %or.cond21.i.i63.i = select i1 %.not.i55.i.i, i1 %i.mt, i1 false, !dbg !7121
  br i1 %or.cond21.i.i63.i, label %bb.db, label %._crit_edge.i57.i.i, !dbg !7121

bb.db:                                            ; preds = %bb.da
  %.val1.i.i.i.i58.i.i = load i8, ptr %i.ma, align 1, !dbg !7113, !noalias !7117
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !7122
  %i.mv = load i8, ptr %i.mu, align 1, !dbg !7122, !alias.scope !7038, !noalias !7109 ; 2 uses
  %or.cond.not.i59.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 0, !dbg !7124
  %i.mw = icmp eq i8 %.val1.i.i.i.i58.i.i, %i.mv
  %or.cond.i.i69.i = select i1 %or.cond.not.i59.i.i, i1 true, i1 %i.mw, !dbg !7124
  br i1 %or.cond.i.i69.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !7124

._crit_edge.i57.i.i:                              ; preds = %bb.da
  %i.mx = trunc nuw i8 %.pre.i56.i.i to i1, !dbg !7127
  br i1 %i.mx, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, label %._crit_edge.i57..thread.i_crit_edge.i.i, !dbg !7129

._crit_edge.i57..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i57.i.i
  %.phi.trans.insert.i64.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i65.i = load i8, ptr %.phi.trans.insert.i64.i, align 1, !dbg !7127, !alias.scope !7038, !noalias !7109
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !7129

bb.dc:                                            ; preds = %bb.dt, %bb.dp, %bb.do, %bb.dd
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i, %._crit_edge.i57.i.i, %bb.db
  %.sroa.06.0.i.i67.i = phi i8 [ 10, %._crit_edge.i57.i.i ], [ %.pre.i65.i, %._crit_edge.i57..thread.i_crit_edge.i.i ], [ %i.mv, %bb.db ], !dbg !7131 ; 2 uses
  %i.mz = lshr i8 %.sroa.06.0.i.i67.i, 6, !dbg !7132
  %i.na = zext nneg i8 %i.mz to i64, !dbg !7134
  %i.nb = and i8 %.sroa.06.0.i.i67.i, 63, !dbg !7136
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i51.i, i64 %i.na, !dbg !7137
  %i.nd = load i64, ptr %i.nc, align 8, !dbg !7137, !noalias !7117, !noundef !15
  %i.ne = zext nneg i8 %i.nb to i64, !dbg !7138
  %i.nf = shl nuw i64 1, %i.ne, !dbg !7138
  %i.ng = and i64 %i.nf, %i.nd, !dbg !7137
  %.not17.i.i68.i = icmp eq i64 %i.ng, 0, !dbg !7137
  br i1 %.not17.i.i68.i, label %bb.dn, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !7139

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, %bb.db, %bb.cz
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !7140 ; 6 uses
  %i.ni = load i64, ptr %i.nh, align 8, !dbg !7146, !alias.scope !7038, !noalias !7046, !noundef !15
  %i.nj = icmp eq i64 %i.ni, 0, !dbg !7151
  br i1 %i.nj, label %bb.df, label %bb.dd, !dbg !7151, !prof !427

bb.dd:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.dm unwind label %bb.dc, !dbg !7152, !noalias !7097

bb.de:                                            ; preds = %bb.dj, %bb.dh, %bb.dg
  %i.nk = landingpad { ptr, i32 }
          cleanup
  %i.nl = load i64, ptr %i.nh, align 8, !dbg !7154, !alias.scope !7038, !noalias !7046, !noundef !15
  %i.nm = add i64 %i.nl, 1, !dbg !7159
  store i64 %i.nm, ptr %i.nh, align 8, !dbg !7160, !alias.scope !7038, !noalias !7046
  br label %bb.ee, !dbg !7163

bb.df:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  store i64 -1, ptr %i.nh, align 8, !dbg !7164, !alias.scope !7038, !noalias !7046
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !7169
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !7174
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !7180
  store i64 0, ptr %i.np, align 8, !dbg !7180, !alias.scope !7038, !noalias !7046
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.no, i8 0, i64 32, i1 false), !dbg !7181, !alias.scope !7038, !noalias !7046
  %i.nq = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !7182, !noalias !7066 ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 6, !dbg !7193
  call void @llvm.assume(i1 %i.nr), !dbg !7193
  %i.ns = icmp samesign ugt i64 %i.nq, 4, !dbg !7194
  br i1 %i.ns, label %bb.dg, label %bb.dh, !dbg !7208

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !7208, !noalias !7066
  store ptr @3, ptr %i.j, align 8, !dbg !7208, !noalias !7066
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !7208
  store i64 23, ptr %i.nt, align 8, !dbg !7208, !noalias !7066
  %i.nu = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !7208
  store ptr @3, ptr %i.nu, align 8, !dbg !7208, !noalias !7066
  %i.nv = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !7208
  store i64 23, ptr %i.nv, align 8, !dbg !7208, !noalias !7066
  %i.nw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !7208
  store ptr @9, ptr %i.nw, align 8, !dbg !7208, !noalias !7066
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.di unwind label %bb.de, !dbg !7208, !noalias !7097

bb.dh:                                            ; preds = %bb.di, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !7209, !noalias !7066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !7210, !noalias !7066
  store i64 %i.mn, ptr %i.h, align 8, !dbg !7210, !noalias !7066
  %.sroa.025.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !7210
  store ptr %i.mq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7210, !noalias !7066
  %.sroa.025.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !7210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !7210, !noalias !7066
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152, !dbg !7210
  store ptr %i.nn, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !dbg !7210, !noalias !7066
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.i, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4)
          to label %bb.dj unwind label %bb.de, !dbg !7209

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !7208, !noalias !7066
  br label %bb.dh, !dbg !7208

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !7211, !noalias !7066
  %i.nx = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.i)
          to label %bb.dk unwind label %bb.de, !dbg !7212

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !7213, !noalias !7066
  %i.ny = load i64, ptr %i.nh, align 8, !dbg !7214, !alias.scope !7038, !noalias !7046, !noundef !15
  %i.nz = add i64 %i.ny, 1, !dbg !7219
  store i64 %i.nz, ptr %i.nh, align 8, !dbg !7220, !alias.scope !7038, !noalias !7046
  br label %bb.dl, !dbg !7223

bb.dl:                                            ; preds = %bb.eb, %bb.dk
  %.sroa.0.0.i61.i = phi ptr [ %i.ph, %bb.eb ], [ %i.nx, %bb.dk ], !dbg !7224
  %i.oa = load i64, ptr %i.mh, align 8, !dbg !7225, !alias.scope !7038, !noalias !7046, !noundef !15
  %i.ob = add i64 %i.oa, 1, !dbg !7230
  store i64 %i.ob, ptr %i.mh, align 8, !dbg !7231, !alias.scope !7038, !noalias !7046
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i, !dbg !7072

bb.dm:                                            ; preds = %bb.dd
  unreachable

bb.dn:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i
  %i.oc = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !7234, !noalias !7066 ; 2 uses
  %i.od = icmp ult i64 %i.oc, 6, !dbg !7241
  call void @llvm.assume(i1 %i.od), !dbg !7241
  %i.oe = icmp samesign ugt i64 %i.oc, 4, !dbg !7242
  br i1 %i.oe, label %bb.do, label %bb.dp, !dbg !7252

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !7252, !noalias !7066
  store ptr @3, ptr %i.n, align 8, !dbg !7252, !noalias !7066
  %i.of = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !7252
  store i64 23, ptr %i.of, align 8, !dbg !7252, !noalias !7066
  %i.og = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !7252
  store ptr @3, ptr %i.og, align 8, !dbg !7252, !noalias !7066
  %i.oh = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !7252
  store i64 23, ptr %i.oh, align 8, !dbg !7252, !noalias !7066
  %i.oi = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !7252
  store ptr @12, ptr %i.oi, align 8, !dbg !7252, !noalias !7066
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 113 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.dq unwind label %bb.dc, !dbg !7252, !noalias !7097

bb.dp:                                            ; preds = %bb.dq, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !7253, !noalias !7066
  store i64 %i.mn, ptr %i.m, align 8, !dbg !7253, !noalias !7066
  %.sroa.618.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !7253
  store ptr %i.mq, ptr %.sroa.618.0..sroa_idx19.i.i, align 8, !dbg !7253, !noalias !7066
  %.sroa.7.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !7253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !7253, !noalias !7066
  %i.oj = invoke fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.m)
          to label %bb.dr unwind label %bb.dc, !dbg !7254, !noalias !7097 ; 2 uses
end_hunk_9
begin_hunk_10_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1H_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
  br i1 %i.db, label %bb.r, label %bb.o, !dbg !7813

bb.o:                                             ; preds = %.noexc31.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7814
  %i.dd = load i8, ptr %i.dc, align 8, !dbg !7814, !range !60, !alias.scope !7777, !noalias !7817, !noundef !15
  %i.de = trunc nuw i8 %i.dd to i1, !dbg !7814
  br i1 %i.de, label %bb.p, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !7820

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i8.i.i = load i8, ptr %i.ct, align 4, !dbg !7821, !range !80, !noalias !7825, !noundef !15 ; 3 uses
  %.not.i9.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 2, !dbg !7826
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i10.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !7827, !range !60, !alias.scope !7777, !noalias !7817 ; 2 uses
  %i.df = icmp eq i8 %.val.i.i.i.i8.i.i, %.pre.i10.i.i
  %or.cond21.i.i.i = select i1 %.not.i9.i.i, i1 %i.df, i1 false, !dbg !7829
  br i1 %or.cond21.i.i.i, label %bb.q, label %._crit_edge.i11.i.i, !dbg !7829

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i12.i.i = load i8, ptr %i.cu, align 1, !dbg !7821, !noalias !7825
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !7830
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !7830, !alias.scope !7777, !noalias !7817 ; 2 uses
  %or.cond.not.i13.i.i = icmp ne i8 %.val.i.i.i.i8.i.i, 0, !dbg !7832
  %i.di = icmp eq i8 %.val1.i.i.i.i12.i.i, %i.dh
  %or.cond.i.i.i = select i1 %or.cond.not.i13.i.i, i1 true, i1 %i.di, !dbg !7832
  br i1 %or.cond.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !7832

._crit_edge.i11.i.i:                              ; preds = %bb.p
  %i.dj = trunc nuw i8 %.pre.i10.i.i to i1, !dbg !7835
  br i1 %i.dj, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, label %._crit_edge.i11..thread.i_crit_edge.i.i, !dbg !7837

._crit_edge.i11..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i11.i.i
  %.phi.trans.insert.i29.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i30.i = load i8, ptr %.phi.trans.insert.i29.i, align 1, !dbg !7835, !alias.scope !7777, !noalias !7817
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !7837

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %._crit_edge.i11..thread.i_crit_edge.i.i, %._crit_edge.i11.i.i, %bb.q
  %.sroa.06.0.i.i.i = phi i8 [ 10, %._crit_edge.i11.i.i ], [ %.pre.i30.i, %._crit_edge.i11..thread.i_crit_edge.i.i ], [ %i.dh, %bb.q ], !dbg !7839 ; 2 uses
  %i.dk = lshr i8 %.sroa.06.0.i.i.i, 6, !dbg !7840
  %i.dl = zext nneg i8 %i.dk to i64, !dbg !7842
  %i.dm = and i8 %.sroa.06.0.i.i.i, 63, !dbg !7844
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.dl, !dbg !7845
  %i.do = load i64, ptr %i.dn, align 8, !dbg !7845, !noalias !7825, !noundef !15
  %i.dp = zext nneg i8 %i.dm to i64, !dbg !7846
  %i.dq = shl nuw i64 1, %i.dp, !dbg !7846
  %i.dr = and i64 %i.dq, %i.do, !dbg !7845
  %.not17.i.i.i = icmp eq i64 %i.dr, 0, !dbg !7845
  br i1 %.not17.i.i.i, label %bb.s, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !7847

bb.r:                                             ; preds = %.noexc31.i
  %i.ds = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !7848, !noalias !7805 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 6, !dbg !7857
  call void @llvm.assume(i1 %i.dt), !dbg !7857
  %i.du = icmp samesign ugt i64 %i.ds, 4, !dbg !7858
  br i1 %i.du, label %bb.x, label %bb.y, !dbg !7872

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i, %bb.q, %bb.o
  %i.dv = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !7873, !noalias !7805 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 6, !dbg !7881
  call void @llvm.assume(i1 %i.dw), !dbg !7881
  %i.dx = icmp samesign ugt i64 %i.dv, 4, !dbg !7882
  br i1 %i.dx, label %bb.t, label %bb.u, !dbg !7892

bb.s:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i
  %i.dy = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !7893, !noalias !7805 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6, !dbg !7901
  call void @llvm.assume(i1 %i.dz), !dbg !7901
  %i.ea = icmp samesign ugt i64 %i.dy, 4, !dbg !7902
  br i1 %i.ea, label %bb.v, label %bb.w, !dbg !7912

bb.t:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !7892, !noalias !7805
  store ptr @3, ptr %i.ac, align 8, !dbg !7892, !noalias !7805
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !7892
  store i64 23, ptr %i.eb, align 8, !dbg !7892, !noalias !7805
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !7892
  store ptr @3, ptr %i.ec, align 8, !dbg !7892, !noalias !7805
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !7892
  store i64 23, ptr %i.ed, align 8, !dbg !7892, !noalias !7805
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !7892
  store ptr @2, ptr %i.ee, align 8, !dbg !7892, !noalias !7805
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %.noexc32.i unwind label %bb.g, !dbg !7892, !noalias !7757

.noexc32.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !7892, !noalias !7805
  br label %bb.u, !dbg !7892

bb.u:                                             ; preds = %.noexc32.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !7913, !noalias !7805
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4, i1 noundef zeroext true)
          to label %.noexc33.i unwind label %bb.g, !dbg !7914

.noexc33.i:                                       ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 120, !dbg !7917
  store ptr %i.cl, ptr %i.ef, align 8, !dbg !7917, !noalias !7805
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 128, !dbg !7917
  store i64 %i.ck, ptr %i.eg, align 8, !dbg !7917, !noalias !7805
  %i.eh = invoke noundef ptr @_RNvMs_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB4_11SliceByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB18_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.ab)
          to label %.noexc34.i unwind label %bb.g, !dbg !7918

.noexc34.i:                                       ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !7919, !noalias !7805
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !7920

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !7912, !noalias !7805
  store ptr @3, ptr %i.ae, align 8, !dbg !7912, !noalias !7805
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !7912
  store i64 23, ptr %i.ei, align 8, !dbg !7912, !noalias !7805
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !7912
  store ptr @3, ptr %i.ej, align 8, !dbg !7912, !noalias !7805
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !7912
  store i64 23, ptr %i.ek, align 8, !dbg !7912, !noalias !7805
  %i.el = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !7912
  store ptr @5, ptr %i.el, align 8, !dbg !7912, !noalias !7805
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 93 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %.noexc35.i unwind label %bb.g, !dbg !7912, !noalias !7757

.noexc35.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !7912, !noalias !7805
  br label %bb.w, !dbg !7912

bb.w:                                             ; preds = %.noexc35.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !7921, !noalias !7805
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4, i1 noundef zeroext true)
          to label %.noexc36.i unwind label %bb.g, !dbg !7922

.noexc36.i:                                       ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 144, !dbg !7925
  store ptr %0, ptr %i.em, align 8, !dbg !7925, !noalias !7805
  %i.en = getelementptr inbounds nuw i8, ptr %i.ad, i64 152, !dbg !7925
  store ptr %i.cl, ptr %i.en, align 8, !dbg !7925, !noalias !7805
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ad, i64 160, !dbg !7925
  store i64 %i.ck, ptr %i.eo, align 8, !dbg !7925, !noalias !7805
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 120, !dbg !7925
  store i64 0, ptr %i.ep, align 8, !dbg !7925, !noalias !7805
  %i.eq = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.ad)
          to label %.noexc37.i unwind label %bb.g, !dbg !7926

.noexc37.i:                                       ; preds = %.noexc36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !7927, !noalias !7805
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !7920

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !7872, !noalias !7805
  store ptr @3, ptr %i.af, align 8, !dbg !7872, !noalias !7805
  %i.er = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !7872
  store i64 23, ptr %i.er, align 8, !dbg !7872, !noalias !7805
  %i.es = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !7872
  store ptr @3, ptr %i.es, align 8, !dbg !7872, !noalias !7805
  %i.et = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !7872
  store i64 23, ptr %i.et, align 8, !dbg !7872, !noalias !7805
  %i.eu = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !7872
  store ptr @7, ptr %i.eu, align 8, !dbg !7872, !noalias !7805
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 107 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %.noexc38.i unwind label %bb.g, !dbg !7872, !noalias !7757

.noexc38.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !7872, !noalias !7805
  br label %bb.y, !dbg !7872

bb.y:                                             ; preds = %.noexc38.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !7928), !dbg !7931
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !7932
  %i.ev = load i64, ptr %0, align 8, !dbg !7932, !range !52, !alias.scope !7937, !noalias !7938, !noundef !15
  %i.ew = trunc nuw i64 %i.ev to i1, !dbg !7945
  %i.ex = load i64, ptr %i.co, align 8, !alias.scope !7937, !noalias !7946
  %i.ey = icmp ne i64 %i.ex, 0
  %not..i.i.i = xor i1 %i.ew, true, !dbg !7945
  %or.cond.i14.i.i = select i1 %not..i.i.i, i1 true, i1 %i.ey, !dbg !7945
  %i.ez = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !7937, !noalias !7946
  %i.fa = icmp eq i8 %i.ez, 0
  %or.cond92.i.i.i = select i1 %or.cond.i14.i.i, i1 true, i1 %i.fa, !dbg !7945
  br i1 %or.cond92.i.i.i, label %bb.z, label %bb.ac, !dbg !7945

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.ct, align 4, !dbg !7947, !range !80, !noalias !7951, !noundef !15 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.cu, align 1, !dbg !7947, !noalias !7951 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i, 2, !dbg !7952
  br i1 %.not.i.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.aa, !dbg !7953

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7954
  %i.fc = load i8, ptr %i.fb, align 8, !dbg !7954, !range !60, !alias.scope !7937, !noalias !7938, !noundef !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !7954 ; 2 uses
  %i.fe = icmp eq i8 %.val.i.i.i.i.i.i.i, %i.fc, !dbg !7958
  br i1 %i.fe, label %bb.ab, label %._crit_edge.i.i.i.i, !dbg !7958

._crit_edge.i.i.i.i:                              ; preds = %bb.aa
  %.pre.i.i.i.i = load i8, ptr %i.fd, align 1, !dbg !7959, !alias.scope !7937, !noalias !7938
  br label %bb.ac, !dbg !7958

bb.ab:                                            ; preds = %bb.aa
  %or.cond.not.i.i.i.i = icmp ne i8 %.val.i.i.i.i.i.i.i, 0, !dbg !7958
  %i.ff = load i8, ptr %i.fd, align 1, !alias.scope !7937, !noalias !7946 ; 2 uses
  %.not12.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, %i.ff
  %or.cond93.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %.not12.i.i.i.i, !dbg !7958
  br i1 %or.cond93.i.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.ac, !dbg !7958

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i, %bb.y
  %.sroa.12.0.ph.i.i.i = phi i8 [ %i.ff, %bb.ab ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.11.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %i.fc, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.10.0.ph.i.i.i = phi i8 [ %.val1.i.i.i.i.i.i.i, %bb.ab ], [ %.val1.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.9.0.ph.i.i.i = phi i8 [ 0, %bb.ab ], [ %.val.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ undef, %bb.y ]
  %.sroa.064.0.ph.i.i.i = phi i64 [ -9223372036854775807, %bb.ab ], [ -9223372036854775807, %._crit_edge.i.i.i.i ], [ -9223372036854775808, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !7960, !noalias !7963
  store i64 %.sroa.064.0.ph.i.i.i, ptr %i.r, align 8, !dbg !7960, !noalias !7963
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !7960
  store i8 %.sroa.9.0.ph.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !7960, !noalias !7963
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9, !dbg !7960
  store i8 %.sroa.10.0.ph.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !dbg !7960, !noalias !7963
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 10, !dbg !7960
  store i8 %.sroa.11.0.ph.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !dbg !7960, !noalias !7963
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 11, !dbg !7960
  store i8 %.sroa.12.0.ph.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !dbg !7960, !noalias !7963
  %i.fg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc39.i unwind label %bb.g, !dbg !7964, !noalias !7757

.noexc39.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !7968, !noalias !7963
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !7969

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.ab, %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7970 ; 8 uses
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !7975, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.fj = icmp eq i64 %i.fi, 0, !dbg !7980
  br i1 %i.fj, label %bb.ad, label %bb.ae, !dbg !7980, !prof !427

bb.ad:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  store i64 -1, ptr %i.fh, align 8, !dbg !7981, !alias.scope !7937, !noalias !7946
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !7991, !noalias !7963
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7991
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %bb.ag unwind label %bb.af, !dbg !7993, !noalias !7994

bb.ae:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
          to label %.noexc40.i unwind label %bb.g, !dbg !7995, !noalias !7757

.noexc40.i:                                       ; preds = %bb.ae
  unreachable, !dbg !7995

bb.af:                                            ; preds = %bb.ad
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ag:                                            ; preds = %bb.ad
  %i.fn = load i64, ptr %i.z, align 8, !dbg !7997, !range !450, !noalias !7963, !noundef !15 ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 2, !dbg !7997
  %i.fp = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !8000
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !8000, !noalias !7963 ; 4 uses
  br i1 %i.fo, label %bb.cl, label %bb.ah, !dbg !8001

bb.ah:                                            ; preds = %bb.ag
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !8002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.537.0..sroa_idx.i.i.i, i64 144, i1 false), !dbg !8002, !noalias !7963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !8003, !noalias !7963
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !8004 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !dbg !8004, !range !60, !alias.scope !7937, !noalias !8008, !noundef !15
  %i.ft = trunc nuw i8 %i.fs to i1, !dbg !8004
  br i1 %i.ft, label %bb.ai, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !8011

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i.i.i54.i.i.i = load i8, ptr %i.ct, align 4, !dbg !8012, !range !80, !noalias !8016, !noundef !15 ; 3 uses
  %.not.i55.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 2, !dbg !8017
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !8018, !range !60, !alias.scope !7937, !noalias !8008 ; 2 uses
  %i.fu = icmp eq i8 %.val.i.i.i.i54.i.i.i, %.pre.i56.i.i.i
  %or.cond21.i.i.i.i = select i1 %.not.i55.i.i.i, i1 %i.fu, i1 false, !dbg !8020
  br i1 %or.cond21.i.i.i.i, label %bb.aj, label %._crit_edge.i57.i.i.i, !dbg !8020

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i.i.i58.i.i.i = load i8, ptr %i.cu, align 1, !dbg !8012, !noalias !8016
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !8021
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !8021, !alias.scope !7937, !noalias !8008 ; 2 uses
  %or.cond.not.i59.i.i.i = icmp ne i8 %.val.i.i.i.i54.i.i.i, 0, !dbg !8023
  %i.fx = icmp eq i8 %.val1.i.i.i.i58.i.i.i, %i.fw
  %or.cond.i.i.i.i = select i1 %or.cond.not.i59.i.i.i, i1 true, i1 %i.fx, !dbg !8023
  br i1 %or.cond.i.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !8023

._crit_edge.i57.i.i.i:                            ; preds = %bb.ai
  %i.fy = trunc nuw i8 %.pre.i56.i.i.i to i1, !dbg !8026
  br i1 %i.fy, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, label %._crit_edge.i57..thread.i_crit_edge.i.i.i, !dbg !8028

._crit_edge.i57..thread.i_crit_edge.i.i.i:        ; preds = %._crit_edge.i57.i.i.i
  %.phi.trans.insert.i17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i18.i.i = load i8, ptr %.phi.trans.insert.i17.i.i, align 1, !dbg !8026, !alias.scope !7937, !noalias !8008
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !8028

bb.ak:                                            ; preds = %bb.cb, %bb.bb, %bb.ay, %bb.aw, %bb.al
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i.i, %._crit_edge.i57.i.i.i, %bb.aj
  %.sroa.06.0.i.i.i.i = phi i8 [ 10, %._crit_edge.i57.i.i.i ], [ %.pre.i18.i.i, %._crit_edge.i57..thread.i_crit_edge.i.i.i ], [ %i.fw, %bb.aj ], !dbg !8030 ; 2 uses
  %i.ga = lshr i8 %.sroa.06.0.i.i.i.i, 6, !dbg !8031
  %i.gb = zext nneg i8 %i.ga to i64, !dbg !8033
  %i.gc = and i8 %.sroa.06.0.i.i.i.i, 63, !dbg !8035
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i28.i, i64 %i.gb, !dbg !8036
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !8036, !noalias !8016, !noundef !15
  %i.gf = zext nneg i8 %i.gc to i64, !dbg !8037
  %i.gg = shl nuw i64 1, %i.gf, !dbg !8037
  %i.gh = and i64 %i.gg, %i.ge, !dbg !8036
  %.not17.i.i.i.i = icmp eq i64 %i.gh, 0, !dbg !8036
  br i1 %.not17.i.i.i.i, label %bb.av, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !8038

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.aj, %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !8039 ; 6 uses
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !8045, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.gk = icmp eq i64 %i.gj, 0, !dbg !8050
  br i1 %i.gk, label %bb.an, label %bb.al, !dbg !8050, !prof !427

bb.al:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.au unwind label %bb.ak, !dbg !8051, !noalias !7994

bb.am:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load i64, ptr %i.gi, align 8, !dbg !8053, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.gn = add i64 %i.gm, 1, !dbg !8058
  store i64 %i.gn, ptr %i.gi, align 8, !dbg !8059, !alias.scope !7937, !noalias !7946
  br label %bb.cm, !dbg !8062

bb.an:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  store i64 -1, ptr %i.gi, align 8, !dbg !8063, !alias.scope !7937, !noalias !7946
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !8068
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !8073
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !8079
  store i64 0, ptr %i.gq, align 8, !dbg !8079, !alias.scope !7937, !noalias !7946
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i8 0, i64 32, i1 false), !dbg !8080, !alias.scope !7937, !noalias !7946
  %i.gr = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8081, !noalias !7963 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6, !dbg !8092
  call void @llvm.assume(i1 %i.gs), !dbg !8092
  %i.gt = icmp samesign ugt i64 %i.gr, 4, !dbg !8093
  br i1 %i.gt, label %bb.ao, label %bb.ap, !dbg !8107

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8107, !noalias !7963
  store ptr @3, ptr %i.u, align 8, !dbg !8107, !noalias !7963
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !8107
  store i64 23, ptr %i.gu, align 8, !dbg !8107, !noalias !7963
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !8107
  store ptr @3, ptr %i.gv, align 8, !dbg !8107, !noalias !7963
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !8107
  store i64 23, ptr %i.gw, align 8, !dbg !8107, !noalias !7963
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !8107
  store ptr @9, ptr %i.gx, align 8, !dbg !8107, !noalias !7963
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.aq unwind label %bb.am, !dbg !8107, !noalias !7994

bb.ap:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !8108, !noalias !7963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !8109, !noalias !7963
  store i64 %i.fn, ptr %i.s, align 8, !dbg !8109, !noalias !7963
  %.sroa.025.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !8109
  store ptr %i.fq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !8109, !noalias !7963
  %.sroa.025.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !8109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.025.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i.i, i64 144, i1 false), !dbg !8109, !noalias !7963
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160, !dbg !8109
  store ptr %i.go, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !dbg !8109, !noalias !7963
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4)
          to label %bb.ar unwind label %bb.am, !dbg !8108

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8107, !noalias !7963
  br label %bb.ap, !dbg !8107

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8110, !noalias !7963
  %i.gy = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.t)
          to label %bb.as unwind label %bb.am, !dbg !8111

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !8112, !noalias !7963
  %i.gz = load i64, ptr %i.gi, align 8, !dbg !8113, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.ha = add i64 %i.gz, 1, !dbg !8118
  store i64 %i.ha, ptr %i.gi, align 8, !dbg !8119, !alias.scope !7937, !noalias !7946
  br label %bb.at, !dbg !8122

bb.at:                                            ; preds = %bb.cj, %bb.as
  %.sroa.0.0.i16.i.i = phi ptr [ %i.la, %bb.cj ], [ %i.gy, %bb.as ], !dbg !8123
  %i.hb = load i64, ptr %i.fh, align 8, !dbg !8124, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.hc = add i64 %i.hb, 1, !dbg !8129
  store i64 %i.hc, ptr %i.fh, align 8, !dbg !8130, !alias.scope !7937, !noalias !7946
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !7969

bb.au:                                            ; preds = %bb.al
  unreachable

bb.av:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.hd = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8133, !noalias !7963 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 6, !dbg !8140
  call void @llvm.assume(i1 %i.he), !dbg !8140
  %i.hf = icmp samesign ugt i64 %i.hd, 4, !dbg !8141
  br i1 %i.hf, label %bb.aw, label %.thread154.i.i.i, !dbg !8151

.thread154.i.i.i:                                 ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !8152, !noalias !7963
  store i64 %i.fn, ptr %i.x, align 8, !dbg !8152, !noalias !7963
  %.sroa.618.0..sroa_idx19155.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !8152
  store ptr %i.fq, ptr %.sroa.618.0..sroa_idx19155.i.i.i, align 8, !dbg !8152, !noalias !7963
end_hunk_10
begin_hunk_11_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1H_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !8372
  store i64 23, ptr %i.ki, align 8, !dbg !8372, !noalias !7963
  %i.kj = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !8372
  store ptr @3, ptr %i.kj, align 8, !dbg !8372, !noalias !7963
  %i.kk = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !8372
  store i64 23, ptr %i.kk, align 8, !dbg !8372, !noalias !7963
  %i.kl = getelementptr inbounds nuw i8, ptr %i.w, i64 32, !dbg !8372
  store ptr @14, ptr %i.kl, align 8, !dbg !8372, !noalias !7963
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %bb.ce unwind label %bb.ak, !dbg !8372, !noalias !7994

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.km = phi i64 [ %i.ke, %bb.ca ], [ %.pre141.i.i.i, %bb.ce ], !dbg !8373 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !8378, !noalias !7963
  %i.kn = icmp ult i64 %i.km, 9223372036854775807, !dbg !8379
  br i1 %i.kn, label %bb.cg, label %bb.cd, !dbg !8381, !prof !427

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63.i.i.i unwind label %bb.cf, !dbg !8382, !noalias !7994

.noexc63.i.i.i:                                   ; preds = %bb.cd
  unreachable, !dbg !8382

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !8372, !noalias !7963
  %.pre141.i.i.i = load i64, ptr %i.hl, align 8, !dbg !8373, !alias.scope !7937, !noalias !8383
  br label %bb.cc, !dbg !8372

bb.cf:                                            ; preds = %bb.cd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm, !dbg !8386

bb.cg:                                            ; preds = %bb.cc
  %i.kp = add nuw nsw i64 %i.km, 1, !dbg !8387
  store i64 %i.kp, ptr %i.hl, align 8, !dbg !8389, !alias.scope !7937, !noalias !8383
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !8392
  %i.kr = load ptr, ptr %i.kq, align 8, !dbg !8392, !alias.scope !7937, !noalias !7946, !nonnull !15, !noundef !15
  %i.ks = load i64, ptr %i.hp, align 8, !dbg !8405, !alias.scope !7937, !noalias !7946, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !8406, !noalias !7963
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4, i1 noundef zeroext true)
          to label %bb.ci unwind label %bb.ch, !dbg !8406

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load i64, ptr %i.hl, align 8, !dbg !8409, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.kv = add i64 %i.ku, -1, !dbg !8414
  store i64 %i.kv, ptr %i.hl, align 8, !dbg !8415, !alias.scope !7937, !noalias !7946
  br label %bb.cm, !dbg !8418

bb.ci:                                            ; preds = %bb.cg
  %i.kw = getelementptr inbounds nuw i8, ptr %i.v, i64 144, !dbg !8419
  store ptr %0, ptr %i.kw, align 8, !dbg !8419, !noalias !7963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !dbg !8419, !noalias !7963
  %i.kx = getelementptr inbounds nuw i8, ptr %i.v, i64 152, !dbg !8419
  store ptr %i.kr, ptr %i.kx, align 8, !dbg !8419, !noalias !7963
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !8419
  store i64 %i.ks, ptr %i.ky, align 8, !dbg !8419, !noalias !7963
  %i.kz = getelementptr inbounds nuw i8, ptr %i.v, i64 120, !dbg !8419
  store i64 0, ptr %i.kz, align 8, !dbg !8419, !noalias !7963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8420, !noalias !7963
  %i.la = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.v)
          to label %bb.cj unwind label %bb.ch, !dbg !8421

bb.cj:                                            ; preds = %bb.ci
  %i.lb = load i64, ptr %i.hl, align 8, !dbg !8422, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.lc = add i64 %i.lb, -1, !dbg !8427
  store i64 %i.lc, ptr %i.hl, align 8, !dbg !8428, !alias.scope !7937, !noalias !7946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !8431, !noalias !7963
  br label %bb.at, !dbg !8122

bb.ck:                                            ; preds = %bb.cl, %bb.bz, %.thread85.i.i.i
  %.sroa.0.2.i.i.i = phi ptr [ %i.fq, %bb.cl ], [ %i.kb, %bb.bz ], [ %.sroa.0.0.i60.ph.i.i.i, %.thread85.i.i.i ], !dbg !8432
  %i.ld = load i64, ptr %i.fh, align 8, !dbg !8435, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.le = add i64 %i.ld, 1, !dbg !8440
  store i64 %i.le, ptr %i.fh, align 8, !dbg !8441, !alias.scope !7937, !noalias !7946
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !7969

bb.cl:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !8003, !noalias !7963
  br label %bb.ck, !dbg !8444

bb.cm:                                            ; preds = %bb.ch, %bb.cf, %.loopexit.i.i.i.i, %bb.am, %bb.ak, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.af ], [ %i.gl, %bb.am ], [ %i.kt, %bb.ch ], [ %i.ko, %bb.cf ], [ %i.fz, %bb.ak ], [ %.pn.i.i.i.i, %.loopexit.i.i.i.i ]
  %i.lf = load i64, ptr %i.fh, align 8, !dbg !8446, !alias.scope !7937, !noalias !7946, !noundef !15
  %i.lg = add i64 %i.lf, 1, !dbg !8451
  store i64 %i.lg, ptr %i.fh, align 8, !dbg !8452, !alias.scope !7937, !noalias !7946
  br label %.body.i, !dbg !8455

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.ck, %bb.at, %.noexc39.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.fg, %.noexc39.i ], [ %.sroa.0.2.i.i.i, %bb.ck ], [ %.sroa.0.0.i16.i.i, %bb.at ], !dbg !8456
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !8457
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !8458

bb.cn:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !7753, !noalias !7678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !7753, !noalias !7678
  %.pre132.i = load ptr, ptr %i.aq, align 8, !dbg !7763, !noalias !7678
  %.pre133.i = load i64, ptr %i.cc, align 8, !dbg !7758, !noalias !7678
  br label %bb.j, !dbg !7753

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, %.noexc37.i, %.noexc34.i, %.noexc.i
  %.sroa.0.0.i27.i = phi ptr [ %i.da, %.noexc.i ], [ %.sroa.0.1.i.i.i, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRShQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.eq, %.noexc37.i ], [ %i.eh, %.noexc34.i ], !dbg !8460
  invoke void @_RNvXs_NtCs2Ov1vZ5ZpMw_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc11 unwind label %bb.fi, !dbg !8461

.noexc11:                                         ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !7688, !noalias !7678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !7688, !noalias !7678
  br label %bb.fj, !dbg !8464

bb.co:                                            ; preds = %.body.i
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !8466
  unreachable, !dbg !8466

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i, %bb.f, %bb.d
  %i.li = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8467, !noalias !7678 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 6, !dbg !8475
  call void @llvm.assume(i1 %i.lj), !dbg !8475
  %i.lk = icmp samesign ugt i64 %i.li, 4, !dbg !8476
  br i1 %i.lk, label %bb.cq, label %bb.cr, !dbg !8486

bb.cp:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i
  %i.ll = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8487, !noalias !7678 ; 2 uses
  %i.lm = icmp ult i64 %i.ll, 6, !dbg !8495
  call void @llvm.assume(i1 %i.lm), !dbg !8495
  %i.ln = icmp samesign ugt i64 %i.ll, 4, !dbg !8496
  br i1 %i.ln, label %bb.ef, label %.thread.i, !dbg !8506

bb.cq:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !8507, !noalias !7678
  store ptr %i.as, ptr %i.ai, align 8, !dbg !8507, !noalias !7678
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !8507
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCsG258MDvU3F_3std4path4PathENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !8507, !noalias !7678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !8486, !noalias !7678
  store ptr @3, ptr %i.ah, align 8, !dbg !8486, !noalias !7678
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !8486
  store i64 23, ptr %i.lo, align 8, !dbg !8486, !noalias !7678
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !8486
  store ptr @3, ptr %i.lp, align 8, !dbg !8486, !noalias !7678
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !8486
  store i64 23, ptr %i.lq, align 8, !dbg !8486, !noalias !7678
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !8486
  store ptr @20, ptr %i.lr, align 8, !dbg !8486, !noalias !7678
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @19, ptr noundef nonnull %i.ai, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %.noexc12 unwind label %bb.fi, !dbg !8486

.noexc12:                                         ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !8486, !noalias !7678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !8486, !noalias !7678
  br label %bb.cr, !dbg !8486

bb.cr:                                            ; preds = %.noexc12, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8510), !dbg !8513
  call void @llvm.experimental.noalias.scope.decl(metadata !8514), !dbg !8513
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !8516
  %i.ls = load i64, ptr %0, align 8, !dbg !8516, !range !52, !alias.scope !8521, !noalias !8522, !noundef !15
  %i.lt = trunc nuw i64 %i.ls to i1, !dbg !8528
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !alias.scope !8521, !noalias !8529
  %i.lw = icmp ne i64 %i.lv, 0
  %not..i41.i = xor i1 %i.lt, true, !dbg !8528
  %or.cond.i42.i = select i1 %not..i41.i, i1 true, i1 %i.lw, !dbg !8528
  %i.lx = load i8, ptr %i.bc, align 1, !range !60, !alias.scope !8521, !noalias !8529
  %i.ly = icmp eq i8 %i.lx, 0
  %or.cond82.i.i = select i1 %or.cond.i42.i, i1 true, i1 %i.ly, !dbg !8528
  br i1 %or.cond82.i.i, label %bb.cs, label %bb.cv, !dbg !8528

bb.cs:                                            ; preds = %bb.cr
  %.val.i.i.i.i51.i = load ptr, ptr %1, align 8, !dbg !8530, !alias.scope !8533, !noalias !8534, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.lz = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 84, !dbg !8535 ; 2 uses
  %.val.i.i.i.i.i52.i = load i8, ptr %i.lz, align 4, !dbg !8535, !range !80, !noalias !8537, !noundef !15 ; 4 uses
  %i.ma = getelementptr i8, ptr %.val.i.i.i.i51.i, i64 85, !dbg !8535 ; 2 uses
  %.val1.i.i.i.i.i53.i = load i8, ptr %i.ma, align 1, !dbg !8535, !noalias !8537 ; 3 uses
  %.not.i.i54.i = icmp eq i8 %.val.i.i.i.i.i52.i, 2, !dbg !8538
  br i1 %.not.i.i54.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.ct, !dbg !8539

bb.ct:                                            ; preds = %bb.cs
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !8540
  %i.mc = load i8, ptr %i.mb, align 8, !dbg !8540, !range !60, !alias.scope !8521, !noalias !8522, !noundef !15 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !8540 ; 2 uses
  %i.me = icmp eq i8 %.val.i.i.i.i.i52.i, %i.mc, !dbg !8544
  br i1 %i.me, label %bb.cu, label %._crit_edge.i.i55.i, !dbg !8544

._crit_edge.i.i55.i:                              ; preds = %bb.ct
  %.pre.i.i56.i = load i8, ptr %i.md, align 1, !dbg !8545, !alias.scope !8521, !noalias !8522
  br label %bb.cv, !dbg !8544

bb.cu:                                            ; preds = %bb.ct
  %or.cond.not.i.i57.i = icmp ne i8 %.val.i.i.i.i.i52.i, 0, !dbg !8544
  %i.mf = load i8, ptr %i.md, align 1, !alias.scope !8521, !noalias !8529 ; 2 uses
  %.not12.i.i58.i = icmp eq i8 %.val1.i.i.i.i.i53.i, %i.mf
  %or.cond83.i.i = select i1 %or.cond.not.i.i57.i, i1 true, i1 %.not12.i.i58.i, !dbg !8544
  br i1 %or.cond83.i.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i, label %bb.cv, !dbg !8544

bb.cv:                                            ; preds = %bb.cu, %._crit_edge.i.i55.i, %bb.cr
  %.sroa.12.0.ph.i43.i = phi i8 [ %i.mf, %bb.cu ], [ %.pre.i.i56.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.11.0.ph.i43.i = phi i8 [ 0, %bb.cu ], [ %i.mc, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.10.0.ph.i44.i = phi i8 [ %.val1.i.i.i.i.i53.i, %bb.cu ], [ %.val1.i.i.i.i.i53.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.9.0.ph.i45.i = phi i8 [ 0, %bb.cu ], [ %.val.i.i.i.i.i52.i, %._crit_edge.i.i55.i ], [ undef, %bb.cr ]
  %.sroa.060.0.ph.i.i = phi i64 [ -9223372036854775807, %bb.cu ], [ -9223372036854775807, %._crit_edge.i.i55.i ], [ -9223372036854775808, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !8546, !noalias !8549
  store i64 %.sroa.060.0.ph.i.i, ptr %i.g, align 8, !dbg !8546, !noalias !8549
  %.sroa.9.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !8546
  store i8 %.sroa.9.0.ph.i45.i, ptr %.sroa.9.0..sroa_idx.i47.i, align 8, !dbg !8546, !noalias !8549
  %.sroa.10.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9, !dbg !8546
  store i8 %.sroa.10.0.ph.i44.i, ptr %.sroa.10.0..sroa_idx.i48.i, align 1, !dbg !8546, !noalias !8549
  %.sroa.11.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.g, i64 10, !dbg !8546
  store i8 %.sroa.11.0.ph.i43.i, ptr %.sroa.11.0..sroa_idx.i49.i, align 2, !dbg !8546, !noalias !8549
  %.sroa.12.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.g, i64 11, !dbg !8546
  store i8 %.sroa.12.0.ph.i43.i, ptr %.sroa.12.0..sroa_idx.i50.i, align 1, !dbg !8546, !noalias !8549
  %i.mg = invoke noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc13 unwind label %bb.fi, !dbg !8550

.noexc13:                                         ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8554, !noalias !8549
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !8555

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i: ; preds = %bb.cu, %bb.cs
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !8556 ; 8 uses
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !8561, !alias.scope !8521, !noalias !8529, !noundef !15
  %i.mj = icmp eq i64 %i.mi, 0, !dbg !8566
  br i1 %i.mj, label %bb.cw, label %.invoke, !dbg !8566, !prof !427

bb.cw:                                            ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i59.i
  store i64 -1, ptr %i.mh, align 8, !dbg !8567, !alias.scope !8521, !noalias !8529
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !8573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !8577, !noalias !8549
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !8577
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ml, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %bb.cy unwind label %bb.cx, !dbg !8579, !noalias !8580

bb.cx:                                            ; preds = %bb.cw
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.cy:                                            ; preds = %bb.cw
  %i.mn = load i64, ptr %i.o, align 8, !dbg !8581, !range !450, !noalias !8549, !noundef !15 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, 2, !dbg !8581
  %i.mp = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !8584
  %i.mq = load ptr, ptr %i.mp, align 8, !dbg !8584, !noalias !8549 ; 3 uses
  br i1 %i.mo, label %bb.ed, label %bb.cz, !dbg !8585

bb.cz:                                            ; preds = %bb.cy
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !8586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx.i.i, i64 136, i1 false), !dbg !8586, !noalias !8549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !8587, !noalias !8549
  %i.mr = load i8, ptr %i.bf, align 8, !dbg !8588, !range !60, !alias.scope !8521, !noalias !8592, !noundef !15
  %i.ms = trunc nuw i8 %i.mr to i1, !dbg !8588
  br i1 %i.ms, label %bb.da, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !8595

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i54.i.i = load i8, ptr %i.lz, align 4, !dbg !8596, !range !80, !noalias !8600, !noundef !15 ; 3 uses
  %.not.i55.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 2, !dbg !8601
  %.phi.trans.insert.i.i62.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56.i.i = load i8, ptr %.phi.trans.insert.i.i62.i, align 8, !dbg !8602, !range !60, !alias.scope !8521, !noalias !8592 ; 2 uses
  %i.mt = icmp eq i8 %.val.i.i.i.i54.i.i, %.pre.i56.i.i
  %or.cond21.i.i63.i = select i1 %.not.i55.i.i, i1 %i.mt, i1 false, !dbg !8604
  br i1 %or.cond21.i.i63.i, label %bb.db, label %._crit_edge.i57.i.i, !dbg !8604

bb.db:                                            ; preds = %bb.da
  %.val1.i.i.i.i58.i.i = load i8, ptr %i.ma, align 1, !dbg !8596, !noalias !8600
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !8605
  %i.mv = load i8, ptr %i.mu, align 1, !dbg !8605, !alias.scope !8521, !noalias !8592 ; 2 uses
  %or.cond.not.i59.i.i = icmp ne i8 %.val.i.i.i.i54.i.i, 0, !dbg !8607
  %i.mw = icmp eq i8 %.val1.i.i.i.i58.i.i, %i.mv
  %or.cond.i.i69.i = select i1 %or.cond.not.i59.i.i, i1 true, i1 %i.mw, !dbg !8607
  br i1 %or.cond.i.i69.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !8607

._crit_edge.i57.i.i:                              ; preds = %bb.da
  %i.mx = trunc nuw i8 %.pre.i56.i.i to i1, !dbg !8610
  br i1 %i.mx, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, label %._crit_edge.i57..thread.i_crit_edge.i.i, !dbg !8612

._crit_edge.i57..thread.i_crit_edge.i.i:          ; preds = %._crit_edge.i57.i.i
  %.phi.trans.insert.i64.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre.i65.i = load i8, ptr %.phi.trans.insert.i64.i, align 1, !dbg !8610, !alias.scope !8521, !noalias !8592
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, !dbg !8612

bb.dc:                                            ; preds = %bb.dt, %bb.dp, %bb.do, %bb.dd
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i: ; preds = %._crit_edge.i57..thread.i_crit_edge.i.i, %._crit_edge.i57.i.i, %bb.db
  %.sroa.06.0.i.i67.i = phi i8 [ 10, %._crit_edge.i57.i.i ], [ %.pre.i65.i, %._crit_edge.i57..thread.i_crit_edge.i.i ], [ %i.mv, %bb.db ], !dbg !8614 ; 2 uses
  %i.mz = lshr i8 %.sroa.06.0.i.i67.i, 6, !dbg !8615
  %i.na = zext nneg i8 %i.mz to i64, !dbg !8617
  %i.nb = and i8 %.sroa.06.0.i.i67.i, 63, !dbg !8619
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i51.i, i64 %i.na, !dbg !8620
  %i.nd = load i64, ptr %i.nc, align 8, !dbg !8620, !noalias !8600, !noundef !15
  %i.ne = zext nneg i8 %i.nb to i64, !dbg !8621
  %i.nf = shl nuw i64 1, %i.ne, !dbg !8621
  %i.ng = and i64 %i.nf, %i.nd, !dbg !8620
  %.not17.i.i68.i = icmp eq i64 %i.ng, 0, !dbg !8620
  br i1 %.not17.i.i68.i, label %bb.dn, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i, !dbg !8622

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i: ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i, %bb.db, %bb.cz
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !8623 ; 6 uses
  %i.ni = load i64, ptr %i.nh, align 8, !dbg !8629, !alias.scope !8521, !noalias !8529, !noundef !15
  %i.nj = icmp eq i64 %i.ni, 0, !dbg !8634
  br i1 %i.nj, label %bb.df, label %bb.dd, !dbg !8634, !prof !427

bb.dd:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.dm unwind label %bb.dc, !dbg !8635, !noalias !8580

bb.de:                                            ; preds = %bb.dj, %bb.dh, %bb.dg
  %i.nk = landingpad { ptr, i32 }
          cleanup
  %i.nl = load i64, ptr %i.nh, align 8, !dbg !8637, !alias.scope !8521, !noalias !8529, !noundef !15
  %i.nm = add i64 %i.nl, 1, !dbg !8642
  store i64 %i.nm, ptr %i.nh, align 8, !dbg !8643, !alias.scope !8521, !noalias !8529
  br label %bb.ee, !dbg !8646

bb.df:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread.i60.i
  store i64 -1, ptr %i.nh, align 8, !dbg !8647, !alias.scope !8521, !noalias !8529
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !8652
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !8657
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !8663
  store i64 0, ptr %i.np, align 8, !dbg !8663, !alias.scope !8521, !noalias !8529
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.no, i8 0, i64 32, i1 false), !dbg !8664, !alias.scope !8521, !noalias !8529
  %i.nq = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8665, !noalias !8549 ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 6, !dbg !8676
  call void @llvm.assume(i1 %i.nr), !dbg !8676
  %i.ns = icmp samesign ugt i64 %i.nq, 4, !dbg !8677
  br i1 %i.ns, label %bb.dg, label %bb.dh, !dbg !8691

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8691, !noalias !8549
  store ptr @3, ptr %i.j, align 8, !dbg !8691, !noalias !8549
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !8691
  store i64 23, ptr %i.nt, align 8, !dbg !8691, !noalias !8549
  %i.nu = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !8691
  store ptr @3, ptr %i.nu, align 8, !dbg !8691, !noalias !8549
  %i.nv = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !8691
  store i64 23, ptr %i.nv, align 8, !dbg !8691, !noalias !8549
  %i.nw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !8691
  store ptr @9, ptr %i.nw, align 8, !dbg !8691, !noalias !8549
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.di unwind label %bb.de, !dbg !8691, !noalias !8580

bb.dh:                                            ; preds = %bb.di, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8692, !noalias !8549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !8693, !noalias !8549
  store i64 %i.mn, ptr %i.h, align 8, !dbg !8693, !noalias !8549
  %.sroa.025.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !8693
  store ptr %i.mq, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i, align 8, !dbg !8693, !noalias !8549
  %.sroa.025.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !8693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !8693, !noalias !8549
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152, !dbg !8693
  store ptr %i.nn, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !dbg !8693, !noalias !8549
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.i, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4)
          to label %bb.dj unwind label %bb.de, !dbg !8692

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !8691, !noalias !8549
  br label %bb.dh, !dbg !8691

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8694, !noalias !8549
  %i.nx = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.i)
          to label %bb.dk unwind label %bb.de, !dbg !8695

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !8696, !noalias !8549
  %i.ny = load i64, ptr %i.nh, align 8, !dbg !8697, !alias.scope !8521, !noalias !8529, !noundef !15
  %i.nz = add i64 %i.ny, 1, !dbg !8702
  store i64 %i.nz, ptr %i.nh, align 8, !dbg !8703, !alias.scope !8521, !noalias !8529
  br label %bb.dl, !dbg !8706

bb.dl:                                            ; preds = %bb.eb, %bb.dk
  %.sroa.0.0.i61.i = phi ptr [ %i.ph, %bb.eb ], [ %i.nx, %bb.dk ], !dbg !8707
  %i.oa = load i64, ptr %i.mh, align 8, !dbg !8708, !alias.scope !8521, !noalias !8529, !noundef !15
  %i.ob = add i64 %i.oa, 1, !dbg !8713
  store i64 %i.ob, ptr %i.mh, align 8, !dbg !8714, !alias.scope !8521, !noalias !8529
  br label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, !dbg !8555

bb.dm:                                            ; preds = %bb.dd
  unreachable

bb.dn:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.i66.i
  %i.oc = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8717, !noalias !8549 ; 2 uses
  %i.od = icmp ult i64 %i.oc, 6, !dbg !8724
  call void @llvm.assume(i1 %i.od), !dbg !8724
  %i.oe = icmp samesign ugt i64 %i.oc, 4, !dbg !8725
  br i1 %i.oe, label %bb.do, label %bb.dp, !dbg !8735

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !8735, !noalias !8549
  store ptr @3, ptr %i.n, align 8, !dbg !8735, !noalias !8549
  %i.of = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !8735
  store i64 23, ptr %i.of, align 8, !dbg !8735, !noalias !8549
  %i.og = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !8735
  store ptr @3, ptr %i.og, align 8, !dbg !8735, !noalias !8549
  %i.oh = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !8735
  store i64 23, ptr %i.oh, align 8, !dbg !8735, !noalias !8549
  %i.oi = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !8735
  store ptr @12, ptr %i.oi, align 8, !dbg !8735, !noalias !8549
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 113 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.dq unwind label %bb.dc, !dbg !8735, !noalias !8580

bb.dp:                                            ; preds = %bb.dq, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !8736, !noalias !8549
  store i64 %i.mn, ptr %i.m, align 8, !dbg !8736, !noalias !8549
  %.sroa.618.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !8736
  store ptr %i.mq, ptr %.sroa.618.0..sroa_idx19.i.i, align 8, !dbg !8736, !noalias !8549
  %.sroa.7.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !8736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i.i, i64 136, i1 false), !dbg !8736, !noalias !8549
  %i.oj = invoke fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.m)
          to label %bb.dr unwind label %bb.dc, !dbg !8737, !noalias !8580 ; 2 uses
end_hunk_11
begin_hunk_12_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher11search_pathRNtNtCsG258MDvU3F_3std4path4PathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1H_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
  %i.rh = add i64 %i.rg, 1, !dbg !9009
  store i64 %i.rh, ptr %i.qg, align 8, !dbg !9010, !alias.scope !7671, !noalias !8856
  br i1 %i.re, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !9013

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i: ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9014, !noalias !8883
  %storemerge.in.i77.i = load i64, ptr %i.pt, align 8, !dbg !9015, !alias.scope !7671, !noalias !8856, !noundef !15
  %storemerge.i78.i = add i64 %storemerge.in.i77.i, 1, !dbg !9020
  store i64 %storemerge.i78.i, ptr %i.pt, align 8, !dbg !9021, !alias.scope !7671, !noalias !8856
  br label %bb.fb, !dbg !9024

bb.ez:                                            ; preds = %bb.ep
  unreachable

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread80.i: ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8896, !noalias !8883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9014, !noalias !8883
  %storemerge.in.i82.i = load i64, ptr %i.pt, align 8, !dbg !9015, !alias.scope !7671, !noalias !8856, !noundef !15
  %storemerge.i83.i = add i64 %storemerge.in.i82.i, 1, !dbg !9020
  store i64 %storemerge.i83.i, ptr %i.pt, align 8, !dbg !9021, !alias.scope !7671, !noalias !8856
  br label %bb.fj, !dbg !9024

bb.fa:                                            ; preds = %bb.eq, %bb.ei
  %.pn.i70.i = phi { ptr, i32 } [ %i.pz, %bb.ei ], [ %i.ql, %bb.eq ]
  %i.ri = load i64, ptr %i.pt, align 8, !dbg !9027, !alias.scope !7671, !noalias !8856, !noundef !15
  %i.rj = add i64 %i.ri, 1, !dbg !9032
  store i64 %i.rj, ptr %i.pt, align 8, !dbg !9033, !alias.scope !7671, !noalias !8856
  br label %bb.fl, !dbg !9036

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.ey, %bb.en
  %.sroa.0.0.i72.i = phi ptr [ %i.qf, %bb.en ], [ %i.rf, %bb.ey ], !dbg !9037 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9014, !noalias !8883
  %storemerge.in.i.i = load i64, ptr %i.pt, align 8, !dbg !9015, !alias.scope !7671, !noalias !8856, !noundef !15
  %storemerge.i.i = add i64 %storemerge.in.i.i, 1, !dbg !9020
  store i64 %storemerge.i.i, ptr %i.pt, align 8, !dbg !9021, !alias.scope !7671, !noalias !8856
  %.not.i = icmp eq ptr %.sroa.0.0.i72.i, null, !dbg !9038
  br i1 %.not.i, label %bb.fb, label %bb.fj, !dbg !9024

bb.fb:                                            ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i
  %i.rk = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !9039, !noalias !7678 ; 2 uses
  %i.rl = icmp ult i64 %i.rk, 6, !dbg !9047
  call void @llvm.assume(i1 %i.rl), !dbg !9047
  %i.rm = icmp samesign ugt i64 %i.rk, 4, !dbg !9048
  br i1 %i.rm, label %bb.fc, label %bb.fd, !dbg !9058

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !9059, !noalias !7678
  store ptr %i.as, ptr %i.al, align 8, !dbg !9059, !noalias !7678
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !9059
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCsG258MDvU3F_3std4path4PathENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.416.0..sroa_idx.i, align 8, !dbg !9059, !noalias !7678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !9058, !noalias !7678
  store ptr @3, ptr %i.ak, align 8, !dbg !9058, !noalias !7678
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !9058
  store i64 23, ptr %i.rn, align 8, !dbg !9058, !noalias !7678
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !9058
  store ptr @3, ptr %i.ro, align 8, !dbg !9058, !noalias !7678
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ak, i64 24, !dbg !9058
  store i64 23, ptr %i.rp, align 8, !dbg !9058, !noalias !7678
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ak, i64 32, !dbg !9058
  store ptr @24, ptr %i.rq, align 8, !dbg !9058, !noalias !7678
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @23, ptr noundef nonnull %i.al, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak)
          to label %.noexc18 unwind label %bb.fi, !dbg !9058

.noexc18:                                         ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !9058, !noalias !7678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !9058, !noalias !7678
  br label %bb.fd, !dbg !9058

bb.fd:                                            ; preds = %.noexc18, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !9062, !noalias !7678
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !9063 ; 6 uses
  %i.rs = load i64, ptr %i.rr, align 8, !dbg !9064, !alias.scope !7671, !noalias !9069, !noundef !15 ; 2 uses
  %i.rt = icmp ult i64 %i.rs, 9223372036854775807, !dbg !9072
  br i1 %i.rt, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEE6borrowCs2NzvFoTxuAy_2rg.exit.i, label %bb.fe, !dbg !9074, !prof !427

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #12
          to label %.noexc19 unwind label %bb.fi, !dbg !9075

.noexc19:                                         ; preds = %bb.fe
  unreachable, !dbg !9075

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEE6borrowCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.fd
  %i.ru = add nuw nsw i64 %i.rs, 1, !dbg !9076
  store i64 %i.ru, ptr %i.rr, align 8, !dbg !9078, !alias.scope !7671, !noalias !9069
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !9081
  %i.rw = load ptr, ptr %i.rv, align 8, !dbg !9081, !alias.scope !7671, !noalias !9094, !nonnull !15, !noundef !15
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !9095
  %i.ry = load i64, ptr %i.rx, align 8, !dbg !9095, !alias.scope !7671, !noalias !9094, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !9096, !noalias !7678
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ag, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %4, i1 noundef zeroext true)
          to label %bb.fg unwind label %bb.ff, !dbg !9096

bb.ff:                                            ; preds = %bb.fg, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEE6borrowCs2NzvFoTxuAy_2rg.exit.i
  %i.rz = landingpad { ptr, i32 }
          cleanup
  %i.sa = load i64, ptr %i.rr, align 8, !dbg !9099, !alias.scope !7671, !noalias !9094, !noundef !15
  %i.sb = add i64 %i.sa, -1, !dbg !9104
  store i64 %i.sb, ptr %i.rr, align 8, !dbg !9105, !alias.scope !7671, !noalias !9094
  br label %bb.fl, !dbg !9108

bb.fg:                                            ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEE6borrowCs2NzvFoTxuAy_2rg.exit.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.aj, i64 144, !dbg !9109
  store ptr %0, ptr %i.sc, align 8, !dbg !9109, !noalias !7678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, ptr noundef nonnull align 8 dereferenceable(120) %i.ag, i64 120, i1 false), !dbg !9109, !noalias !7678
  %i.sd = getelementptr inbounds nuw i8, ptr %i.aj, i64 152, !dbg !9109
  store ptr %i.rw, ptr %i.sd, align 8, !dbg !9109, !noalias !7678
  %i.se = getelementptr inbounds nuw i8, ptr %i.aj, i64 160, !dbg !9109
  store i64 %i.ry, ptr %i.se, align 8, !dbg !9109, !noalias !7678
  %i.sf = getelementptr inbounds nuw i8, ptr %i.aj, i64 120, !dbg !9109
  store i64 0, ptr %i.sf, align 8, !dbg !9109, !noalias !7678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !9110, !noalias !7678
  %i.sg = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.aj)
          to label %bb.fh unwind label %bb.ff, !dbg !9111

bb.fh:                                            ; preds = %bb.fg
  %i.sh = load i64, ptr %i.rr, align 8, !dbg !9112, !alias.scope !7671, !noalias !9094, !noundef !15
  %i.si = add i64 %i.sh, -1, !dbg !9117
  store i64 %i.si, ptr %i.rr, align 8, !dbg !9118, !alias.scope !7671, !noalias !9094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !9121, !noalias !7678
  br label %bb.fj, !dbg !8849

bb.fi:                                            ; preds = %.invoke, %bb.fe, %bb.fc, %bb.eg, %bb.ef, %bb.cv, %bb.cq, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12search_sliceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1c_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, %bb.c
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl, !dbg !9122

bb.fj:                                            ; preds = %bb.fh, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread80.i, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i, %.noexc11
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i27.i, %.noexc11 ], [ %.sroa.0.1.i.i, %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i ], [ %i.sg, %bb.fh ], [ %.sroa.0.0.i72.i, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i ], [ %i.qd, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher32fill_multi_line_buffer_from_fileQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread80.i ], !dbg !8886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !9123
  %i.sk = call noundef i32 @close(i32 noundef %i.ba) #16, !dbg !9124 ; 0 uses
  br label %bb.fk, !dbg !7666

bb.fk:                                            ; preds = %bb.b, %bb.fj
  %.sroa.0.0 = phi ptr [ %i.ay, %bb.b ], [ %.sroa.0.0.i, %bb.fj ], !dbg !9130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !9122
  ret ptr %.sroa.0.0, !dbg !9131

bb.fl:                                            ; preds = %bb.fi, %bb.ff, %bb.fa, %bb.ee, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.sj, %bb.fi ], [ %.pn.i.i, %bb.ee ], [ %.pn.i70.i, %bb.fa ], [ %i.rz, %bb.ff ], [ %eh.lpad-body.i, %.body.i ]
  %i.sl = call noundef i32 @close(i32 noundef %i.ba) #16, !dbg !9132 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body, !dbg !9138
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(232) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9139 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !9140, !range !52, !noalias !9143, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !9147
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !9147
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !9147
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !9147
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !9147

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !9148, !noalias !9143, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !9151 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !9151, !range !80, !noalias !9143, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !9151 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !9151, !noalias !9143 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !9153
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !9154

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9155
  %i.w = load i8, ptr %i.v, align 8, !dbg !9155, !range !60, !noalias !9143, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !9155 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !9159
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !9159

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !9160, !noalias !9143
  br label %bb.e, !dbg !9159

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !9159
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !9159
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !9159

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9161
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !9161
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9161
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !9161
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !9161
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !9161
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !9161
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !9161
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !9161
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !9161
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !9164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9168
  br label %bb.bm, !dbg !9169

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !9170 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !9175, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !9180
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !9180, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !9181
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !9187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9191
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9191
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !9193

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !9194
  unreachable, !dbg !9194

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !9196, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !9196
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !9199
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !9199 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !9200

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !9201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !9201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9202
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !9203 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !9203, !range !60, !noalias !9207, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !9203
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !9210

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !9211, !range !80, !noalias !9207, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !9215
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !9216, !range !60, !noalias !9207 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !9218
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !9218

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !9211, !noalias !9207
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !9219
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !9219, !noalias !9207 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !9221
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !9221
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !9221

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !9224
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !9226

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !9224, !noalias !9207
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !9226

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !9228 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !9229
  %i.av = zext nneg i8 %i.au to i64, !dbg !9231
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !9233
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !9234
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !9234, !noalias !9207, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !9235
  %i.ba = shl nuw i64 1, %i.az, !dbg !9235
  %i.bb = and i64 %i.ba, %i.ay, !dbg !9234
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !9234
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !9236

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !9237 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !9243, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !9248
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !9248, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !9249

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !9251, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !9256
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !9257
  br label %bb.bp, !dbg !9260

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !9261
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !9266
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !9271
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !9277
  store i64 0, ptr %i.bk, align 8, !dbg !9277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !9278
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !9279 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !9290
  tail call void @llvm.assume(i1 %i.bm), !dbg !9290
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !9291
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !9305

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9305
  store ptr @3, ptr %i.f, align 8, !dbg !9305
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9305
  store i64 23, ptr %i.bo, align 8, !dbg !9305
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !9305
  store ptr @3, ptr %i.bp, align 8, !dbg !9305
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !9305
  store i64 23, ptr %i.bq, align 8, !dbg !9305
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !9305
  store ptr @9, ptr %i.br, align 8, !dbg !9305
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !9305

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9307
  store i64 %i.ah, ptr %i.d, align 8, !dbg !9307
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9307
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !9307
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !9307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !9307
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !9307
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !9307
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.t unwind label %bb.o, !dbg !9306

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9305
  br label %bb.r, !dbg !9305

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9308
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !9309

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9310
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !9311, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !9316
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !9317
  br label %bb.v, !dbg !9320

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !9321
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !9322, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !9327
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !9328
  br label %bb.bm, !dbg !9169

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !9331 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !9338
  tail call void @llvm.assume(i1 %i.by), !dbg !9338
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !9339
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !9349

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9350
  store i64 %i.ah, ptr %i.i, align 8, !dbg !9350
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !9350
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !9350
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !9350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !9350
  br label %bb.ab, !dbg !9351

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9349
end_hunk_12
begin_hunk_13_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !9526
  unreachable, !dbg !9526

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !9527, !noalias !9354, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !9532
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !9533, !noalias !9354
  br label %bb.bp, !dbg !9526

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !9536, !noalias !9354, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !9541            ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !9542, !noalias !9354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9545
  br label %bb.bc, !dbg !9546

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !9536, !noalias !9354, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !9541
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !9542, !noalias !9354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9545
  br label %bb.bn, !dbg !9546

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !9536, !noalias !9354, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !9541            ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !9542, !noalias !9354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9545
  %.not44 = icmp eq ptr %i.ev, null, !dbg !9549
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !9546

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !9550 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !9558
  call void @llvm.assume(i1 %i.fa), !dbg !9558
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !9559
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !9569

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9569
  store ptr @3, ptr %i.h, align 8, !dbg !9569
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !9569
  store i64 23, ptr %i.fc, align 8, !dbg !9569
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !9569
  store ptr @3, ptr %i.fd, align 8, !dbg !9569
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !9569
  store i64 23, ptr %i.fe, align 8, !dbg !9569
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !9569
  store ptr @14, ptr %i.ff, align 8, !dbg !9569
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !9569

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !9570 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9575
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !9576
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !9578, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !9579

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !9579

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9569
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !9570, !noalias !9580
  br label %bb.be, !dbg !9569

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !9583

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !9584
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !9586, !noalias !9580
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !9589
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !9589, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !9602, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9603
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !9603

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !9605, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !9610
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !9611
  br label %bb.bp, !dbg !9614

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !9615
  store ptr %0, ptr %i.fq, align 8, !dbg !9615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !9615
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !9615
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !9615
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !9615
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !9615
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !9615
  store i64 0, ptr %i.ft, align 8, !dbg !9615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9616
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !9617

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !9618, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !9623
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !9624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9627
  br label %bb.v, !dbg !9320

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !9628
  ret ptr %.sroa.0.1, !dbg !9629

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !9630
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !9633, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !9638
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !9639
  br label %bb.bm, !dbg !9169

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9202
  br label %bb.bn, !dbg !9642

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !9644, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !9649
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !9650
  resume { ptr, i32 } %.pn, !dbg !9653
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(232) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9654 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !9655, !range !52, !noalias !9658, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !9662
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !9662
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !9662
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !9662
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !9662

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !9663, !noalias !9658, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !9666 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !9666, !range !80, !noalias !9658, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !9666 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !9666, !noalias !9658 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !9668
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !9669

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9670
  %i.w = load i8, ptr %i.v, align 8, !dbg !9670, !range !60, !noalias !9658, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !9670 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !9674
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !9674

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !9675, !noalias !9658
  br label %bb.e, !dbg !9674

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !9674
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !9674
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !9674

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9676
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !9676
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9676
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !9676
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !9676
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !9676
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !9676
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !9676
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !9676
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !9676
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !9679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9683
  br label %bb.bm, !dbg !9684

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !9685 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !9690, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !9695
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !9695, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !9696
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !9702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9706
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9706
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !9708

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !9709
  unreachable, !dbg !9709

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !9711, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !9711
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !9714
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !9714 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !9715

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !9716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !9716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9717
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !9718 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !9718, !range !60, !noalias !9722, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !9718
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !9725

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !9726, !range !80, !noalias !9722, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !9730
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !9731, !range !60, !noalias !9722 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !9733
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !9733

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !9726, !noalias !9722
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !9734
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !9734, !noalias !9722 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !9736
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !9736
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !9736

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !9739
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !9741

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !9739, !noalias !9722
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !9741

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !9743 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !9744
  %i.av = zext nneg i8 %i.au to i64, !dbg !9746
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !9748
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !9749
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !9749, !noalias !9722, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !9750
  %i.ba = shl nuw i64 1, %i.az, !dbg !9750
  %i.bb = and i64 %i.ba, %i.ay, !dbg !9749
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !9749
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !9751

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !9752 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !9758, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !9763
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !9763, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !9764

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !9766, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !9771
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !9772
  br label %bb.bp, !dbg !9775

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !9776
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !9781
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !9786
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !9792
  store i64 0, ptr %i.bk, align 8, !dbg !9792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !9793
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !9794 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !9805
  tail call void @llvm.assume(i1 %i.bm), !dbg !9805
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !9806
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !9820

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9820
  store ptr @3, ptr %i.f, align 8, !dbg !9820
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9820
  store i64 23, ptr %i.bo, align 8, !dbg !9820
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !9820
  store ptr @3, ptr %i.bp, align 8, !dbg !9820
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !9820
  store i64 23, ptr %i.bq, align 8, !dbg !9820
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !9820
  store ptr @9, ptr %i.br, align 8, !dbg !9820
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !9820

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9822
  store i64 %i.ah, ptr %i.d, align 8, !dbg !9822
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9822
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !9822
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !9822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !9822
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !9822
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !9822
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtB2T_3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.t unwind label %bb.o, !dbg !9821

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9820
  br label %bb.r, !dbg !9820

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9823
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtB2T_3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !9824

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9825
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !9826, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !9831
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !9832
  br label %bb.v, !dbg !9835

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !9836
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !9837, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !9842
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !9843
  br label %bb.bm, !dbg !9684

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !9846 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !9853
  tail call void @llvm.assume(i1 %i.by), !dbg !9853
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !9854
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !9864

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9865
  store i64 %i.ah, ptr %i.i, align 8, !dbg !9865
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !9865
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !9865
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !9865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !9865
  br label %bb.ab, !dbg !9866

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9864
end_hunk_13
begin_hunk_14_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !10041
  unreachable, !dbg !10041

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !10042, !noalias !9869, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !10047
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !10048, !noalias !9869
  br label %bb.bp, !dbg !10041

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !10051, !noalias !9869, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !10056           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !10057, !noalias !9869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10060
  br label %bb.bc, !dbg !10061

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !10051, !noalias !9869, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !10056
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !10057, !noalias !9869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10060
  br label %bb.bn, !dbg !10061

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !10051, !noalias !9869, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !10056           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !10057, !noalias !9869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10060
  %.not44 = icmp eq ptr %i.ev, null, !dbg !10064
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !10061

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !10065 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !10073
  call void @llvm.assume(i1 %i.fa), !dbg !10073
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !10074
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !10084

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10084
  store ptr @3, ptr %i.h, align 8, !dbg !10084
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !10084
  store i64 23, ptr %i.fc, align 8, !dbg !10084
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !10084
  store ptr @3, ptr %i.fd, align 8, !dbg !10084
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !10084
  store i64 23, ptr %i.fe, align 8, !dbg !10084
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !10084
  store ptr @14, ptr %i.ff, align 8, !dbg !10084
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !10084

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !10085 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10090
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !10091
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !10093, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !10094

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !10094

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10084
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !10085, !noalias !10095
  br label %bb.be, !dbg !10084

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !10098

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !10099
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !10101, !noalias !10095
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !10104
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !10104, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !10117, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10118
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !10118

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !10120, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !10125
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !10126
  br label %bb.bp, !dbg !10129

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !10130
  store ptr %0, ptr %i.fq, align 8, !dbg !10130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !10130
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !10130
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !10130
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !10130
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !10130
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !10130
  store i64 0, ptr %i.ft, align 8, !dbg !10130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10131
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !10132

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !10133, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !10138
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !10139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10142
  br label %bb.v, !dbg !9835

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !10143
  ret ptr %.sroa.0.1, !dbg !10144

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !10145
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !10148, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !10153
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !10154
  br label %bb.bm, !dbg !9684

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9717
  br label %bb.bn, !dbg !10157

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !10159, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !10164
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !10165
  resume { ptr, i32 } %.pn, !dbg !10168
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(208) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10169 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !10170, !range !52, !noalias !10173, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !10177
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !10177
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !10177
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !10177
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !10177

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !10178, !noalias !10173, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !10181 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !10181, !range !80, !noalias !10173, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !10181 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !10181, !noalias !10173 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !10183
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !10184

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10185
  %i.w = load i8, ptr %i.v, align 8, !dbg !10185, !range !60, !noalias !10173, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !10185 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !10189
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !10189

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !10190, !noalias !10173
  br label %bb.e, !dbg !10189

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !10189
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !10189
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !10189

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10191
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !10191
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10191
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !10191
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !10191
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !10191
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !10191
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !10191
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !10191
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !10191
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !10194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10198
  br label %bb.bm, !dbg !10199

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !10200 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !10205, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !10210
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !10210, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !10211
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !10217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10221
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !10221
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !10223

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !10224
  unreachable, !dbg !10224

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !10226, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !10226
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !10229
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !10229 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !10230

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !10231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !10231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10232
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !10233 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !10233, !range !60, !noalias !10237, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !10233
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !10240

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !10241, !range !80, !noalias !10237, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !10245
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !10246, !range !60, !noalias !10237 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !10248
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !10248

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !10241, !noalias !10237
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !10249
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !10249, !noalias !10237 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !10251
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !10251
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !10251

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !10254
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !10256

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !10254, !noalias !10237
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !10256

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !10258 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !10259
  %i.av = zext nneg i8 %i.au to i64, !dbg !10261
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !10263
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !10264
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !10264, !noalias !10237, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !10265
  %i.ba = shl nuw i64 1, %i.az, !dbg !10265
  %i.bb = and i64 %i.ba, %i.ay, !dbg !10264
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !10264
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !10266

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !10267 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !10273, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !10278
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !10278, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !10279

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !10281, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !10286
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !10287
  br label %bb.bp, !dbg !10290

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !10291
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10296
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !10301
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !10307
  store i64 0, ptr %i.bk, align 8, !dbg !10307
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !10308
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !10309 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !10320
  tail call void @llvm.assume(i1 %i.bm), !dbg !10320
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !10321
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !10335

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10335
  store ptr @3, ptr %i.f, align 8, !dbg !10335
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !10335
  store i64 23, ptr %i.bo, align 8, !dbg !10335
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !10335
  store ptr @3, ptr %i.bp, align 8, !dbg !10335
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !10335
  store i64 23, ptr %i.bq, align 8, !dbg !10335
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !10335
  store ptr @9, ptr %i.br, align 8, !dbg !10335
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !10335

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10337
  store i64 %i.ah, ptr %i.d, align 8, !dbg !10337
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !10337
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !10337
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !10337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !10337
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !10337
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !10337
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.t unwind label %bb.o, !dbg !10336

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10335
  br label %bb.r, !dbg !10335

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10338
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !10339

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10340
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !10341, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !10346
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !10347
  br label %bb.v, !dbg !10350

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !10351
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !10352, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !10357
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !10358
  br label %bb.bm, !dbg !10199

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !10361 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !10368
  tail call void @llvm.assume(i1 %i.by), !dbg !10368
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !10369
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !10379

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10380
  store i64 %i.ah, ptr %i.i, align 8, !dbg !10380
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !10380
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !10380
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !10380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !10380
  br label %bb.ab, !dbg !10381

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10379
end_hunk_14
begin_hunk_15_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !10556
  unreachable, !dbg !10556

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !10557, !noalias !10384, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !10562
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !10563, !noalias !10384
  br label %bb.bp, !dbg !10556

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !10566, !noalias !10384, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !10571           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !10572, !noalias !10384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10575
  br label %bb.bc, !dbg !10576

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !10566, !noalias !10384, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !10571
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !10572, !noalias !10384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10575
  br label %bb.bn, !dbg !10576

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !10566, !noalias !10384, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !10571           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !10572, !noalias !10384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10575
  %.not44 = icmp eq ptr %i.ev, null, !dbg !10579
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !10576

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !10580 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !10588
  call void @llvm.assume(i1 %i.fa), !dbg !10588
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !10589
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !10599

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10599
  store ptr @3, ptr %i.h, align 8, !dbg !10599
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !10599
  store i64 23, ptr %i.fc, align 8, !dbg !10599
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !10599
  store ptr @3, ptr %i.fd, align 8, !dbg !10599
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !10599
  store i64 23, ptr %i.fe, align 8, !dbg !10599
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !10599
  store ptr @14, ptr %i.ff, align 8, !dbg !10599
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !10599

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !10600 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10605
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !10606
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !10608, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !10609

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !10609

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10599
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !10600, !noalias !10610
  br label %bb.be, !dbg !10599

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !10613

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !10614
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !10616, !noalias !10610
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !10619
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !10619, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !10632, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10633
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !10633

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !10635, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !10640
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !10641
  br label %bb.bp, !dbg !10644

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !10645
  store ptr %0, ptr %i.fq, align 8, !dbg !10645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !10645
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !10645
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !10645
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !10645
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !10645
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !10645
  store i64 0, ptr %i.ft, align 8, !dbg !10645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10646
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !10647

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !10648, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !10653
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !10654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10657
  br label %bb.v, !dbg !10350

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !10658
  ret ptr %.sroa.0.1, !dbg !10659

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !10660
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !10663, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !10668
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !10669
  br label %bb.bm, !dbg !10199

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10232
  br label %bb.bn, !dbg !10672

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !10674, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !10679
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !10680
  resume { ptr, i32 } %.pn, !dbg !10683
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(208) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10684 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !10685, !range !52, !noalias !10688, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !10692
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !10692
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !10692
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !10692
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !10692

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !10693, !noalias !10688, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !10696 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !10696, !range !80, !noalias !10688, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !10696 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !10696, !noalias !10688 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !10698
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !10699

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10700
  %i.w = load i8, ptr %i.v, align 8, !dbg !10700, !range !60, !noalias !10688, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !10700 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !10704
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !10704

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !10705, !noalias !10688
  br label %bb.e, !dbg !10704

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !10704
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !10704
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !10704

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10706
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !10706
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10706
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !10706
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !10706
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !10706
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !10706
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !10706
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !10706
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !10706
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !10709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10713
  br label %bb.bm, !dbg !10714

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !10715 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !10720, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !10725
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !10725, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !10726
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !10732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10736
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !10736
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !10738

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !10739
  unreachable, !dbg !10739

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !10741, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !10741
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !10744
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !10744 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !10745

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !10746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !10746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10747
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !10748 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !10748, !range !60, !noalias !10752, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !10748
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !10755

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !10756, !range !80, !noalias !10752, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !10760
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !10761, !range !60, !noalias !10752 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !10763
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !10763

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !10756, !noalias !10752
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !10764
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !10764, !noalias !10752 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !10766
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !10766
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !10766

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !10769
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !10771

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !10769, !noalias !10752
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !10771

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !10773 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !10774
  %i.av = zext nneg i8 %i.au to i64, !dbg !10776
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !10778
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !10779
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !10779, !noalias !10752, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !10780
  %i.ba = shl nuw i64 1, %i.az, !dbg !10780
  %i.bb = and i64 %i.ba, %i.ay, !dbg !10779
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !10779
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !10781

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !10782 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !10788, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !10793
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !10793, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !10794

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !10796, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !10801
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !10802
  br label %bb.bp, !dbg !10805

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !10806
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10811
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !10816
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !10822
  store i64 0, ptr %i.bk, align 8, !dbg !10822
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !10823
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !10824 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !10835
  tail call void @llvm.assume(i1 %i.bm), !dbg !10835
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !10836
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !10850

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10850
  store ptr @3, ptr %i.f, align 8, !dbg !10850
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !10850
  store i64 23, ptr %i.bo, align 8, !dbg !10850
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !10850
  store ptr @3, ptr %i.bp, align 8, !dbg !10850
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !10850
  store i64 23, ptr %i.bq, align 8, !dbg !10850
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !10850
  store ptr @9, ptr %i.br, align 8, !dbg !10850
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !10850

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10852
  store i64 %i.ah, ptr %i.d, align 8, !dbg !10852
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !10852
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !10852
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !10852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !10852
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !10852
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !10852
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtB2T_3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.t unwind label %bb.o, !dbg !10851

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10850
  br label %bb.r, !dbg !10850

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10853
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtB2T_3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !10854

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10855
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !10856, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !10861
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !10862
  br label %bb.v, !dbg !10865

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !10866
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !10867, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !10872
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !10873
  br label %bb.bm, !dbg !10714

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !10876 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !10883
  tail call void @llvm.assume(i1 %i.by), !dbg !10883
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !10884
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !10894

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10895
  store i64 %i.ah, ptr %i.i, align 8, !dbg !10895
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !10895
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !10895
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !10895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !10895
  br label %bb.ab, !dbg !10896

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10894
end_hunk_15
begin_hunk_16_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !11071
  unreachable, !dbg !11071

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !11072, !noalias !10899, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !11077
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !11078, !noalias !10899
  br label %bb.bp, !dbg !11071

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !11081, !noalias !10899, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !11086           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !11087, !noalias !10899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11090
  br label %bb.bc, !dbg !11091

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !11081, !noalias !10899, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !11086
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !11087, !noalias !10899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11090
  br label %bb.bn, !dbg !11091

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !11081, !noalias !10899, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !11086           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !11087, !noalias !10899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11090
  %.not44 = icmp eq ptr %i.ev, null, !dbg !11094
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !11091

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !11095 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !11103
  call void @llvm.assume(i1 %i.fa), !dbg !11103
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !11104
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !11114

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11114
  store ptr @3, ptr %i.h, align 8, !dbg !11114
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !11114
  store i64 23, ptr %i.fc, align 8, !dbg !11114
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !11114
  store ptr @3, ptr %i.fd, align 8, !dbg !11114
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !11114
  store i64 23, ptr %i.fe, align 8, !dbg !11114
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !11114
  store ptr @14, ptr %i.ff, align 8, !dbg !11114
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !11114

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !11115 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11120
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !11121
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !11123, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !11124

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !11124

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11114
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !11115, !noalias !11125
  br label %bb.be, !dbg !11114

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !11128

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !11129
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !11131, !noalias !11125
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !11134
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !11134, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !11147, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11148
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !11148

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !11150, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !11155
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !11156
  br label %bb.bp, !dbg !11159

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !11160
  store ptr %0, ptr %i.fq, align 8, !dbg !11160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !11160
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !11160
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !11160
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !11160
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !11160
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !11160
  store i64 0, ptr %i.ft, align 8, !dbg !11160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11161
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !11162

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !11163, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !11168
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !11169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11172
  br label %bb.v, !dbg !10865

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !11173
  ret ptr %.sroa.0.1, !dbg !11174

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !11175
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !11178, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !11183
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !11184
  br label %bb.bm, !dbg !10714

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10747
  br label %bb.bn, !dbg !11187

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !11189, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !11194
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !11195
  resume { ptr, i32 } %.pn, !dbg !11198
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(304) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11199 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !11200, !range !52, !noalias !11203, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !11207
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !11207
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !11207
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !11207
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !11207

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !11208, !noalias !11203, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !11211 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !11211, !range !80, !noalias !11203, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !11211 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !11211, !noalias !11203 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !11213
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !11214

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11215
  %i.w = load i8, ptr %i.v, align 8, !dbg !11215, !range !60, !noalias !11203, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !11215 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !11219
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !11219

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !11220, !noalias !11203
  br label %bb.e, !dbg !11219

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !11219
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !11219
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !11219

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11221
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !11221
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11221
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !11221
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !11221
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !11221
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !11221
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !11221
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !11221
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !11221
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !11224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11228
  br label %bb.bm, !dbg !11229

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !11230 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !11235, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !11240
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !11240, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !11241
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !11247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !11251
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11251
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !11253

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !11254
  unreachable, !dbg !11254

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !11256, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !11256
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !11259
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !11259 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !11260

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !11261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !11261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11262
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11263 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !11263, !range !60, !noalias !11267, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !11263
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !11270

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !11271, !range !80, !noalias !11267, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !11275
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !11276, !range !60, !noalias !11267 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !11278
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !11278

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !11271, !noalias !11267
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !11279
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !11279, !noalias !11267 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !11281
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !11281
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !11281

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !11284
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !11286

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !11284, !noalias !11267
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !11286

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !11288 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !11289
  %i.av = zext nneg i8 %i.au to i64, !dbg !11291
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !11293
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !11294
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !11294, !noalias !11267, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !11295
  %i.ba = shl nuw i64 1, %i.az, !dbg !11295
  %i.bb = and i64 %i.ba, %i.ay, !dbg !11294
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !11294
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !11296

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !11297 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !11303, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !11308
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !11308, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !11309

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !11311, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !11316
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !11317
  br label %bb.bp, !dbg !11320

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !11321
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !11326
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !11331
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !11337
  store i64 0, ptr %i.bk, align 8, !dbg !11337
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !11338
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !11339 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !11350
  tail call void @llvm.assume(i1 %i.bm), !dbg !11350
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !11351
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !11365

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11365
  store ptr @3, ptr %i.f, align 8, !dbg !11365
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11365
  store i64 23, ptr %i.bo, align 8, !dbg !11365
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !11365
  store ptr @3, ptr %i.bp, align 8, !dbg !11365
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !11365
  store i64 23, ptr %i.bq, align 8, !dbg !11365
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !11365
  store ptr @9, ptr %i.br, align 8, !dbg !11365
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !11365

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11367
  store i64 %i.ah, ptr %i.d, align 8, !dbg !11367
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11367
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !11367
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !11367
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !11367
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !11367
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3)
          to label %bb.t unwind label %bb.o, !dbg !11366

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11365
  br label %bb.r, !dbg !11365

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11368
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !11369

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11370
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !11371, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !11376
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !11377
  br label %bb.v, !dbg !11380

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !11381
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !11382, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !11387
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !11388
  br label %bb.bm, !dbg !11229

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !11391 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !11398
  tail call void @llvm.assume(i1 %i.by), !dbg !11398
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !11399
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !11409

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11410
  store i64 %i.ah, ptr %i.i, align 8, !dbg !11410
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !11410
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !11410
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !11410
  br label %bb.ab, !dbg !11411

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11409
end_hunk_16
begin_hunk_17_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !11586
  unreachable, !dbg !11586

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !11587, !noalias !11414, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !11592
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !11593, !noalias !11414
  br label %bb.bp, !dbg !11586

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !11596, !noalias !11414, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !11601           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !11602, !noalias !11414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11605
  br label %bb.bc, !dbg !11606

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !11596, !noalias !11414, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !11601
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !11602, !noalias !11414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11605
  br label %bb.bn, !dbg !11606

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !11596, !noalias !11414, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !11601           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !11602, !noalias !11414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11605
  %.not44 = icmp eq ptr %i.ev, null, !dbg !11609
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !11606

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !11610 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !11618
  call void @llvm.assume(i1 %i.fa), !dbg !11618
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !11619
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !11629

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11629
  store ptr @3, ptr %i.h, align 8, !dbg !11629
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !11629
  store i64 23, ptr %i.fc, align 8, !dbg !11629
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !11629
  store ptr @3, ptr %i.fd, align 8, !dbg !11629
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !11629
  store i64 23, ptr %i.fe, align 8, !dbg !11629
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !11629
  store ptr @14, ptr %i.ff, align 8, !dbg !11629
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !11629

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !11630 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11635
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !11636
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !11638, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !11639

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !11639

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11629
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !11630, !noalias !11640
  br label %bb.be, !dbg !11629

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !11643

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !11644
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !11646, !noalias !11640
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !11649
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !11649, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !11662, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11663
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !11663

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !11665, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !11670
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !11671
  br label %bb.bp, !dbg !11674

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !11675
  store ptr %0, ptr %i.fq, align 8, !dbg !11675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !11675
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !11675
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !11675
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !11675
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !11675
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !11675
  store i64 0, ptr %i.ft, align 8, !dbg !11675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11676
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !11677

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !11678, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !11683
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !11684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11687
  br label %bb.v, !dbg !11380

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !11688
  ret ptr %.sroa.0.1, !dbg !11689

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !11690
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !11693, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !11698
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !11699
  br label %bb.bm, !dbg !11229

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11262
  br label %bb.bn, !dbg !11702

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !11704, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !11709
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !11710
  resume { ptr, i32 } %.pn, !dbg !11713
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(304) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11714 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !11715, !range !52, !noalias !11718, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !11722
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !11722
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !11722
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !11722
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !11722

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !11723, !noalias !11718, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !11726 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !11726, !range !80, !noalias !11718, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !11726 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !11726, !noalias !11718 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !11728
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !11729

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11730
  %i.w = load i8, ptr %i.v, align 8, !dbg !11730, !range !60, !noalias !11718, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !11730 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !11734
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !11734

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !11735, !noalias !11718
  br label %bb.e, !dbg !11734

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !11734
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !11734
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !11734

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11736
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !11736
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11736
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !11736
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !11736
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !11736
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !11736
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !11736
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !11736
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !11736
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !11739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11743
  br label %bb.bm, !dbg !11744

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !11745 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !11750, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !11755
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !11755, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !11756
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !11762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !11766
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11766
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !11768

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !11769
  unreachable, !dbg !11769

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !11771, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !11771
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !11774
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !11774 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !11775

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !11776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !11776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11777
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11778 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !11778, !range !60, !noalias !11782, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !11778
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !11785

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !11786, !range !80, !noalias !11782, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !11790
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !11791, !range !60, !noalias !11782 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !11793
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !11793

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !11786, !noalias !11782
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !11794
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !11794, !noalias !11782 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !11796
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !11796
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !11796

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !11799
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !11801

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !11799, !noalias !11782
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !11801

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !11803 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !11804
  %i.av = zext nneg i8 %i.au to i64, !dbg !11806
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !11808
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !11809
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !11809, !noalias !11782, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !11810
  %i.ba = shl nuw i64 1, %i.az, !dbg !11810
  %i.bb = and i64 %i.ba, %i.ay, !dbg !11809
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !11809
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !11811

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !11812 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !11818, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !11823
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !11823, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !11824

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !11826, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !11831
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !11832
  br label %bb.bp, !dbg !11835

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !11836
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !11841
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !11846
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !11852
  store i64 0, ptr %i.bk, align 8, !dbg !11852
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !11853
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !11854 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !11865
  tail call void @llvm.assume(i1 %i.bm), !dbg !11865
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !11866
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !11880

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11880
  store ptr @3, ptr %i.f, align 8, !dbg !11880
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11880
  store i64 23, ptr %i.bo, align 8, !dbg !11880
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !11880
  store ptr @3, ptr %i.bp, align 8, !dbg !11880
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !11880
  store i64 23, ptr %i.bq, align 8, !dbg !11880
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !11880
  store ptr @9, ptr %i.br, align 8, !dbg !11880
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !11880

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11882
  store i64 %i.ah, ptr %i.d, align 8, !dbg !11882
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11882
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !11882
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !11882
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !11882
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !11882
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtB2T_3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3)
          to label %bb.t unwind label %bb.o, !dbg !11881

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11880
  br label %bb.r, !dbg !11880

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11883
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtB2T_3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !11884

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11885
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !11886, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !11891
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !11892
  br label %bb.v, !dbg !11895

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !11896
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !11897, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !11902
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !11903
  br label %bb.bm, !dbg !11744

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !11906 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !11913
  tail call void @llvm.assume(i1 %i.by), !dbg !11913
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !11914
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !11924

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11925
  store i64 %i.ah, ptr %i.i, align 8, !dbg !11925
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !11925
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !11925
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !11925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !11925
  br label %bb.ab, !dbg !11926

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11924
end_hunk_17
begin_hunk_18_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !12101
  unreachable, !dbg !12101

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !12102, !noalias !11929, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !12107
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !12108, !noalias !11929
  br label %bb.bp, !dbg !12101

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !12111, !noalias !11929, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !12116           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !12117, !noalias !11929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12120
  br label %bb.bc, !dbg !12121

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !12111, !noalias !11929, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !12116
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !12117, !noalias !11929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12120
  br label %bb.bn, !dbg !12121

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !12111, !noalias !11929, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !12116           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !12117, !noalias !11929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12120
  %.not44 = icmp eq ptr %i.ev, null, !dbg !12124
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !12121

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !12125 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !12133
  call void @llvm.assume(i1 %i.fa), !dbg !12133
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !12134
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !12144

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12144
  store ptr @3, ptr %i.h, align 8, !dbg !12144
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !12144
  store i64 23, ptr %i.fc, align 8, !dbg !12144
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !12144
  store ptr @3, ptr %i.fd, align 8, !dbg !12144
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !12144
  store i64 23, ptr %i.fe, align 8, !dbg !12144
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !12144
  store ptr @14, ptr %i.ff, align 8, !dbg !12144
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !12144

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !12145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12150
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !12151
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !12153, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !12154

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !12154

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12144
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !12145, !noalias !12155
  br label %bb.be, !dbg !12144

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !12158

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !12159
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !12161, !noalias !12155
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !12164
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !12164, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !12177, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12178
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !12178

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !12180, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !12185
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !12186
  br label %bb.bp, !dbg !12189

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !12190
  store ptr %0, ptr %i.fq, align 8, !dbg !12190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !12190
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !12190
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !12190
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !12190
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !12190
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !12190
  store i64 0, ptr %i.ft, align 8, !dbg !12190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12191
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !12192

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !12193, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !12198
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !12199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12202
  br label %bb.v, !dbg !11895

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !12203
  ret ptr %.sroa.0.1, !dbg !12204

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !12205
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !12208, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !12213
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !12214
  br label %bb.bm, !dbg !11744

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11777
  br label %bb.bn, !dbg !12217

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !12219, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !12224
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !12225
  resume { ptr, i32 } %.pn, !dbg !12228
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(232) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12229 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !12230, !range !52, !noalias !12233, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !12237
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !12237
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !12237
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !12237
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !12237

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !12238, !noalias !12233, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !12241 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !12241, !range !80, !noalias !12233, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !12241 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !12241, !noalias !12233 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !12243
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !12244

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12245
  %i.w = load i8, ptr %i.v, align 8, !dbg !12245, !range !60, !noalias !12233, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !12245 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !12249
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !12249

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !12250, !noalias !12233
  br label %bb.e, !dbg !12249

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !12249
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !12249
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !12249

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12251
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !12251
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12251
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !12251
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !12251
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !12251
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !12251
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !12251
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !12251
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !12251
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !12254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12258
  br label %bb.bm, !dbg !12259

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !12260 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !12265, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !12270
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !12270, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !12271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !12277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12281
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !12281
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !12283

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !12284
  unreachable, !dbg !12284

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !12286, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !12286
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12289
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !12289 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !12290

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !12291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !12291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12292
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !12293 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !12293, !range !60, !noalias !12297, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !12293
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !12300

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !12301, !range !80, !noalias !12297, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !12305
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !12306, !range !60, !noalias !12297 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !12308
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !12308

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !12301, !noalias !12297
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !12309
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !12309, !noalias !12297 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !12311
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !12311
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !12311

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !12314
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !12316

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !12314, !noalias !12297
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !12316

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !12318 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !12319
  %i.av = zext nneg i8 %i.au to i64, !dbg !12321
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !12323
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !12324
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !12324, !noalias !12297, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !12325
  %i.ba = shl nuw i64 1, %i.az, !dbg !12325
  %i.bb = and i64 %i.ba, %i.ay, !dbg !12324
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !12324
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !12326

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !12327 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !12333, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !12338
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !12338, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !12339

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !12341, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !12346
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !12347
  br label %bb.bp, !dbg !12350

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !12351
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !12356
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !12361
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !12367
  store i64 0, ptr %i.bk, align 8, !dbg !12367
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !12368
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !12369 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !12380
  tail call void @llvm.assume(i1 %i.bm), !dbg !12380
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !12381
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !12395

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12395
  store ptr @3, ptr %i.f, align 8, !dbg !12395
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !12395
  store i64 23, ptr %i.bo, align 8, !dbg !12395
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !12395
  store ptr @3, ptr %i.bp, align 8, !dbg !12395
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !12395
  store i64 23, ptr %i.bq, align 8, !dbg !12395
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !12395
  store ptr @9, ptr %i.br, align 8, !dbg !12395
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !12395

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12397
  store i64 %i.ah, ptr %i.d, align 8, !dbg !12397
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !12397
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !12397
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !12397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !12397
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !12397
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !12397
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.t unwind label %bb.o, !dbg !12396

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12395
  br label %bb.r, !dbg !12395

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12398
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !12399

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12400
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !12401, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !12406
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !12407
  br label %bb.v, !dbg !12410

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !12411
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !12412, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !12417
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !12418
  br label %bb.bm, !dbg !12259

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !12421 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !12428
  tail call void @llvm.assume(i1 %i.by), !dbg !12428
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !12429
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !12439

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12440
  store i64 %i.ah, ptr %i.i, align 8, !dbg !12440
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12440
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !12440
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !12440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !12440
  br label %bb.ab, !dbg !12441

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12439
end_hunk_18
begin_hunk_19_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !12616
  unreachable, !dbg !12616

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !12617, !noalias !12444, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !12622
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !12623, !noalias !12444
  br label %bb.bp, !dbg !12616

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !12626, !noalias !12444, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !12631           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !12632, !noalias !12444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12635
  br label %bb.bc, !dbg !12636

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !12626, !noalias !12444, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !12631
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !12632, !noalias !12444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12635
  br label %bb.bn, !dbg !12636

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !12626, !noalias !12444, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !12631           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !12632, !noalias !12444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12635
  %.not44 = icmp eq ptr %i.ev, null, !dbg !12639
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !12636

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !12640 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !12648
  call void @llvm.assume(i1 %i.fa), !dbg !12648
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !12649
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !12659

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12659
  store ptr @3, ptr %i.h, align 8, !dbg !12659
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !12659
  store i64 23, ptr %i.fc, align 8, !dbg !12659
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !12659
  store ptr @3, ptr %i.fd, align 8, !dbg !12659
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !12659
  store i64 23, ptr %i.fe, align 8, !dbg !12659
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !12659
  store ptr @14, ptr %i.ff, align 8, !dbg !12659
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !12659

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !12660 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12665
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !12666
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !12668, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !12669

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !12669

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12659
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !12660, !noalias !12670
  br label %bb.be, !dbg !12659

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !12673

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !12674
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !12676, !noalias !12670
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !12679
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !12679, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !12692, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12693
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !12693

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !12695, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !12700
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !12701
  br label %bb.bp, !dbg !12704

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !12705
  store ptr %0, ptr %i.fq, align 8, !dbg !12705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !12705
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !12705
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !12705
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !12705
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !12705
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !12705
  store i64 0, ptr %i.ft, align 8, !dbg !12705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12706
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !12707

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !12708, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !12713
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !12714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12717
  br label %bb.v, !dbg !12410

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !12718
  ret ptr %.sroa.0.1, !dbg !12719

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !12720
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !12723, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !12728
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !12729
  br label %bb.bm, !dbg !12259

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12292
  br label %bb.bn, !dbg !12732

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !12734, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !12739
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !12740
  resume { ptr, i32 } %.pn, !dbg !12743
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(232) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12744 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !12745, !range !52, !noalias !12748, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !12752
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !12752
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !12752
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !12752
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !12752

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !12753, !noalias !12748, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !12756 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !12756, !range !80, !noalias !12748, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !12756 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !12756, !noalias !12748 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !12758
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !12759

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12760
  %i.w = load i8, ptr %i.v, align 8, !dbg !12760, !range !60, !noalias !12748, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !12760 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !12764
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !12764

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !12765, !noalias !12748
  br label %bb.e, !dbg !12764

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !12764
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !12764
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !12764

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12766
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !12766
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12766
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !12766
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !12766
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !12766
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !12766
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !12766
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !12766
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !12766
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !12769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12773
  br label %bb.bm, !dbg !12774

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !12775 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !12780, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !12785
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !12785, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !12786
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !12792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12796
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !12796
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !12798

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !12799
  unreachable, !dbg !12799

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !12801, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !12801
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12804
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !12804 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !12805

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !12806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !12806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12807
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !12808 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !12808, !range !60, !noalias !12812, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !12808
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !12815

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !12816, !range !80, !noalias !12812, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !12820
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !12821, !range !60, !noalias !12812 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !12823
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !12823

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !12816, !noalias !12812
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !12824
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !12824, !noalias !12812 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !12826
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !12826
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !12826

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !12829
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !12831

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !12829, !noalias !12812
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !12831

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !12833 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !12834
  %i.av = zext nneg i8 %i.au to i64, !dbg !12836
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !12838
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !12839
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !12839, !noalias !12812, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !12840
  %i.ba = shl nuw i64 1, %i.az, !dbg !12840
  %i.bb = and i64 %i.ba, %i.ay, !dbg !12839
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !12839
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !12841

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !12842 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !12848, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !12853
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !12853, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !12854

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !12856, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !12861
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !12862
  br label %bb.bp, !dbg !12865

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !12866
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !12871
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !12876
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !12882
  store i64 0, ptr %i.bk, align 8, !dbg !12882
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !12883
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !12884 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !12895
  tail call void @llvm.assume(i1 %i.bm), !dbg !12895
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !12896
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !12910

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12910
  store ptr @3, ptr %i.f, align 8, !dbg !12910
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !12910
  store i64 23, ptr %i.bo, align 8, !dbg !12910
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !12910
  store ptr @3, ptr %i.bp, align 8, !dbg !12910
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !12910
  store i64 23, ptr %i.bq, align 8, !dbg !12910
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !12910
  store ptr @9, ptr %i.br, align 8, !dbg !12910
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !12910

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12912
  store i64 %i.ah, ptr %i.d, align 8, !dbg !12912
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !12912
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !12912
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !12912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !12912
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !12912
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !12912
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtB2T_3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.t unwind label %bb.o, !dbg !12911

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12910
  br label %bb.r, !dbg !12910

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12913
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtB2T_3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !12914

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12915
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !12916, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !12921
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !12922
  br label %bb.v, !dbg !12925

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !12926
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !12927, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !12932
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !12933
  br label %bb.bm, !dbg !12774

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !12936 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !12943
  tail call void @llvm.assume(i1 %i.by), !dbg !12943
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !12944
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !12954

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12955
  store i64 %i.ah, ptr %i.i, align 8, !dbg !12955
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12955
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !12955
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !12955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !12955
  br label %bb.ab, !dbg !12956

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12954
end_hunk_19
begin_hunk_20_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !13131
  unreachable, !dbg !13131

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !13132, !noalias !12959, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !13137
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !13138, !noalias !12959
  br label %bb.bp, !dbg !13131

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !13141, !noalias !12959, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !13146           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !13147, !noalias !12959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13150
  br label %bb.bc, !dbg !13151

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !13141, !noalias !12959, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !13146
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !13147, !noalias !12959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13150
  br label %bb.bn, !dbg !13151

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !13141, !noalias !12959, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !13146           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !13147, !noalias !12959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13150
  %.not44 = icmp eq ptr %i.ev, null, !dbg !13154
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !13151

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13155 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !13163
  call void @llvm.assume(i1 %i.fa), !dbg !13163
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !13164
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !13174

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13174
  store ptr @3, ptr %i.h, align 8, !dbg !13174
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !13174
  store i64 23, ptr %i.fc, align 8, !dbg !13174
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !13174
  store ptr @3, ptr %i.fd, align 8, !dbg !13174
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !13174
  store i64 23, ptr %i.fe, align 8, !dbg !13174
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !13174
  store ptr @14, ptr %i.ff, align 8, !dbg !13174
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !13174

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !13175 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13180
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !13181
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !13183, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !13184

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !13184

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13174
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !13175, !noalias !13185
  br label %bb.be, !dbg !13174

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !13188

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !13189
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !13191, !noalias !13185
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !13194
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !13194, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !13207, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13208
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !13208

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !13210, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !13215
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !13216
  br label %bb.bp, !dbg !13219

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !13220
  store ptr %0, ptr %i.fq, align 8, !dbg !13220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !13220
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !13220
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !13220
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !13220
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !13220
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !13220
  store i64 0, ptr %i.ft, align 8, !dbg !13220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13221
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !13222

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !13223, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !13228
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !13229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13232
  br label %bb.v, !dbg !12925

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !13233
  ret ptr %.sroa.0.1, !dbg !13234

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !13235
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !13238, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !13243
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !13244
  br label %bb.bm, !dbg !12774

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12807
  br label %bb.bn, !dbg !13247

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !13249, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !13254
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !13255
  resume { ptr, i32 } %.pn, !dbg !13258
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(208) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13259 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !13260, !range !52, !noalias !13263, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !13267
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !13267
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !13267
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !13267
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !13267

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !13268, !noalias !13263, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !13271 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !13271, !range !80, !noalias !13263, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !13271 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !13271, !noalias !13263 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !13273
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !13274

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !13275
  %i.w = load i8, ptr %i.v, align 8, !dbg !13275, !range !60, !noalias !13263, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !13275 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !13279
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !13279

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !13280, !noalias !13263
  br label %bb.e, !dbg !13279

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !13279
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !13279
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !13279

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13281
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !13281
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13281
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !13281
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !13281
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !13281
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !13281
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !13281
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !13281
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !13281
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !13284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13288
  br label %bb.bm, !dbg !13289

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !13290 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !13295, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !13300
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !13300, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !13301
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !13307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13311
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !13311
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !13313

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !13314
  unreachable, !dbg !13314

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !13316, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !13316
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13319
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !13319 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !13320

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !13321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13322
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !13323 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !13323, !range !60, !noalias !13327, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !13323
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !13330

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !13331, !range !80, !noalias !13327, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !13335
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !13336, !range !60, !noalias !13327 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !13338
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !13338

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !13331, !noalias !13327
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !13339
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !13339, !noalias !13327 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !13341
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !13341
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !13341

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !13344
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !13346

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !13344, !noalias !13327
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !13346

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !13348 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !13349
  %i.av = zext nneg i8 %i.au to i64, !dbg !13351
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !13353
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !13354
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !13354, !noalias !13327, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !13355
  %i.ba = shl nuw i64 1, %i.az, !dbg !13355
  %i.bb = and i64 %i.ba, %i.ay, !dbg !13354
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !13354
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !13356

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !13357 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !13363, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !13368
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !13368, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !13369

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !13371, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !13376
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !13377
  br label %bb.bp, !dbg !13380

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !13381
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !13386
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !13391
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !13397
  store i64 0, ptr %i.bk, align 8, !dbg !13397
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !13398
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13399 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !13410
  tail call void @llvm.assume(i1 %i.bm), !dbg !13410
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !13411
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !13425

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13425
  store ptr @3, ptr %i.f, align 8, !dbg !13425
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13425
  store i64 23, ptr %i.bo, align 8, !dbg !13425
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !13425
  store ptr @3, ptr %i.bp, align 8, !dbg !13425
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !13425
  store i64 23, ptr %i.bq, align 8, !dbg !13425
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !13425
  store ptr @9, ptr %i.br, align 8, !dbg !13425
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !13425

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13427
  store i64 %i.ah, ptr %i.d, align 8, !dbg !13427
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13427
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !13427
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !13427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !13427
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !13427
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !13427
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.t unwind label %bb.o, !dbg !13426

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13425
  br label %bb.r, !dbg !13425

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13428
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !13429

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13430
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !13431, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !13436
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !13437
  br label %bb.v, !dbg !13440

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !13441
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !13442, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !13447
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !13448
  br label %bb.bm, !dbg !13289

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13451 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !13458
  tail call void @llvm.assume(i1 %i.by), !dbg !13458
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !13459
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !13469

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13470
  store i64 %i.ah, ptr %i.i, align 8, !dbg !13470
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13470
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !13470
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !13470
  br label %bb.ab, !dbg !13471

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13469
end_hunk_20
begin_hunk_21_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !13646
  unreachable, !dbg !13646

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !13647, !noalias !13474, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !13652
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !13653, !noalias !13474
  br label %bb.bp, !dbg !13646

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !13656, !noalias !13474, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !13661           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !13662, !noalias !13474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13665
  br label %bb.bc, !dbg !13666

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !13656, !noalias !13474, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !13661
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !13662, !noalias !13474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13665
  br label %bb.bn, !dbg !13666

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !13656, !noalias !13474, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !13661           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !13662, !noalias !13474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13665
  %.not44 = icmp eq ptr %i.ev, null, !dbg !13669
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !13666

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13670 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !13678
  call void @llvm.assume(i1 %i.fa), !dbg !13678
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !13679
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !13689

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13689
  store ptr @3, ptr %i.h, align 8, !dbg !13689
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !13689
  store i64 23, ptr %i.fc, align 8, !dbg !13689
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !13689
  store ptr @3, ptr %i.fd, align 8, !dbg !13689
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !13689
  store i64 23, ptr %i.fe, align 8, !dbg !13689
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !13689
  store ptr @14, ptr %i.ff, align 8, !dbg !13689
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !13689

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !13690 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13695
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !13696
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !13698, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !13699

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !13699

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13689
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !13690, !noalias !13700
  br label %bb.be, !dbg !13689

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !13703

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !13704
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !13706, !noalias !13700
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !13709
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !13709, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !13722, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13723
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !13723

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !13725, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !13730
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !13731
  br label %bb.bp, !dbg !13734

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !13735
  store ptr %0, ptr %i.fq, align 8, !dbg !13735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !13735
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !13735
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !13735
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !13735
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !13735
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !13735
  store i64 0, ptr %i.ft, align 8, !dbg !13735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13736
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !13737

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !13738, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !13743
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !13744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13747
  br label %bb.v, !dbg !13440

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !13748
  ret ptr %.sroa.0.1, !dbg !13749

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !13750
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !13753, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !13758
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !13759
  br label %bb.bm, !dbg !13289

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13322
  br label %bb.bn, !dbg !13762

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !13764, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !13769
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !13770
  resume { ptr, i32 } %.pn, !dbg !13773
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(208) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13774 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !13775, !range !52, !noalias !13778, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !13782
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !13782
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !13782
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !13782
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !13782

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !13783, !noalias !13778, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !13786 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !13786, !range !80, !noalias !13778, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !13786 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !13786, !noalias !13778 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !13788
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !13789

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !13790
  %i.w = load i8, ptr %i.v, align 8, !dbg !13790, !range !60, !noalias !13778, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !13790 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !13794
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !13794

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !13795, !noalias !13778
  br label %bb.e, !dbg !13794

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !13794
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !13794
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !13794

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13796
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !13796
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13796
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !13796
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !13796
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !13796
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !13796
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !13796
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !13796
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !13796
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !13799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13803
  br label %bb.bm, !dbg !13804

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !13805 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !13810, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !13815
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !13815, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !13816
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !13822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13826
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !13826
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !13828

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !13829
  unreachable, !dbg !13829

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !13831, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !13831
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13834
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !13834 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !13835

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13837
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !13838 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !13838, !range !60, !noalias !13842, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !13838
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !13845

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !13846, !range !80, !noalias !13842, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !13850
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !13851, !range !60, !noalias !13842 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !13853
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !13853

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !13846, !noalias !13842
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !13854
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !13854, !noalias !13842 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !13856
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !13856
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !13856

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !13859
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !13861

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !13859, !noalias !13842
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !13861

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !13863 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !13864
  %i.av = zext nneg i8 %i.au to i64, !dbg !13866
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !13868
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !13869
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !13869, !noalias !13842, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !13870
  %i.ba = shl nuw i64 1, %i.az, !dbg !13870
  %i.bb = and i64 %i.ba, %i.ay, !dbg !13869
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !13869
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !13871

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !13872 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !13878, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !13883
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !13883, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !13884

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !13886, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !13891
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !13892
  br label %bb.bp, !dbg !13895

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !13896
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !13901
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !13906
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !13912
  store i64 0, ptr %i.bk, align 8, !dbg !13912
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !13913
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13914 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !13925
  tail call void @llvm.assume(i1 %i.bm), !dbg !13925
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !13926
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !13940

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13940
  store ptr @3, ptr %i.f, align 8, !dbg !13940
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13940
  store i64 23, ptr %i.bo, align 8, !dbg !13940
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !13940
  store ptr @3, ptr %i.bp, align 8, !dbg !13940
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !13940
  store i64 23, ptr %i.bq, align 8, !dbg !13940
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !13940
  store ptr @9, ptr %i.br, align 8, !dbg !13940
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !13940

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13942
  store i64 %i.ah, ptr %i.d, align 8, !dbg !13942
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13942
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !13942
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !13942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !13942
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !13942
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !13942
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtB2T_3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.t unwind label %bb.o, !dbg !13941

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13940
  br label %bb.r, !dbg !13940

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13943
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtB2T_3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !13944

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13945
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !13946, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !13951
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !13952
  br label %bb.v, !dbg !13955

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !13956
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !13957, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !13962
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !13963
  br label %bb.bm, !dbg !13804

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13966 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !13973
  tail call void @llvm.assume(i1 %i.by), !dbg !13973
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !13974
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !13984

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13985
  store i64 %i.ah, ptr %i.i, align 8, !dbg !13985
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13985
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !13985
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !13985
  br label %bb.ab, !dbg !13986

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13984
end_hunk_21
begin_hunk_22_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !14161
  unreachable, !dbg !14161

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !14162, !noalias !13989, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !14167
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !14168, !noalias !13989
  br label %bb.bp, !dbg !14161

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !14171, !noalias !13989, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !14176           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !14177, !noalias !13989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14180
  br label %bb.bc, !dbg !14181

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !14171, !noalias !13989, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !14176
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !14177, !noalias !13989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14180
  br label %bb.bn, !dbg !14181

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !14171, !noalias !13989, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !14176           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !14177, !noalias !13989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14180
  %.not44 = icmp eq ptr %i.ev, null, !dbg !14184
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !14181

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !14185 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !14193
  call void @llvm.assume(i1 %i.fa), !dbg !14193
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !14194
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !14204

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14204
  store ptr @3, ptr %i.h, align 8, !dbg !14204
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !14204
  store i64 23, ptr %i.fc, align 8, !dbg !14204
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !14204
  store ptr @3, ptr %i.fd, align 8, !dbg !14204
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !14204
  store i64 23, ptr %i.fe, align 8, !dbg !14204
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !14204
  store ptr @14, ptr %i.ff, align 8, !dbg !14204
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !14204

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !14205 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14210
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !14211
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !14213, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !14214

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !14214

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14204
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !14205, !noalias !14215
  br label %bb.be, !dbg !14204

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !14218

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !14219
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !14221, !noalias !14215
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !14224
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !14224, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !14237, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14238
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !14238

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !14240, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !14245
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !14246
  br label %bb.bp, !dbg !14249

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !14250
  store ptr %0, ptr %i.fq, align 8, !dbg !14250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !14250
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !14250
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !14250
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !14250
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !14250
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !14250
  store i64 0, ptr %i.ft, align 8, !dbg !14250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14251
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !14252

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !14253, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !14258
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !14259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14262
  br label %bb.v, !dbg !13955

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !14263
  ret ptr %.sroa.0.1, !dbg !14264

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !14265
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !14268, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !14273
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !14274
  br label %bb.bm, !dbg !13804

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13837
  br label %bb.bn, !dbg !14277

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !14279, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !14284
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !14285
  resume { ptr, i32 } %.pn, !dbg !14288
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(304) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14289 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !14290, !range !52, !noalias !14293, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !14297
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !14297
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !14297
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !14297
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !14297

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !14298, !noalias !14293, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !14301 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !14301, !range !80, !noalias !14293, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !14301 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !14301, !noalias !14293 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !14303
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !14304

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14305
  %i.w = load i8, ptr %i.v, align 8, !dbg !14305, !range !60, !noalias !14293, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !14305 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !14309
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !14309

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !14310, !noalias !14293
  br label %bb.e, !dbg !14309

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !14309
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !14309
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !14309

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14311
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !14311
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14311
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !14311
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !14311
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !14311
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !14311
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !14311
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !14311
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !14311
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !14314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14318
  br label %bb.bm, !dbg !14319

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !14320 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !14325, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !14330
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !14330, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !14331
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !14337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14341
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14341
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !14343

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !14344
  unreachable, !dbg !14344

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !14346, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !14346
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14349
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !14349 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !14350

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !14351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14352
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14353 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !14353, !range !60, !noalias !14357, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !14353
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !14360

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !14361, !range !80, !noalias !14357, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !14365
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !14366, !range !60, !noalias !14357 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !14368
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !14368

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !14361, !noalias !14357
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !14369
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !14369, !noalias !14357 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !14371
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !14371
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !14371

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !14374
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !14376

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !14374, !noalias !14357
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !14376

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !14378 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !14379
  %i.av = zext nneg i8 %i.au to i64, !dbg !14381
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !14383
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !14384
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !14384, !noalias !14357, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !14385
  %i.ba = shl nuw i64 1, %i.az, !dbg !14385
  %i.bb = and i64 %i.ba, %i.ay, !dbg !14384
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !14384
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !14386

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !14387 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !14393, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !14398
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !14398, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !14399

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !14401, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !14406
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !14407
  br label %bb.bp, !dbg !14410

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !14411
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !14416
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !14421
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !14427
  store i64 0, ptr %i.bk, align 8, !dbg !14427
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !14428
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !14429 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !14440
  tail call void @llvm.assume(i1 %i.bm), !dbg !14440
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !14441
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !14455

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14455
  store ptr @3, ptr %i.f, align 8, !dbg !14455
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14455
  store i64 23, ptr %i.bo, align 8, !dbg !14455
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14455
  store ptr @3, ptr %i.bp, align 8, !dbg !14455
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !14455
  store i64 23, ptr %i.bq, align 8, !dbg !14455
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !14455
  store ptr @9, ptr %i.br, align 8, !dbg !14455
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !14455

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14457
  store i64 %i.ah, ptr %i.d, align 8, !dbg !14457
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14457
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !14457
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !14457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !14457
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !14457
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !14457
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3)
          to label %bb.t unwind label %bb.o, !dbg !14456

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14455
  br label %bb.r, !dbg !14455

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14458
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !14459

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14460
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !14461, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !14466
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !14467
  br label %bb.v, !dbg !14470

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !14471
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !14472, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !14477
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !14478
  br label %bb.bm, !dbg !14319

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !14481 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !14488
  tail call void @llvm.assume(i1 %i.by), !dbg !14488
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !14489
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !14499

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14500
  store i64 %i.ah, ptr %i.i, align 8, !dbg !14500
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14500
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !14500
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !14500
  br label %bb.ab, !dbg !14501

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14499
end_hunk_22
begin_hunk_23_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !14676
  unreachable, !dbg !14676

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !14677, !noalias !14504, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !14682
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !14683, !noalias !14504
  br label %bb.bp, !dbg !14676

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !14686, !noalias !14504, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !14691           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !14692, !noalias !14504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14695
  br label %bb.bc, !dbg !14696

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !14686, !noalias !14504, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !14691
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !14692, !noalias !14504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14695
  br label %bb.bn, !dbg !14696

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !14686, !noalias !14504, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !14691           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !14692, !noalias !14504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14695
  %.not44 = icmp eq ptr %i.ev, null, !dbg !14699
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !14696

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !14700 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !14708
  call void @llvm.assume(i1 %i.fa), !dbg !14708
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !14709
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !14719

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14719
  store ptr @3, ptr %i.h, align 8, !dbg !14719
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !14719
  store i64 23, ptr %i.fc, align 8, !dbg !14719
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !14719
  store ptr @3, ptr %i.fd, align 8, !dbg !14719
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !14719
  store i64 23, ptr %i.fe, align 8, !dbg !14719
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !14719
  store ptr @14, ptr %i.ff, align 8, !dbg !14719
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !14719

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !14720 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14725
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !14726
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !14728, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !14729

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !14729

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14719
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !14720, !noalias !14730
  br label %bb.be, !dbg !14719

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !14733

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !14734
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !14736, !noalias !14730
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !14739
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !14739, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !14752, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14753
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !14753

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !14755, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !14760
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !14761
  br label %bb.bp, !dbg !14764

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !14765
  store ptr %0, ptr %i.fq, align 8, !dbg !14765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !14765
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !14765
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !14765
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !14765
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !14765
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !14765
  store i64 0, ptr %i.ft, align 8, !dbg !14765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14766
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !14767

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !14768, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !14773
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !14774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14777
  br label %bb.v, !dbg !14470

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !14778
  ret ptr %.sroa.0.1, !dbg !14779

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !14780
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !14783, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !14788
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !14789
  br label %bb.bm, !dbg !14319

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14352
  br label %bb.bn, !dbg !14792

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !14794, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !14799
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !14800
  resume { ptr, i32 } %.pn, !dbg !14803
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(304) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14804 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !14805, !range !52, !noalias !14808, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !14812
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !14812
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !14812
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !14812
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !14812

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !14813, !noalias !14808, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !14816 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !14816, !range !80, !noalias !14808, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !14816 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !14816, !noalias !14808 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !14818
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !14819

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14820
  %i.w = load i8, ptr %i.v, align 8, !dbg !14820, !range !60, !noalias !14808, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !14820 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !14824
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !14824

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !14825, !noalias !14808
  br label %bb.e, !dbg !14824

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !14824
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !14824
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !14824

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14826
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !14826
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14826
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !14826
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !14826
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !14826
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !14826
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !14826
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !14826
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !14826
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !14829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14833
  br label %bb.bm, !dbg !14834

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !14835 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !14840, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !14845
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !14845, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !14846
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !14852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14856
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14856
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !14858

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !14859
  unreachable, !dbg !14859

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !14861, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !14861
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14864
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !14864 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !14865

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !14866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14867
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14868 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !14868, !range !60, !noalias !14872, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !14868
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !14875

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !14876, !range !80, !noalias !14872, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !14880
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !14881, !range !60, !noalias !14872 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !14883
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !14883

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !14876, !noalias !14872
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !14884
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !14884, !noalias !14872 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !14886
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !14886
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !14886

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !14889
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !14891

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !14889, !noalias !14872
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !14891

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !14893 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !14894
  %i.av = zext nneg i8 %i.au to i64, !dbg !14896
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !14898
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !14899
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !14899, !noalias !14872, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !14900
  %i.ba = shl nuw i64 1, %i.az, !dbg !14900
  %i.bb = and i64 %i.ba, %i.ay, !dbg !14899
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !14899
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !14901

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !14902 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !14908, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !14913
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !14913, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !14914

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !14916, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !14921
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !14922
  br label %bb.bp, !dbg !14925

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !14926
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !14931
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !14936
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !14942
  store i64 0, ptr %i.bk, align 8, !dbg !14942
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !14943
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !14944 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !14955
  tail call void @llvm.assume(i1 %i.bm), !dbg !14955
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !14956
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !14970

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14970
  store ptr @3, ptr %i.f, align 8, !dbg !14970
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14970
  store i64 23, ptr %i.bo, align 8, !dbg !14970
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14970
  store ptr @3, ptr %i.bp, align 8, !dbg !14970
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !14970
  store i64 23, ptr %i.bq, align 8, !dbg !14970
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !14970
  store ptr @9, ptr %i.br, align 8, !dbg !14970
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !14970

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14972
  store i64 %i.ah, ptr %i.d, align 8, !dbg !14972
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14972
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !14972
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !14972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !14972
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !14972
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !14972
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtB2T_3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3)
          to label %bb.t unwind label %bb.o, !dbg !14971

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14970
  br label %bb.r, !dbg !14970

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14973
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtB2T_3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !14974

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14975
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !14976, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !14981
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !14982
  br label %bb.v, !dbg !14985

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !14986
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !14987, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !14992
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !14993
  br label %bb.bm, !dbg !14834

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !14996 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !15003
  tail call void @llvm.assume(i1 %i.by), !dbg !15003
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !15004
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !15014

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15015
  store i64 %i.ah, ptr %i.i, align 8, !dbg !15015
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !15015
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !15015
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !15015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !15015
  br label %bb.ab, !dbg !15016

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !15014
end_hunk_23
begin_hunk_24_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtB2b_3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !15191
  unreachable, !dbg !15191

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !15192, !noalias !15019, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !15197
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !15198, !noalias !15019
  br label %bb.bp, !dbg !15191

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !15201, !noalias !15019, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !15206           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !15207, !noalias !15019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15210
  br label %bb.bc, !dbg !15211

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !15201, !noalias !15019, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !15206
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !15207, !noalias !15019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15210
  br label %bb.bn, !dbg !15211

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !15201, !noalias !15019, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !15206           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !15207, !noalias !15019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15210
  %.not44 = icmp eq ptr %i.ev, null, !dbg !15214
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !15211

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !15215 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !15223
  call void @llvm.assume(i1 %i.fa), !dbg !15223
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !15224
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !15234

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15234
  store ptr @3, ptr %i.h, align 8, !dbg !15234
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !15234
  store i64 23, ptr %i.fc, align 8, !dbg !15234
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !15234
  store ptr @3, ptr %i.fd, align 8, !dbg !15234
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !15234
  store i64 23, ptr %i.fe, align 8, !dbg !15234
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !15234
  store ptr @14, ptr %i.ff, align 8, !dbg !15234
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !15234

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !15235 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15240
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !15241
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !15243, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !15244

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !15244

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15234
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !15235, !noalias !15245
  br label %bb.be, !dbg !15234

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !15248

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !15249
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !15251, !noalias !15245
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !15254
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !15254, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !15267, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15268
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !15268

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !15270, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !15275
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !15276
  br label %bb.bp, !dbg !15279

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !15280
  store ptr %0, ptr %i.fq, align 8, !dbg !15280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !15280
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !15280
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !15280
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !15280
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !15280
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !15280
  store i64 0, ptr %i.ft, align 8, !dbg !15280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15281
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !15282

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !15283, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !15288
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !15289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15292
  br label %bb.v, !dbg !14985

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !15293
  ret ptr %.sroa.0.1, !dbg !15294

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !15295
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !15298, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !15303
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !15304
  br label %bb.bm, !dbg !14834

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14867
  br label %bb.bn, !dbg !15307

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !15309, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !15314
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !15315
  resume { ptr, i32 } %.pn, !dbg !15318
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(232) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15319 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !15320, !range !52, !noalias !15323, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !15327
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !15327
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !15327
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !15327
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !15327

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !15328, !noalias !15323, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !15331 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !15331, !range !80, !noalias !15323, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !15331 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !15331, !noalias !15323 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !15333
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !15334

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15335
  %i.w = load i8, ptr %i.v, align 8, !dbg !15335, !range !60, !noalias !15323, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !15335 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !15339
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !15339

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !15340, !noalias !15323
  br label %bb.e, !dbg !15339

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !15339
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !15339
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !15339

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15341
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !15341
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15341
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !15341
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !15341
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !15341
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !15341
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !15341
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !15341
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !15341
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !15344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15348
  br label %bb.bm, !dbg !15349

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !15350 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !15355, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !15360
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !15360, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !15361
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !15367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !15371
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15371
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !15373

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !15374
  unreachable, !dbg !15374

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !15376, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !15376
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15379
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !15379 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !15380

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !15381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15382
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15383 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !15383, !range !60, !noalias !15387, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !15383
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !15390

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !15391, !range !80, !noalias !15387, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !15395
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !15396, !range !60, !noalias !15387 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !15398
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !15398

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !15391, !noalias !15387
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !15399
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !15399, !noalias !15387 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !15401
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !15401
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !15401

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !15404
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !15406

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !15404, !noalias !15387
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !15406

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !15408 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !15409
  %i.av = zext nneg i8 %i.au to i64, !dbg !15411
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !15413
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !15414
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !15414, !noalias !15387, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !15415
  %i.ba = shl nuw i64 1, %i.az, !dbg !15415
  %i.bb = and i64 %i.ba, %i.ay, !dbg !15414
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !15414
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !15416

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !15417 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !15423, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !15428
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !15428, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !15429

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !15431, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !15436
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !15437
  br label %bb.bp, !dbg !15440

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !15441
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !15446
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !15451
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !15457
  store i64 0, ptr %i.bk, align 8, !dbg !15457
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !15458
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !15459 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !15470
  tail call void @llvm.assume(i1 %i.bm), !dbg !15470
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !15471
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !15485

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15485
  store ptr @3, ptr %i.f, align 8, !dbg !15485
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !15485
  store i64 23, ptr %i.bo, align 8, !dbg !15485
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !15485
  store ptr @3, ptr %i.bp, align 8, !dbg !15485
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !15485
  store i64 23, ptr %i.bq, align 8, !dbg !15485
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !15485
  store ptr @9, ptr %i.br, align 8, !dbg !15485
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !15485

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15487
  store i64 %i.ah, ptr %i.d, align 8, !dbg !15487
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15487
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !15487
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !15487
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !15487
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !15487
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.t unwind label %bb.o, !dbg !15486

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15485
  br label %bb.r, !dbg !15485

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15488
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !15489

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15490
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !15491, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !15496
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !15497
  br label %bb.v, !dbg !15500

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !15501
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !15502, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !15507
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !15508
  br label %bb.bm, !dbg !15349

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !15511 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !15518
  tail call void @llvm.assume(i1 %i.by), !dbg !15518
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !15519
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !15529

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15530
  store i64 %i.ah, ptr %i.i, align 8, !dbg !15530
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !15530
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !15530
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !15530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !15530
  br label %bb.ab, !dbg !15531

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !15529
end_hunk_24
begin_hunk_25_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !15706
  unreachable, !dbg !15706

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !15707, !noalias !15534, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !15712
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !15713, !noalias !15534
  br label %bb.bp, !dbg !15706

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !15716, !noalias !15534, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !15721           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !15722, !noalias !15534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15725
  br label %bb.bc, !dbg !15726

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !15716, !noalias !15534, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !15721
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !15722, !noalias !15534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15725
  br label %bb.bn, !dbg !15726

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !15716, !noalias !15534, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !15721           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !15722, !noalias !15534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15725
  %.not44 = icmp eq ptr %i.ev, null, !dbg !15729
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !15726

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !15730 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !15738
  call void @llvm.assume(i1 %i.fa), !dbg !15738
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !15739
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !15749

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15749
  store ptr @3, ptr %i.h, align 8, !dbg !15749
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !15749
  store i64 23, ptr %i.fc, align 8, !dbg !15749
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !15749
  store ptr @3, ptr %i.fd, align 8, !dbg !15749
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !15749
  store i64 23, ptr %i.fe, align 8, !dbg !15749
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !15749
  store ptr @14, ptr %i.ff, align 8, !dbg !15749
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !15749

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !15750 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15755
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !15756
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !15758, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !15759

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !15759

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15749
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !15750, !noalias !15760
  br label %bb.be, !dbg !15749

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !15763

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !15764
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !15766, !noalias !15760
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !15769
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !15769, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !15782, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15783
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !15783

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !15785, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !15790
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !15791
  br label %bb.bp, !dbg !15794

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !15795
  store ptr %0, ptr %i.fq, align 8, !dbg !15795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !15795
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !15795
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !15795
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !15795
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !15795
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !15795
  store i64 0, ptr %i.ft, align 8, !dbg !15795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15796
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !15797

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !15798, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !15803
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !15804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15807
  br label %bb.v, !dbg !15500

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !15808
  ret ptr %.sroa.0.1, !dbg !15809

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !15810
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !15813, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !15818
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !15819
  br label %bb.bm, !dbg !15349

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15382
  br label %bb.bn, !dbg !15822

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !15824, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !15829
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !15830
  resume { ptr, i32 } %.pn, !dbg !15833
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(232) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15834 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !15835, !range !52, !noalias !15838, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !15842
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !15842
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !15842
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !15842
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !15842

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !15843, !noalias !15838, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !15846 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !15846, !range !80, !noalias !15838, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !15846 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !15846, !noalias !15838 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !15848
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !15849

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15850
  %i.w = load i8, ptr %i.v, align 8, !dbg !15850, !range !60, !noalias !15838, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !15850 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !15854
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !15854

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !15855, !noalias !15838
  br label %bb.e, !dbg !15854

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !15854
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !15854
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !15854

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15856
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !15856
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15856
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !15856
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !15856
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !15856
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !15856
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !15856
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !15856
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !15856
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !15859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15863
  br label %bb.bm, !dbg !15864

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !15865 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !15870, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !15875
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !15875, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !15876
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !15882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !15886
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15886
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !15888

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !15889
  unreachable, !dbg !15889

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !15891, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !15891
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15894
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !15894 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !15895

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !15896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15897
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15898 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !15898, !range !60, !noalias !15902, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !15898
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !15905

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !15906, !range !80, !noalias !15902, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !15910
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !15911, !range !60, !noalias !15902 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !15913
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !15913

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !15906, !noalias !15902
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !15914
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !15914, !noalias !15902 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !15916
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !15916
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !15916

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !15919
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !15921

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !15919, !noalias !15902
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !15921

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !15923 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !15924
  %i.av = zext nneg i8 %i.au to i64, !dbg !15926
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !15928
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !15929
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !15929, !noalias !15902, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !15930
  %i.ba = shl nuw i64 1, %i.az, !dbg !15930
  %i.bb = and i64 %i.ba, %i.ay, !dbg !15929
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !15929
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !15931

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !15932 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !15938, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !15943
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !15943, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !15944

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !15946, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !15951
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !15952
  br label %bb.bp, !dbg !15955

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !15956
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !15961
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !15966
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !15972
  store i64 0, ptr %i.bk, align 8, !dbg !15972
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !15973
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !15974 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !15985
  tail call void @llvm.assume(i1 %i.bm), !dbg !15985
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !15986
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !16000

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16000
  store ptr @3, ptr %i.f, align 8, !dbg !16000
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16000
  store i64 23, ptr %i.bo, align 8, !dbg !16000
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !16000
  store ptr @3, ptr %i.bp, align 8, !dbg !16000
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !16000
  store i64 23, ptr %i.bq, align 8, !dbg !16000
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !16000
  store ptr @9, ptr %i.br, align 8, !dbg !16000
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !16000

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16002
  store i64 %i.ah, ptr %i.d, align 8, !dbg !16002
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !16002
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !16002
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !16002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !16002
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !16002
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !16002
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.t unwind label %bb.o, !dbg !16001

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16000
  br label %bb.r, !dbg !16000

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16003
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !16004

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16005
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !16006, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !16011
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !16012
  br label %bb.v, !dbg !16015

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !16016
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !16017, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !16022
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !16023
  br label %bb.bm, !dbg !15864

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !16026 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !16033
  tail call void @llvm.assume(i1 %i.by), !dbg !16033
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !16034
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !16044

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16045
  store i64 %i.ah, ptr %i.i, align 8, !dbg !16045
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16045
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !16045
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !16045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !16045
  br label %bb.ab, !dbg !16046

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16044
end_hunk_25
begin_hunk_26_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !16221
  unreachable, !dbg !16221

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !16222, !noalias !16049, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !16227
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !16228, !noalias !16049
  br label %bb.bp, !dbg !16221

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !16231, !noalias !16049, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !16236           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !16237, !noalias !16049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16240
  br label %bb.bc, !dbg !16241

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !16231, !noalias !16049, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !16236
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !16237, !noalias !16049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16240
  br label %bb.bn, !dbg !16241

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !16231, !noalias !16049, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !16236           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !16237, !noalias !16049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16240
  %.not44 = icmp eq ptr %i.ev, null, !dbg !16244
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !16241

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !16245 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !16253
  call void @llvm.assume(i1 %i.fa), !dbg !16253
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !16254
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !16264

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16264
  store ptr @3, ptr %i.h, align 8, !dbg !16264
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16264
  store i64 23, ptr %i.fc, align 8, !dbg !16264
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !16264
  store ptr @3, ptr %i.fd, align 8, !dbg !16264
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !16264
  store i64 23, ptr %i.fe, align 8, !dbg !16264
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !16264
  store ptr @14, ptr %i.ff, align 8, !dbg !16264
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !16264

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !16265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16270
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !16271
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !16273, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !16274

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !16274

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16264
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !16265, !noalias !16275
  br label %bb.be, !dbg !16264

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !16278

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !16279
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !16281, !noalias !16275
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !16284
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !16284, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !16297, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16298
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !16298

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !16300, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !16305
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !16306
  br label %bb.bp, !dbg !16309

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !16310
  store ptr %0, ptr %i.fq, align 8, !dbg !16310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !16310
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !16310
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !16310
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !16310
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !16310
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !16310
  store i64 0, ptr %i.ft, align 8, !dbg !16310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16311
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !16312

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !16313, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !16318
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !16319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16322
  br label %bb.v, !dbg !16015

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !16323
  ret ptr %.sroa.0.1, !dbg !16324

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !16325
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !16328, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !16333
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !16334
  br label %bb.bm, !dbg !15864

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15897
  br label %bb.bn, !dbg !16337

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !16339, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !16344
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !16345
  resume { ptr, i32 } %.pn, !dbg !16348
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(208) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16349 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !16350, !range !52, !noalias !16353, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !16357
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !16357
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !16357
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !16357
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !16357

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !16358, !noalias !16353, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !16361 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !16361, !range !80, !noalias !16353, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !16361 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !16361, !noalias !16353 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !16363
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !16364

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16365
  %i.w = load i8, ptr %i.v, align 8, !dbg !16365, !range !60, !noalias !16353, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !16365 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !16369
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !16369

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !16370, !noalias !16353
  br label %bb.e, !dbg !16369

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !16369
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !16369
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !16369

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16371
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !16371
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16371
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !16371
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !16371
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !16371
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !16371
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !16371
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !16371
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !16371
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !16374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16378
  br label %bb.bm, !dbg !16379

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !16380 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !16385, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !16390
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !16390, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !16391
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !16397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16401
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16401
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !16403

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !16404
  unreachable, !dbg !16404

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !16406, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !16406
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16409
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !16409 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !16410

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !16411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !16411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16412
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !16413 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !16413, !range !60, !noalias !16417, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !16413
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !16420

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !16421, !range !80, !noalias !16417, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !16425
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !16426, !range !60, !noalias !16417 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !16428
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !16428

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !16421, !noalias !16417
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !16429
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !16429, !noalias !16417 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !16431
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !16431
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !16431

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !16434
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !16436

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !16434, !noalias !16417
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !16436

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !16438 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !16439
  %i.av = zext nneg i8 %i.au to i64, !dbg !16441
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !16443
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !16444
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !16444, !noalias !16417, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !16445
  %i.ba = shl nuw i64 1, %i.az, !dbg !16445
  %i.bb = and i64 %i.ba, %i.ay, !dbg !16444
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !16444
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !16446

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !16447 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !16453, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !16458
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !16458, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !16459

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !16461, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !16466
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !16467
  br label %bb.bp, !dbg !16470

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !16471
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !16476
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !16481
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !16487
  store i64 0, ptr %i.bk, align 8, !dbg !16487
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !16488
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !16489 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !16500
  tail call void @llvm.assume(i1 %i.bm), !dbg !16500
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !16501
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !16515

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16515
  store ptr @3, ptr %i.f, align 8, !dbg !16515
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16515
  store i64 23, ptr %i.bo, align 8, !dbg !16515
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !16515
  store ptr @3, ptr %i.bp, align 8, !dbg !16515
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !16515
  store i64 23, ptr %i.bq, align 8, !dbg !16515
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !16515
  store ptr @9, ptr %i.br, align 8, !dbg !16515
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !16515

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16517
  store i64 %i.ah, ptr %i.d, align 8, !dbg !16517
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !16517
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !16517
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !16517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !16517
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !16517
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !16517
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.t unwind label %bb.o, !dbg !16516

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16515
  br label %bb.r, !dbg !16515

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16518
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !16519

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16520
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !16521, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !16526
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !16527
  br label %bb.v, !dbg !16530

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !16531
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !16532, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !16537
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !16538
  br label %bb.bm, !dbg !16379

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !16541 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !16548
  tail call void @llvm.assume(i1 %i.by), !dbg !16548
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !16549
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !16559

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16560
  store i64 %i.ah, ptr %i.i, align 8, !dbg !16560
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16560
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !16560
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !16560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !16560
  br label %bb.ab, !dbg !16561

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16559
end_hunk_26
begin_hunk_27_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !16736
  unreachable, !dbg !16736

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !16737, !noalias !16564, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !16742
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !16743, !noalias !16564
  br label %bb.bp, !dbg !16736

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !16746, !noalias !16564, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !16751           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !16752, !noalias !16564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16755
  br label %bb.bc, !dbg !16756

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !16746, !noalias !16564, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !16751
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !16752, !noalias !16564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16755
  br label %bb.bn, !dbg !16756

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !16746, !noalias !16564, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !16751           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !16752, !noalias !16564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16755
  %.not44 = icmp eq ptr %i.ev, null, !dbg !16759
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !16756

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !16760 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !16768
  call void @llvm.assume(i1 %i.fa), !dbg !16768
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !16769
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !16779

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16779
  store ptr @3, ptr %i.h, align 8, !dbg !16779
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16779
  store i64 23, ptr %i.fc, align 8, !dbg !16779
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !16779
  store ptr @3, ptr %i.fd, align 8, !dbg !16779
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !16779
  store i64 23, ptr %i.fe, align 8, !dbg !16779
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !16779
  store ptr @14, ptr %i.ff, align 8, !dbg !16779
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !16779

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !16780 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16785
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !16786
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !16788, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !16789

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !16789

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16779
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !16780, !noalias !16790
  br label %bb.be, !dbg !16779

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !16793

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !16794
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !16796, !noalias !16790
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !16799
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !16799, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !16812, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16813
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !16813

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !16815, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !16820
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !16821
  br label %bb.bp, !dbg !16824

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !16825
  store ptr %0, ptr %i.fq, align 8, !dbg !16825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !16825
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !16825
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !16825
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !16825
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !16825
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !16825
  store i64 0, ptr %i.ft, align 8, !dbg !16825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16826
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !16827

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !16828, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !16833
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !16834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16837
  br label %bb.v, !dbg !16530

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !16838
  ret ptr %.sroa.0.1, !dbg !16839

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !16840
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !16843, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !16848
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !16849
  br label %bb.bm, !dbg !16379

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16412
  br label %bb.bn, !dbg !16852

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !16854, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !16859
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !16860
  resume { ptr, i32 } %.pn, !dbg !16863
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(208) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16864 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !16865, !range !52, !noalias !16868, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !16872
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !16872
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !16872
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !16872
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !16872

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !16873, !noalias !16868, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !16876 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !16876, !range !80, !noalias !16868, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !16876 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !16876, !noalias !16868 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !16878
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !16879

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16880
  %i.w = load i8, ptr %i.v, align 8, !dbg !16880, !range !60, !noalias !16868, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !16880 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !16884
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !16884

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !16885, !noalias !16868
  br label %bb.e, !dbg !16884

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !16884
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !16884
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !16884

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16886
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !16886
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16886
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !16886
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !16886
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !16886
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !16886
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !16886
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !16886
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !16886
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !16889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16893
  br label %bb.bm, !dbg !16894

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !16895 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !16900, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !16905
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !16905, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !16906
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !16912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16916
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16916
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !16918

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !16919
  unreachable, !dbg !16919

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !16921, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !16921
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16924
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !16924 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !16925

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !16926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !16926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16927
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !16928 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !16928, !range !60, !noalias !16932, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !16928
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !16935

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !16936, !range !80, !noalias !16932, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !16940
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !16941, !range !60, !noalias !16932 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !16943
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !16943

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !16936, !noalias !16932
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !16944
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !16944, !noalias !16932 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !16946
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !16946
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !16946

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !16949
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !16951

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !16949, !noalias !16932
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !16951

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !16953 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !16954
  %i.av = zext nneg i8 %i.au to i64, !dbg !16956
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !16958
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !16959
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !16959, !noalias !16932, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !16960
  %i.ba = shl nuw i64 1, %i.az, !dbg !16960
  %i.bb = and i64 %i.ba, %i.ay, !dbg !16959
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !16959
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !16961

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !16962 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !16968, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !16973
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !16973, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !16974

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !16976, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !16981
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !16982
  br label %bb.bp, !dbg !16985

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !16986
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !16991
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !16996
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !17002
  store i64 0, ptr %i.bk, align 8, !dbg !17002
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !17003
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !17004 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !17015
  tail call void @llvm.assume(i1 %i.bm), !dbg !17015
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !17016
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !17030

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17030
  store ptr @3, ptr %i.f, align 8, !dbg !17030
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17030
  store i64 23, ptr %i.bo, align 8, !dbg !17030
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !17030
  store ptr @3, ptr %i.bp, align 8, !dbg !17030
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !17030
  store i64 23, ptr %i.bq, align 8, !dbg !17030
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !17030
  store ptr @9, ptr %i.br, align 8, !dbg !17030
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !17030

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17032
  store i64 %i.ah, ptr %i.d, align 8, !dbg !17032
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !17032
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !17032
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !17032
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !17032
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !17032
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.t unwind label %bb.o, !dbg !17031

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17030
  br label %bb.r, !dbg !17030

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17033
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !17034

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17035
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !17036, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !17041
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !17042
  br label %bb.v, !dbg !17045

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !17046
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !17047, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !17052
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !17053
  br label %bb.bm, !dbg !16894

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !17056 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !17063
  tail call void @llvm.assume(i1 %i.by), !dbg !17063
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !17064
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !17074

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17075
  store i64 %i.ah, ptr %i.i, align 8, !dbg !17075
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17075
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !17075
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !17075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !17075
  br label %bb.ab, !dbg !17076

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17074
end_hunk_27
begin_hunk_28_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !17251
  unreachable, !dbg !17251

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !17252, !noalias !17079, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !17257
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !17258, !noalias !17079
  br label %bb.bp, !dbg !17251

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !17261, !noalias !17079, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !17266           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !17267, !noalias !17079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17270
  br label %bb.bc, !dbg !17271

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !17261, !noalias !17079, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !17266
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !17267, !noalias !17079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17270
  br label %bb.bn, !dbg !17271

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !17261, !noalias !17079, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !17266           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !17267, !noalias !17079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17270
  %.not44 = icmp eq ptr %i.ev, null, !dbg !17274
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !17271

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !17275 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !17283
  call void @llvm.assume(i1 %i.fa), !dbg !17283
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !17284
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !17294

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17294
  store ptr @3, ptr %i.h, align 8, !dbg !17294
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17294
  store i64 23, ptr %i.fc, align 8, !dbg !17294
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !17294
  store ptr @3, ptr %i.fd, align 8, !dbg !17294
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !17294
  store i64 23, ptr %i.fe, align 8, !dbg !17294
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !17294
  store ptr @14, ptr %i.ff, align 8, !dbg !17294
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !17294

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !17295 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17300
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !17301
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !17303, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !17304

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !17304

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17294
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !17295, !noalias !17305
  br label %bb.be, !dbg !17294

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !17308

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !17309
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !17311, !noalias !17305
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !17314
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !17314, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !17327, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17328
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !17328

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !17330, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !17335
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !17336
  br label %bb.bp, !dbg !17339

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !17340
  store ptr %0, ptr %i.fq, align 8, !dbg !17340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !17340
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !17340
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !17340
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !17340
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !17340
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !17340
  store i64 0, ptr %i.ft, align 8, !dbg !17340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17341
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkB16_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !17342

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !17343, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !17348
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17352
  br label %bb.v, !dbg !17045

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !17353
  ret ptr %.sroa.0.1, !dbg !17354

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !17355
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !17358, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !17363
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !17364
  br label %bb.bm, !dbg !16894

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16927
  br label %bb.bn, !dbg !17367

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !17369, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !17374
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !17375
  resume { ptr, i32 } %.pn, !dbg !17378
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(304) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17379 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !17380, !range !52, !noalias !17383, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !17387
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !17387
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !17387
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !17387
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !17387

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !17388, !noalias !17383, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !17391 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !17391, !range !80, !noalias !17383, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !17391 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !17391, !noalias !17383 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !17393
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !17394

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !17395
  %i.w = load i8, ptr %i.v, align 8, !dbg !17395, !range !60, !noalias !17383, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !17395 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !17399
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !17399

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !17400, !noalias !17383
  br label %bb.e, !dbg !17399

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !17399
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !17399
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !17399

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17401
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !17401
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17401
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !17401
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !17401
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !17401
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !17401
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !17401
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !17401
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !17401
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !17404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17408
  br label %bb.bm, !dbg !17409

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !17410 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !17415, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !17420
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !17420, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !17421
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !17431
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17431
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !17433

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !17434
  unreachable, !dbg !17434

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !17436, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !17436
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17439
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !17439 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !17440

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !17441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !17441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17442
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !17443 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !17443, !range !60, !noalias !17447, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !17443
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !17450

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !17451, !range !80, !noalias !17447, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !17455
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !17456, !range !60, !noalias !17447 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !17458
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !17458

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !17451, !noalias !17447
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !17459
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !17459, !noalias !17447 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !17461
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !17461
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !17461

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !17464
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !17466

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !17464, !noalias !17447
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !17466

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !17468 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !17469
  %i.av = zext nneg i8 %i.au to i64, !dbg !17471
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !17473
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !17474
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !17474, !noalias !17447, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !17475
  %i.ba = shl nuw i64 1, %i.az, !dbg !17475
  %i.bb = and i64 %i.ba, %i.ay, !dbg !17474
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !17474
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !17476

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !17477 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !17483, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !17488
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !17488, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !17489

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !17491, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !17496
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !17497
  br label %bb.bp, !dbg !17500

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !17501
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !17506
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !17511
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !17517
  store i64 0, ptr %i.bk, align 8, !dbg !17517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !17518
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !17519 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !17530
  tail call void @llvm.assume(i1 %i.bm), !dbg !17530
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !17531
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !17545

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17545
  store ptr @3, ptr %i.f, align 8, !dbg !17545
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17545
  store i64 23, ptr %i.bo, align 8, !dbg !17545
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !17545
  store ptr @3, ptr %i.bp, align 8, !dbg !17545
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !17545
  store i64 23, ptr %i.bq, align 8, !dbg !17545
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !17545
  store ptr @9, ptr %i.br, align 8, !dbg !17545
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !17545

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17547
  store i64 %i.ah, ptr %i.d, align 8, !dbg !17547
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !17547
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !17547
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !17547
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !17547
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !17547
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3)
          to label %bb.t unwind label %bb.o, !dbg !17546

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17545
  br label %bb.r, !dbg !17545

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17548
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !17549

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17550
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !17551, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !17556
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !17557
  br label %bb.v, !dbg !17560

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !17561
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !17562, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !17567
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !17568
  br label %bb.bm, !dbg !17409

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !17571 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !17578
  tail call void @llvm.assume(i1 %i.by), !dbg !17578
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !17579
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !17589

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17590
  store i64 %i.ah, ptr %i.i, align 8, !dbg !17590
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17590
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !17590
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !17590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !17590
  br label %bb.ab, !dbg !17591

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17589
end_hunk_28
begin_hunk_29_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !17766
  unreachable, !dbg !17766

.loopexit.i:                                      ; preds = %bb.az, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit38.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp39.i, %.loopexit.loopexit.split-lp.i ]
  %i.ep = load i64, ptr %i.cf, align 8, !dbg !17767, !noalias !17594, !noundef !15
  %i.eq = add i64 %i.ep, 1, !dbg !17772
  store i64 %i.eq, ptr %i.cf, align 8, !dbg !17773, !noalias !17594
  br label %bb.bp, !dbg !17766

.thread:                                          ; preds = %bb.ag, %bb.aq
  %i.er = load i64, ptr %i.cf, align 8, !dbg !17776, !noalias !17594, !noundef !15
  %i.es = add i64 %i.er, 1, !dbg !17781           ; 2 uses
  store i64 %i.es, ptr %i.cf, align 8, !dbg !17782, !noalias !17594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17785
  br label %bb.bc, !dbg !17786

.thread85:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %.invoke.i
  %.sroa.0.0.i60.ph = phi ptr [ %i.cr, %.invoke.i ], [ %i.df, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.et = load i64, ptr %i.cf, align 8, !dbg !17776, !noalias !17594, !noundef !15
  %i.eu = add i64 %i.et, 1, !dbg !17781
  store i64 %i.eu, ptr %i.cf, align 8, !dbg !17782, !noalias !17594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17785
  br label %bb.bn, !dbg !17786

bb.bb:                                            ; preds = %bb.ag
  %i.ev = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  %i.ew = load i64, ptr %i.cf, align 8, !dbg !17776, !noalias !17594, !noundef !15
  %i.ex = add i64 %i.ew, 1, !dbg !17781           ; 2 uses
  store i64 %i.ex, ptr %i.cf, align 8, !dbg !17782, !noalias !17594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17785
  %.not44 = icmp eq ptr %i.ev, null, !dbg !17789
  br i1 %.not44, label %bb.bc, label %bb.bn, !dbg !17786

bb.bc:                                            ; preds = %bb.bb, %.thread
  %i.ey = phi i64 [ %i.ex, %bb.bb ], [ %i.es, %.thread ]
  %i.ez = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !17790 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6, !dbg !17798
  call void @llvm.assume(i1 %i.fa), !dbg !17798
  %i.fb = icmp samesign ugt i64 %i.ez, 4, !dbg !17799
  br i1 %i.fb, label %bb.bd, label %bb.be, !dbg !17809

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17809
  store ptr @3, ptr %i.h, align 8, !dbg !17809
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17809
  store i64 23, ptr %i.fc, align 8, !dbg !17809
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !17809
  store ptr @3, ptr %i.fd, align 8, !dbg !17809
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !17809
  store i64 23, ptr %i.fe, align 8, !dbg !17809
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !17809
  store ptr @14, ptr %i.ff, align 8, !dbg !17809
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bg unwind label %bb.m, !dbg !17809

bb.be:                                            ; preds = %bb.bc, %bb.bg
  %i.fg = phi i64 [ %i.ey, %bb.bc ], [ %.pre141, %bb.bg ], !dbg !17810 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17815
  %i.fh = icmp ult i64 %i.fg, 9223372036854775807, !dbg !17816
  br i1 %i.fh, label %bb.bi, label %bb.bf, !dbg !17818, !prof !427

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
          to label %.noexc63 unwind label %bb.bh, !dbg !17819

.noexc63:                                         ; preds = %bb.bf
  unreachable, !dbg !17819

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17809
  %.pre141 = load i64, ptr %i.cf, align 8, !dbg !17810, !noalias !17820
  br label %bb.be, !dbg !17809

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp, !dbg !17823

bb.bi:                                            ; preds = %bb.be
  %i.fj = add nuw nsw i64 %i.fg, 1, !dbg !17824
  store i64 %i.fj, ptr %i.cf, align 8, !dbg !17826, !noalias !17820
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !17829
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !17829, !nonnull !15, !noundef !15
  %i.fm = load i64, ptr %i.cj, align 8, !dbg !17842, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17843
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj, !dbg !17843

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load i64, ptr %i.cf, align 8, !dbg !17845, !noundef !15
  %i.fp = add i64 %i.fo, -1, !dbg !17850
  store i64 %i.fp, ptr %i.cf, align 8, !dbg !17851
  br label %bb.bp, !dbg !17854

bb.bk:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !17855
  store ptr %0, ptr %i.fq, align 8, !dbg !17855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !dbg !17855
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !17855
  store ptr %i.fl, ptr %i.fr, align 8, !dbg !17855
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 160, !dbg !17855
  store i64 %i.fm, ptr %i.fs, align 8, !dbg !17855
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !17855
  store i64 0, ptr %i.ft, align 8, !dbg !17855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17856
  %i.fu = invoke noundef ptr @_RNvMs0_NtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB5_9MultiLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB16_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
          to label %bb.bl unwind label %bb.bj, !dbg !17857

bb.bl:                                            ; preds = %bb.bk
  %i.fv = load i64, ptr %i.cf, align 8, !dbg !17858, !noundef !15
  %i.fw = add i64 %i.fv, -1, !dbg !17863
  store i64 %i.fw, ptr %i.cf, align 8, !dbg !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17867
  br label %bb.v, !dbg !17560

bb.bm:                                            ; preds = %bb.bn, %bb.e, %bb.v
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.2, %bb.bn ], [ %.sroa.0.0, %bb.v ], !dbg !17868
  ret ptr %.sroa.0.1, !dbg !17869

bb.bn:                                            ; preds = %.thread85, %bb.bb, %bb.bo
  %.sroa.0.2 = phi ptr [ %i.ak, %bb.bo ], [ %i.ev, %bb.bb ], [ %.sroa.0.0.i60.ph, %.thread85 ], !dbg !17870
  %i.fx = load i64, ptr %i.ab, align 8, !dbg !17873, !noundef !15
  %i.fy = add i64 %i.fx, 1, !dbg !17878
  store i64 %i.fy, ptr %i.ab, align 8, !dbg !17879
  br label %bb.bm, !dbg !17409

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17442
  br label %bb.bn, !dbg !17882

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !17884, !noundef !15
  %i.ga = add i64 %i.fz, 1, !dbg !17889
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !17890
  resume { ptr, i32 } %.pn, !dbg !17893
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(304) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17894 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [160 x i8], align 8               ; 7 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [136 x i8], align 8           ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [152 x i8], align 8               ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 7 uses
  %i.l = load i64, ptr %0, align 8, !dbg !17895, !range !52, !noalias !17898, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1, !dbg !17902
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ne i64 %i.o, 0
  %not. = xor i1 %i.m, true, !dbg !17902
  %or.cond = select i1 %not., i1 true, i1 %i.p, !dbg !17902
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.r = load i8, ptr %i.q, align 1, !range !60
  %i.s = icmp eq i8 %i.r, 0
  %or.cond92 = select i1 %or.cond, i1 true, i1 %i.s, !dbg !17902
  br i1 %or.cond92, label %bb.b, label %bb.e, !dbg !17902

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !17903, !noalias !17898, !nonnull !15, !align !76, !noundef !15 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !17906 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 4, !dbg !17906, !range !80, !noalias !17898, !noundef !15 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !17906 ; 2 uses
  %.val1.i.i.i.i = load i8, ptr %i.u, align 1, !dbg !17906, !noalias !17898 ; 3 uses
  %.not.i = icmp eq i8 %.val.i.i.i.i, 2, !dbg !17908
  br i1 %.not.i, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !17909

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !17910
  %i.w = load i8, ptr %i.v, align 8, !dbg !17910, !range !60, !noalias !17898, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !17910 ; 2 uses
  %i.y = icmp eq i8 %.val.i.i.i.i, %i.w, !dbg !17914
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !dbg !17914

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i8, ptr %i.x, align 1, !dbg !17915, !noalias !17898
  br label %bb.e, !dbg !17914

bb.d:                                             ; preds = %bb.c
  %or.cond.not.i = icmp ne i8 %.val.i.i.i.i, 0, !dbg !17914
  %i.z = load i8, ptr %i.x, align 1               ; 2 uses
  %.not12.i = icmp eq i8 %.val1.i.i.i.i, %i.z
  %or.cond93 = select i1 %or.cond.not.i, i1 true, i1 %.not12.i, !dbg !17914
  br i1 %or.cond93, label %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !17914

bb.e:                                             ; preds = %bb.d, %bb.a, %._crit_edge.i
  %.sroa.12.0.ph = phi i8 [ %i.z, %bb.d ], [ %.pre.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i8 [ 0, %bb.d ], [ %i.w, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.10.0.ph = phi i8 [ %.val1.i.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.9.0.ph = phi i8 [ 0, %bb.d ], [ %.val.i.i.i.i, %._crit_edge.i ], [ undef, %bb.a ]
  %.sroa.064.0.ph = phi i64 [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %._crit_edge.i ], [ -9223372036854775808, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17916
  store i64 %.sroa.064.0.ph, ptr %i.c, align 8, !dbg !17916
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17916
  store i8 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !17916
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9, !dbg !17916
  store i8 %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 1, !dbg !17916
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10, !dbg !17916
  store i8 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 2, !dbg !17916
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 11, !dbg !17916
  store i8 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !17916
  %i.aa = call noundef nonnull ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtCshqpdr3wwzuw_13grep_searcher4sink9SinkError12error_configCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17923
  br label %bb.bm, !dbg !17924

_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !17925 ; 8 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !17930, !noundef !15
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !17935
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !17935, !prof !427

bb.f:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  store i64 -1, ptr %i.ab, align 8, !dbg !17936
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !17946
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17946
  invoke void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !17948

bb.g:                                             ; preds = %_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher12check_configRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12, !dbg !17949
  unreachable, !dbg !17949

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !dbg !17951, !range !450, !noundef !15 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !17951
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17954
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !17954 ; 4 uses
  br i1 %i.ai, label %bb.bo, label %bb.j, !dbg !17955

bb.j:                                             ; preds = %bb.i
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !17956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.537.0..sroa_idx, i64 136, i1 false), !dbg !17956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17957
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !17958 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !dbg !17958, !range !60, !noalias !17962, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1, !dbg !17958
  br i1 %i.an, label %bb.k, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !17965

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i54 = load i8, ptr %i.t, align 4, !dbg !17966, !range !80, !noalias !17962, !noundef !15 ; 3 uses
  %.not.i55 = icmp ne i8 %.val.i.i.i.i54, 2, !dbg !17970
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i56 = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !17971, !range !60, !noalias !17962 ; 2 uses
  %i.ao = icmp eq i8 %.val.i.i.i.i54, %.pre.i56
  %or.cond21.i = select i1 %.not.i55, i1 %i.ao, i1 false, !dbg !17973
  br i1 %or.cond21.i, label %bb.l, label %._crit_edge.i57, !dbg !17973

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i58 = load i8, ptr %i.u, align 1, !dbg !17966, !noalias !17962
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !17974
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !17974, !noalias !17962 ; 2 uses
  %or.cond.not.i59 = icmp ne i8 %.val.i.i.i.i54, 0, !dbg !17976
  %i.ar = icmp eq i8 %.val1.i.i.i.i58, %i.aq
  %or.cond.i = select i1 %or.cond.not.i59, i1 true, i1 %i.ar, !dbg !17976
  br i1 %or.cond.i, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !17976

._crit_edge.i57:                                  ; preds = %bb.k
  %i.as = trunc nuw i8 %.pre.i56 to i1, !dbg !17979
  br i1 %i.as, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, label %._crit_edge.i57..thread.i_crit_edge, !dbg !17981

._crit_edge.i57..thread.i_crit_edge:              ; preds = %._crit_edge.i57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !17979, !noalias !17962
  br label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit, !dbg !17981

bb.m:                                             ; preds = %bb.ad, %bb.aa, %bb.bd, %bb.y, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l, %._crit_edge.i57..thread.i_crit_edge, %._crit_edge.i57
  %.sroa.06.0.i = phi i8 [ 10, %._crit_edge.i57 ], [ %.pre, %._crit_edge.i57..thread.i_crit_edge ], [ %i.aq, %bb.l ], !dbg !17983 ; 2 uses
  %i.au = lshr i8 %.sroa.06.0.i, 6, !dbg !17984
  %i.av = zext nneg i8 %i.au to i64, !dbg !17986
  %i.aw = and i8 %.sroa.06.0.i, 63, !dbg !17988
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.av, !dbg !17989
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !17989, !noalias !17962, !noundef !15
  %i.az = zext nneg i8 %i.aw to i64, !dbg !17990
  %i.ba = shl nuw i64 1, %i.az, !dbg !17990
  %i.bb = and i64 %i.ba, %i.ay, !dbg !17989
  %.not17.i = icmp eq i64 %i.bb, 0, !dbg !17989
  br i1 %.not17.i, label %bb.x, label %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread, !dbg !17991

_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.l, %bb.j, %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !17992 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !17998, !noundef !15
  %i.be = icmp eq i64 %i.bd, 0, !dbg !18003
  br i1 %i.be, label %bb.p, label %bb.n, !dbg !18003, !prof !427

bb.n:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.w unwind label %bb.m, !dbg !18004

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !18006, !noundef !15
  %i.bh = add i64 %i.bg, 1, !dbg !18011
  store i64 %i.bh, ptr %i.bc, align 8, !dbg !18012
  br label %bb.bp, !dbg !18015

bb.p:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit.thread
  store i64 -1, ptr %i.bc, align 8, !dbg !18016
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !18021
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !18026
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !18032
  store i64 0, ptr %i.bk, align 8, !dbg !18032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false), !dbg !18033
  %i.bl = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !18034 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6, !dbg !18045
  tail call void @llvm.assume(i1 %i.bm), !dbg !18045
  %i.bn = icmp samesign ugt i64 %i.bl, 4, !dbg !18046
  br i1 %i.bn, label %bb.q, label %bb.r, !dbg !18060

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18060
  store ptr @3, ptr %i.f, align 8, !dbg !18060
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !18060
  store i64 23, ptr %i.bo, align 8, !dbg !18060
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !18060
  store ptr @3, ptr %i.bp, align 8, !dbg !18060
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !18060
  store i64 23, ptr %i.bq, align 8, !dbg !18060
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !18060
  store ptr @9, ptr %i.br, align 8, !dbg !18060
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.s unwind label %bb.o, !dbg !18060

bb.r:                                             ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18062
  store i64 %i.ah, ptr %i.d, align 8, !dbg !18062
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18062
  store ptr %i.ak, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !dbg !18062
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.025.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !18062
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152, !dbg !18062
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !18062
  invoke void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.e, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %3)
          to label %bb.t unwind label %bb.o, !dbg !18061

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18060
  br label %bb.r, !dbg !18060

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18063
  %i.bs = invoke noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB15_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.e)
          to label %bb.u unwind label %bb.o, !dbg !18064

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18065
  %i.bt = load i64, ptr %i.bc, align 8, !dbg !18066, !noundef !15
  %i.bu = add i64 %i.bt, 1, !dbg !18071
  store i64 %i.bu, ptr %i.bc, align 8, !dbg !18072
  br label %bb.v, !dbg !18075

bb.v:                                             ; preds = %bb.bl, %bb.u
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.bl ], [ %i.bs, %bb.u ], !dbg !18076
  %i.bv = load i64, ptr %i.ab, align 8, !dbg !18077, !noundef !15
  %i.bw = add i64 %i.bv, 1, !dbg !18082
  store i64 %i.bw, ptr %i.ab, align 8, !dbg !18083
  br label %bb.bm, !dbg !17924

bb.w:                                             ; preds = %bb.n
  unreachable

bb.x:                                             ; preds = %_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  %i.bx = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !18086 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6, !dbg !18093
  tail call void @llvm.assume(i1 %i.by), !dbg !18093
  %i.bz = icmp samesign ugt i64 %i.bx, 4, !dbg !18094
  br i1 %i.bz, label %bb.y, label %.thread154, !dbg !18104

.thread154:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18105
  store i64 %i.ah, ptr %i.i, align 8, !dbg !18105
  %.sroa.618.0..sroa_idx19155 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !18105
  store ptr %i.ak, ptr %.sroa.618.0..sroa_idx19155, align 8, !dbg !18105
  %.sroa.7.0..sroa_idx21156 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !18105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx21156, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false), !dbg !18105
  br label %bb.ab, !dbg !18106

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !18104
end_hunk_29
