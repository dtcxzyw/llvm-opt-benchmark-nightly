Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts:bb.a
  %i.dd = icmp eq i128 %.val.i.i.i.i7.i, -100310019091698447603793328749864812255
  br i1 %i.dd, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.au, i64 264
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !2177, !noalias !2178, !noundef !11 ; 2 uses
  %i.dg = icmp ult i64 %.sroa.8.0.i.i.i.i.i275, %i.df
  br i1 %i.dg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i.i275, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !2179
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !2177, !noalias !2178, !nonnull !11, !noundef !11
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.di, i64 %.sroa.8.0.i.i.i.i.i275 ; 2 uses
  %.val5.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !2180, !nonnull !11, !noundef !11
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %.val6.i.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !2180, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !range !18, !invariant.load !11, !noalias !2180
  %i.dn = add nsw i64 %i.dm, -1
  %i.do = and i64 %i.dn, -16
  %i.dp = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2180
  %i.dr = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !invariant.load !11, !noalias !2180, !nonnull !11
  call void %i.ds(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ac, ptr noundef nonnull %i.dq) #45, !noalias !2180, !inline_history !1978
  %i.dt = load i128, ptr %i.ac, align 16, !noalias !2180, !noundef !11
  %.not.i.i.i.i = icmp eq i128 %i.dt, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2180
  br i1 %.not.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !2180
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit: ; preds = %bb.d, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.dq, %bb.g ], [ null, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i ], [ null, %bb.d ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  %..i.i.i = select i1 %.not.i.i.i, ptr @99, ptr %.sroa.0.0.i.i.i.i ; 5 uses
  store ptr %i.au, ptr %i.af, align 8, !alias.scope !2181, !noalias !2182
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %..i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2181, !noalias !2182
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2181, !noalias !2182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2183
  store i64 0, ptr %i.ab, align 8, !alias.scope !2184, !noalias !2183
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2184, !noalias !2183
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2184, !noalias !2183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2183
  %i.du = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aa, ptr noundef nonnull align 2 dereferenceable(14) %i.du, i64 14, i1 false), !noalias !2185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2183
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.du, align 2, !noalias !2185
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 32
  %.sroa.7.0.copyload.i.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i, align 2, !noalias !2185
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 36
  %.sroa.11.0.copyload.i.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !noalias !2185
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 40
  %.sroa.15.0.copyload.i.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i.i, align 2, !noalias !2185
  %.not.i.i1.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i, -1
  %.not5.i.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i.i, -1
  %or.cond.i.i.i = select i1 %.not.i.i1.i.i, i1 %.not5.i.i.i.i, i1 false
  %.not7.i.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i.i, -1
  %or.cond35.i.i.i = select i1 %or.cond.i.i.i, i1 %.not7.i.i.i.i, i1 false
  %i.dv = icmp eq i16 %.sroa.15.0.copyload.i.i.i, 0
  %or.cond36.i.i.i = select i1 %or.cond35.i.i.i, i1 %i.dv, i1 false ; 2 uses
  %spec.select.i.i.i = select i1 %or.cond36.i.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i.i = select i1 %or.cond36.i.i.i, i64 0, i64 4
  store ptr %spec.select.i.i.i, ptr %i.z, align 8, !noalias !2183, !captures !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %spec.select38.i.i.i, ptr %i.dw, align 8, !noalias !2183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2183
  store ptr %i.aa, ptr %i.y, align 8, !noalias !2183
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !2183
  %i.dx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.dx, align 8, !noalias !2183
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !2183
  %i.dy = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.y) #43, !noalias !2185, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2183
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #43, !noalias !2186, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2183
  %i.dz = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.au, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ag) #43, !noalias !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2170
  br label %.loopexit

.lr.ph.i.lr.ph:                                   ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator18validate_exclusive0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, %.lr.ph.split.us.i.i.preheader.i
  %i.ea = getelementptr inbounds nuw [104 x i8], ptr %i.aq, i64 %i.as ; 2 uses
  %i.eb = getelementptr i8, ptr %i.au, i64 136
  %i.ec = getelementptr i8, ptr %i.au, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.lr.ph
  %i.ef = phi ptr [ %i.aq, %.lr.ph.i.lr.ph ], [ %i.ej, %.lr.ph.i.backedge ] ; 3 uses
  %i.eg = phi ptr [ %i.al, %.lr.ph.i.lr.ph ], [ %i.eh, %.lr.ph.i.backedge ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  %i.ei = icmp eq ptr %i.ef, %i.ea
  br i1 %i.ei, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !2189
  unreachable

bb.j:                                             ; preds = %.lr.ph.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 97
  %i.el = load i8, ptr %i.ek, align 1, !range !39, !alias.scope !2192, !noalias !2193, !noundef !11
  %cond.i.i.not.i.i = icmp eq i8 %i.el, 0
  br i1 %cond.i.i.not.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %.val.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !2195, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !2195, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  %.idx.i.i.i.i.i.i16 = mul nuw nsw i64 %.val1.i.i.i.i.i, 600
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i16
  %i.en = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.en, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, label %.lr.ph.i.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i.i17:                           ; preds = %bb.k
  %i.eo = getelementptr i8, ptr %i.eg, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !2197, !noalias !2198, !noundef !11 ; 3 uses
  %i.eq = load ptr, ptr %i.eg, align 8, !alias.scope !2197, !noalias !2199 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i.i.i17
  %i.er = phi ptr [ %.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i17 ], [ %i.es, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 600 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 544
  %i.eu = load i64, ptr %i.et, align 8, !noalias !2200, !noundef !11
  %i.ev = icmp eq i64 %i.eu, %i.ep
  br i1 %i.ev, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19: ; preds = %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 536
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !2200, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i20 = tail call i32 @bcmp(ptr nonnull %i.ex, ptr nonnull %i.eq, i64 %i.ep), !noalias !2200
  %i.ey = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i20, 0
  br i1 %i.ey, label %bb.m, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19, %bb.l
  %i.ez = icmp eq ptr %i.es, %i.em
  br i1 %i.ez, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, label %bb.l

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18, %bb.k, %bb.j
  %i.fa = icmp eq ptr %i.eh, %i.ao
  br i1 %i.fa, label %.loopexit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit56
  br label %.lr.ph.i

bb.m:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19
  %i.fb = getelementptr i8, ptr %i.eg, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.fc = load ptr, ptr %i.at, align 8, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts16gather_conflicts(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.fc, ptr %i.eq, i64 %i.ep) #43
  %i.fd = load ptr, ptr %i.ed, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.fe = load i64, ptr %i.ee, align 8, !noundef !11 ; 2 uses
  %.val14 = load ptr, ptr %i.eg, align 8
  %.val15 = load i64, ptr %i.fb, align 8          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18build_conflict_err.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fe
  %i.fh = load ptr, ptr %i.at, align 8, !alias.scope !2201, !noalias !2203, !nonnull !11, !align !17, !noundef !11 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2204
  store i64 0, ptr %i.u, align 8, !noalias !2204
  %.sroa.4.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i21, align 8, !noalias !2204
  %.sroa.5.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i22, align 8, !noalias !2204
  %.sroa.8.0..sroa_idx12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fi = getelementptr i8, ptr %i.fh, i64 208
  %i.fj = getelementptr i8, ptr %i.fh, i64 216
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i, %bb.n
  %.sroa.5.0.copyload.i.ph = phi i64 [ %i.gt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ 0, %bb.n ] ; 13 uses
  %.ph = phi ptr [ %i.gq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.n ] ; 3 uses
  %.sroa.23.0.i.i.ph = phi ptr [ %.sroa.23.1.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ %i.fd, %bb.n ]
  %.sroa.13.0.i.i.ph = phi ptr [ %.sroa.13.1.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ undef, %bb.n ]
  %.sroa.10.0.i.i.ph = phi i64 [ %.sroa.10.1.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ undef, %bb.n ]
  %.sroa.7.0.i.i.ph = phi ptr [ %i.gi, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ undef, %bb.n ]
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.0.1.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ null, %bb.n ]
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.ph, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.ph, i64 %.idx.i.i.i
  %i.fl = icmp eq i64 %.sroa.5.0.copyload.i.ph, 0
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer
  %.sroa.23.0.i.i = phi ptr [ %.sroa.23.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %.sroa.23.1.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  %.sroa.13.0.i.i = phi ptr [ %.sroa.13.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %.sroa.13.1.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  %.sroa.10.0.i.i = phi i64 [ %.sroa.10.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %.sroa.10.1.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %i.gi, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %.sroa.0.1.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i
  %.sroa.23.1.i.i = phi ptr [ %.sroa.23.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %i.fq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 7 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %i.gh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 4 uses
  %.sroa.10.1.i.i = phi i64 [ %.sroa.10.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %.sroa.0.0.copyload1136.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 4 uses
  %.sroa.7.1.i.i = phi ptr [ %.sroa.7.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %.sroa.8.sroa.0.0.copyload37.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 5 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %.sroa.8.sroa.0.0.copyload37.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i) ]
  %i.fm = icmp eq ptr %.sroa.7.1.i.i, %.sroa.13.1.i.i
  br i1 %i.fm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fn = icmp eq i64 %.sroa.10.1.i.i, 0
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = shl nuw i64 %.sroa.10.1.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.i.i, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2205
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.fp = icmp eq ptr %.sroa.23.1.i.i, %i.fg
  br i1 %i.fp, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.23.1.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.fi, align 8, !noalias !2208, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.fj, align 8, !noalias !2208, !noundef !11 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.23.1.i.i, align 8, !alias.scope !2209, !noalias !2210 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.23.1.i.i, i64 8
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.fr, align 8, !alias.scope !2209, !noalias !2210 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val1.i.i.i.i.i.i.i, 96
  %i.fs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ft = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ft, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.s, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i
  %i.fu = phi ptr [ %i.fv, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !2211, !noundef !11
  %i.fy = icmp eq i64 %i.fx, %.val3.i.i.i.i.i.i.i
  br i1 %i.fy, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !2211, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ga, ptr nonnull readonly %.val2.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i), !noalias !2211
  %i.gb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gb, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gc = icmp eq ptr %i.fv, %i.fs
  br i1 %i.gc, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i, %bb.s
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2208
  %i.gd = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !2208 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.t, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i, !prof !33

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46, !noalias !2208
  unreachable

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  store ptr %.val2.i.i.i.i.i.i.i, ptr %i.gd, align 8, !noalias !2208
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %.val3.i.i.i.i.i.i.i, ptr %i.gf, align 8, !noalias !2208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2206
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.fh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.23.1.i.i) #43, !noalias !2212
  %.sroa.0.0.copyload11.pr.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !2213 ; 2 uses
  %.sroa.8.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx12.i.i.i.i, align 8, !noalias !2213
  %.sroa.8.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx.i.i.i.i, align 8, !noalias !2213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2206
  %.not1.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload11.pr.i.i.i.i, -1
  br i1 %.not1.i.i.i.i, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i
  %.sroa.8.sroa.5.0.copyload38.i.i.i.i = phi i64 [ 1, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i ], [ %.sroa.8.sroa.5.0.copyload.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.sroa.0.0.copyload37.i.i.i.i = phi ptr [ %i.gd, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i ], [ %.sroa.8.sroa.0.0.copyload.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i ] ; 4 uses
  %.sroa.0.0.copyload1136.i.i.i.i = phi i64 [ 1, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i ], [ %.sroa.0.0.copyload11.pr.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload37.i.i.i.i) ]
  %i.gg = icmp ult i64 %.sroa.8.sroa.5.0.copyload38.i.i.i.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.sroa.0.0.copyload37.i.i.i.i, i64 %.sroa.8.sroa.5.0.copyload38.i.i.i.i
  br label %bb.o

bb.u:                                             ; preds = %bb.p
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i23 = load ptr, ptr %.sroa.7.1.i.i, align 8, !noalias !2214, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.3.0.i6.pn.i.i.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i, i64 8
  %.sroa.3.0.i6.pn.i.i.i.i = load i64, ptr %.sroa.3.0.i6.pn.i.i.in.i.i, align 8, !noalias !2214, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  br i1 %i.fl, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.u, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i
  %.sroa.03.09.i.i.i = phi ptr [ %i.gm, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %.ph, %bb.u ] ; 3 uses
  %i.gj = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 8
  %.sroa.03.0.val5.i.i.i = load i64, ptr %i.gj, align 8, !noalias !2216, !noundef !11
  %i.gk = icmp eq i64 %.sroa.03.0.val5.i.i.i, %.sroa.3.0.i6.pn.i.i.i.i
  br i1 %i.gk, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %.lr.ph.i.i.i24
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.09.i.i.i, align 8, !noalias !2216, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.03.0.val.i.i.i, ptr nonnull readonly %.sroa.0.0.i.i.i.i23, i64 %.sroa.3.0.i6.pn.i.i.i.i), !noalias !2217
  %i.gl = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.gl, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, %.lr.ph.i.i.i24
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.fk
  br i1 %i.gn, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i24

._crit_edge.i.i.i:                                ; preds = %bb.u, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  %i.go = load i64, ptr %i.u, align 8, !range !12, !alias.scope !2219, !noalias !2220, !noundef !11
  %i.gp = icmp eq i64 %.sroa.5.0.copyload.i.ph, %i.go
  br i1 %i.gp, label %bb.v, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #42, !noalias !2221
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i21, align 8, !alias.scope !2219, !noalias !2220
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i: ; preds = %bb.v, %._crit_edge.i.i.i
  %i.gq = phi ptr [ %.ph, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.v ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %.sroa.5.0.copyload.i.ph ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i23, ptr %i.gr, align 8, !noalias !2222
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %.sroa.3.0.i6.pn.i.i.i.i, ptr %i.gs, align 8, !noalias !2223
  %i.gt = add i64 %.sroa.5.0.copyload.i.ph, 1     ; 2 uses
  store i64 %i.gt, ptr %.sroa.5.0..sroa_idx.i.i22, align 8, !alias.scope !2219, !noalias !2220
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer

_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i
  %.sroa.04.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !2224 ; 2 uses
  %.sroa.45.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i21, align 8, !noalias !2224, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  %i.gu = mul nuw nsw i64 %.sroa.5.0.copyload.i.ph, 24 ; 2 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.sroa.5.0.copyload.i.ph, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.x, label %bb.w, !prof !21

bb.w:                                             ; preds = %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i
  %i.gv = icmp eq i64 %.sroa.5.0.copyload.i.ph, 0
  br i1 %i.gv, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB3e_6parser9validatorNtB3X_9Validator18build_conflict_errs_0EE9from_iterB3e_.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.w
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2227
  %i.gw = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gu, i64 noundef range(i64 1, 9) 8) #43, !noalias !2227 ; 3 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.gu, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #46, !noalias !2228
  unreachable

bb.y:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.gy = getelementptr i8, ptr %i.fh, i64 136
  %i.gz = getelementptr i8, ptr %i.fh, i64 144
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvMNtNtB11_6parser9validatorNtB2m_9Validator18build_conflict_errs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4u_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2h_EE0E0E0B11_.exit.i.i.i.i.i.i.i, %bb.y
  %i.hc = phi i64 [ 0, %bb.y ], [ %i.hs, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvMNtNtB11_6parser9validatorNtB2m_9Validator18build_conflict_errs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4u_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2h_EE0E0E0B11_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.45.0.copyload.i, i64 %i.hc ; 2 uses
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.hd, align 8, !noalias !2229
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.he, align 8, !noalias !2229 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gy, align 8, !noalias !2230, !nonnull !11, !noundef !11 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gz, align 8, !noalias !2230, !noundef !11 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val2.i.i.i.i.i.i.i.i.i, 600
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.hg = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hg, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.z, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = phi ptr [ %i.hi, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i, %bb.z ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 600 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 544
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !2231, !noundef !11
  %i.hl = icmp eq i64 %i.hk, %.val12.i.i.i.i.i.i.i
  br i1 %i.hl, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 536
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !2231, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.hn, ptr nonnull readonly %.val11.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i), !noalias !2231
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ho, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = icmp eq ptr %i.hi, %i.hf
  br i1 %i.hp, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2232
  store i64 0, ptr %i.r, align 8, !noalias !2232
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2232
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2232
  store i64 1610612768, ptr %i.ha, align 8, !noalias !2232
  store ptr %i.r, ptr %i.q, align 8, !noalias !2232
  store ptr @204, ptr %i.hb, align 8, !noalias !2232
  %i.hq = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.hh, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #43, !noalias !2233
  br i1 %i.hq, label %bb.aa, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvMNtNtB11_6parser9validatorNtB2m_9Validator18build_conflict_errs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4u_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2h_EE0E0E0B11_.exit.i.i.i.i.i.i.i, !prof !19

bb.aa:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !2234
  unreachable

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.z, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #44, !noalias !2230
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvMNtNtB11_6parser9validatorNtB2m_9Validator18build_conflict_errs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4u_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2h_EE0E0E0B11_.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !2235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2232
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !2236
  %i.hs = add nuw nsw i64 %i.hc, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ht = icmp eq i64 %i.hs, %.sroa.5.0.copyload.i.ph
  br i1 %i.ht, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB3e_6parser9validatorNtB3X_9Validator18build_conflict_errs_0EE9from_iterB3e_.exit.i, label %bb.z

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB3e_6parser9validatorNtB3X_9Validator18build_conflict_errs_0EE9from_iterB3e_.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvMNtNtB11_6parser9validatorNtB2m_9Validator18build_conflict_errs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4u_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2h_EE0E0E0B11_.exit.i.i.i.i.i.i.i, %bb.w
  %.sroa.10.0.i15.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.w ], [ %i.gw, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvMNtNtB11_6parser9validatorNtB2m_9Validator18build_conflict_errs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4u_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2h_EE0E0E0B11_.exit.i.i.i.i.i.i.i ]
  store i64 %.sroa.5.0.copyload.i.ph, ptr %i.x, align 8, !alias.scope !2226, !noalias !2237
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.10.0.i15.i.i, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !alias.scope !2226, !noalias !2237
  %.sroa.6.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.5.0.copyload.i.ph, ptr %.sroa.6.0..sroa_idx.i19.i, align 8, !alias.scope !2226, !noalias !2237
  %i.hu = getelementptr i8, ptr %i.fh, i64 136
  %.val.i = load ptr, ptr %i.hu, align 8, !noalias !2238, !nonnull !11, !noundef !11 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.fh, i64 144
  %.val17.i = load i64, ptr %i.hv, align 8, !noalias !2238, !noundef !11 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val17.i, 600
  %i.hw = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i
  %i.hx = icmp eq i64 %.val17.i, 0
  br i1 %i.hx, label %.loopexit.i, label %.lr.ph.i.i20.i

.lr.ph.i.i20.i:                                   ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB3e_6parser9validatorNtB3X_9Validator18build_conflict_errs_0EE9from_iterB3e_.exit.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i
  %i.hy = phi ptr [ %i.hz, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i ], [ %.val.i, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB3e_6parser9validatorNtB3X_9Validator18build_conflict_errs_0EE9from_iterB3e_.exit.i ] ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 600 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 544
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !2239, !noundef !11
  %i.ic = icmp eq i64 %i.ib, %.val15
  br i1 %i.ic, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i: ; preds = %.lr.ph.i.i20.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 536
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !2239, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ie, ptr nonnull readonly %.val14, i64 %.val15), !noalias !2239
  %i.if = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.if, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i, %.lr.ph.i.i20.i
  %i.ig = icmp eq ptr %i.hz, %i.hw
  br i1 %i.ig, label %.loopexit.i, label %.lr.ph.i.i20.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2240
  store ptr %i.al, ptr %i.o, align 8, !noalias !2240
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ao, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.aq, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ea, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.fh, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.4.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i21.i, align 8, !noalias !2240
  %.sroa.5.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.5.0.copyload.i.ph, ptr %.sroa.5.0..sroa_idx.i22.i, align 8, !noalias !2240
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2242
  %i.ih = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtB6_3map3MapIB12_INtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1S_2id2IdNtNtNtNtB1U_6parser7matches11matched_arg10MatchedArgENCNvMNtB2Z_9validatorNtB3P_9Validator24build_conflict_err_usage0ENCB3M_s_0ENCB3M_s0_0ENCB3M_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o) #43, !noalias !2243 ; 2 uses
  %i.ii = extractvalue { ptr, i64 } %i.ih, 0      ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i25, label %bb.ad, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2244
  %i.ij = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, 9) 8) #43, !noalias !2244 ; 5 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.ab, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

bb.ab:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #46, !noalias !2245
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.il = extractvalue { ptr, i64 } %i.ih, 1
  store ptr %i.ii, ptr %i.ij, align 8, !noalias !2245
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %i.il, ptr %i.im, align 8, !noalias !2245
  store i64 4, ptr %i.l, align 8, !noalias !2242
  %.sroa.4.0..sroa_idx.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ij, ptr %.sroa.4.0..sroa_idx.i.i.i26, align 8, !noalias !2242
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !2242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !2246
  call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.in = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtB6_3map3MapIB12_INtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1S_2id2IdNtNtNtNtB1U_6parser7matches11matched_arg10MatchedArgENCNvMNtB2Z_9validatorNtB3P_9Validator24build_conflict_err_usage0ENCB3M_s_0ENCB3M_s0_0ENCB3M_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k) #43, !noalias !2249 ; 2 uses
  %i.io = extractvalue { ptr, i64 } %i.in, 0      ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not5.i.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB21_6filter6FilterIB2R_INtNtB21_3map3MapIB2R_INtNtBV_8flat_map4IterBR_NtNtNtNtBX_6parser7matches11matched_arg10MatchedArgENCNvMNtB49_9validatorNtB4Y_9Validator24build_conflict_err_usage0ENCB4V_s_0ENCB4V_s0_0ENCB4V_s1_0EEE11spec_extendBX_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.ac
  %i.ip = phi ptr [ %i.iw, %bb.ac ], [ %i.ij, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.iq = phi i64 [ %i.ix, %bb.ac ], [ 4, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 3 uses
  %i.ir = phi i64 [ %i.ja, %bb.ac ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 4 uses
  %.pn.i.i.i.i.i = phi { ptr, i64 } [ %i.jb, %bb.ac ], [ %i.in, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.is = phi ptr [ %i.jc, %bb.ac ], [ %i.io, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.it = extractvalue { ptr, i64 } %.pn.i.i.i.i.i, 1
  %i.iu = icmp samesign ult i64 %i.ir, 576460752303423488
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp eq i64 %i.ir, %i.iq
  br i1 %i.iv, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i.i, label %bb.ac

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.iq, i64 noundef 1, i64 noundef 8, i64 noundef 16) #43, !noalias !2250
  %.pre6.i.i.i.i.i = load i64, ptr %i.l, align 8, !range !12, !alias.scope !2251, !noalias !2252
  %.pre.i.i27.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i26, align 8, !alias.scope !2251, !noalias !2252
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.iw = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i27.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i.i ] ; 2 uses
  %i.ix = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i ], [ %.pre6.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i.i ]
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.ir ; 2 uses
  store ptr %i.is, ptr %i.iy, align 8, !noalias !2253
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i64 %i.it, ptr %i.iz, align 8, !noalias !2253
  %i.ja = add nuw nsw i64 %i.ir, 1                ; 2 uses
  store i64 %i.ja, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !2251, !noalias !2252
  %i.jb = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtB6_3map3MapIB12_INtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1S_2id2IdNtNtNtNtB1U_6parser7matches11matched_arg10MatchedArgENCNvMNtB2Z_9validatorNtB3P_9Validator24build_conflict_err_usage0ENCB3M_s_0ENCB3M_s0_0ENCB3M_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k) #43, !noalias !2249 ; 2 uses
  %i.jc = extractvalue { ptr, i64 } %i.jb, 0      ; 2 uses
  %.not.i.i7.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i7.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB21_6filter6FilterIB2R_INtNtB21_3map3MapIB2R_INtNtBV_8flat_map4IterBR_NtNtNtNtBX_6parser7matches11matched_arg10MatchedArgENCNvMNtB49_9validatorNtB4Y_9Validator24build_conflict_err_usage0ENCB4V_s_0ENCB4V_s0_0ENCB4V_s1_0EEE11spec_extendBX_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB21_6filter6FilterIB2R_INtNtB21_3map3MapIB2R_INtNtBV_8flat_map4IterBR_NtNtNtNtBX_6parser7matches11matched_arg10MatchedArgENCNvMNtB49_9validatorNtB4Y_9Validator24build_conflict_err_usage0ENCB4V_s_0ENCB4V_s0_0ENCB4V_s1_0EEE11spec_extendBX_.exit.i.i.i: ; preds = %bb.ac, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2254
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !2240
  %.phi.trans.insert69.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.pre70.i.i = load i64, ptr %.phi.trans.insert69.i.i, align 8, !noalias !2240
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtB2k_3map3MapIB3a_INtNtB15_8flat_map4IterB11_NtNtNtNtB17_6parser7matches11matched_arg10MatchedArgENCNvMNtB4u_9validatorNtB5k_9Validator24build_conflict_err_usage0ENCB5h_s_0ENCB5h_s0_0ENCB5h_s1_0EEE9from_iterB17_.exit.i.i

bb.ad:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i
  store i64 0, ptr %i.p, align 8, !alias.scope !2241, !noalias !2254
  %i.jd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.jd, align 8, !alias.scope !2241, !noalias !2254
  %i.je = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.je, align 8, !alias.scope !2241, !noalias !2254
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtB2k_3map3MapIB3a_INtNtB15_8flat_map4IterB11_NtNtNtNtB17_6parser7matches11matched_arg10MatchedArgENCNvMNtB4u_9validatorNtB5k_9Validator24build_conflict_err_usage0ENCB5h_s_0ENCB5h_s0_0ENCB5h_s1_0EEE9from_iterB17_.exit.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtB2k_3map3MapIB3a_INtNtB15_8flat_map4IterB11_NtNtNtNtB17_6parser7matches11matched_arg10MatchedArgENCNvMNtB4u_9validatorNtB5k_9Validator24build_conflict_err_usage0ENCB5h_s_0ENCB5h_s0_0ENCB5h_s1_0EEE9from_iterB17_.exit.i.i: ; preds = %bb.ad, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB21_6filter6FilterIB2R_INtNtB21_3map3MapIB2R_INtNtBV_8flat_map4IterBR_NtNtNtNtBX_6parser7matches11matched_arg10MatchedArgENCNvMNtB49_9validatorNtB4Y_9Validator24build_conflict_err_usage0ENCB4V_s_0ENCB4V_s0_0ENCB4V_s1_0EEE11spec_extendBX_.exit.i.i.i
  %i.jf = phi i64 [ %.pre70.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB21_6filter6FilterIB2R_INtNtB21_3map3MapIB2R_INtNtBV_8flat_map4IterBR_NtNtNtNtBX_6parser7matches11matched_arg10MatchedArgENCNvMNtB49_9validatorNtB4Y_9Validator24build_conflict_err_usage0ENCB4V_s_0ENCB4V_s0_0ENCB4V_s1_0EEE11spec_extendBX_.exit.i.i.i ], [ 0, %bb.ad ]
  %i.jg = phi ptr [ %.pre.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB21_6filter6FilterIB2R_INtNtB21_3map3MapIB2R_INtNtBV_8flat_map4IterBR_NtNtNtNtBX_6parser7matches11matched_arg10MatchedArgENCNvMNtB49_9validatorNtB4Y_9Validator24build_conflict_err_usage0ENCB4V_s_0ENCB4V_s0_0ENCB4V_s1_0EEE11spec_extendBX_.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.ad ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2240
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.jf ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !noalias !2240
  %.sroa.054.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.054.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.054.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.5.0.copyload.i.ph, ptr %.sroa.054.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.054.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr null, ptr %.sroa.054.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.054.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr null, ptr %.sroa.054.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.054.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.jg, ptr %.sroa.054.sroa.10.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.054.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.ji, ptr %.sroa.054.sroa.11.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.054.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr %i.fh, ptr %.sroa.054.sroa.12.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.455.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 2 uses
  store ptr %i.jg, ptr %.sroa.455.0..sroa_idx.i.i, align 8, !noalias !2240
  %.sroa.556.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 3 uses
  store ptr %i.ji, ptr %.sroa.556.0..sroa_idx.i.i, align 8, !noalias !2240
  call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2256
  %i.jj = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtB6_6filter6FilterINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB35_6parser9validatorNtB3O_9Validator24build_conflict_err_usages2_0EINtNtB6_3map3MapIB2A_TNtNtNtB35_7builder13arg_predicate12ArgPredicateB2Z_EENCNCB3L_s3_00ENCB3L_s3_0ENCB3L_s4_0EB2z_EENtNtNtB8_6traits8iterator8Iterator4nextB35_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.n) #43, !noalias !2257 ; 2 uses
  %i.jk = extractvalue { ptr, i64 } %i.jj, 0      ; 2 uses
  %.not.i25.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i25.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_5chain5ChainINtNtB2k_6filter6FilterINtNtB2k_7flatten7FlatMapINtNtB2k_10filter_map9FilterMapINtNtNtB2o_5slice4iter4IterB11_ENCNvMNtNtB17_6parser9validatorNtB5m_9Validator24build_conflict_err_usages2_0EINtNtB2k_3map3MapIB4M_TNtNtNtB17_7builder13arg_predicate12ArgPredicateB11_EENCNCB5j_s3_00ENCB5j_s3_0ENCB5j_s4_0EB4L_EEE9from_iterB17_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtB2k_3map3MapIB3a_INtNtB15_8flat_map4IterB11_NtNtNtNtB17_6parser7matches11matched_arg10MatchedArgENCNvMNtB4u_9validatorNtB5k_9Validator24build_conflict_err_usage0ENCB5h_s_0ENCB5h_s0_0ENCB5h_s1_0EEE9from_iterB17_.exit.i.i
  %i.jl = extractvalue { ptr, i64 } %i.jj, 1
  %i.jm = load ptr, ptr %i.n, align 8, !alias.scope !2258, !noalias !2259, !noundef !11
  %.not.i.i.i.i23.i = icmp eq ptr %i.jm, null
  %i.jn = load ptr, ptr %.sroa.455.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2259, !noundef !11 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.jn, null      ; 2 uses
  br i1 %.not.i.i.i.i23.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not7.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtB6_6filter6FilterINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB35_6parser9validatorNtB3O_9Validator24build_conflict_err_usages2_0EINtNtB6_3map3MapIB2A_TNtNtNtB35_7builder13arg_predicate12ArgPredicateB2Z_EENCNCB3L_s3_00ENCB3L_s3_0ENCB3L_s4_0EB2z_EENtNtNtB8_6traits8iterator8Iterator9size_hintB35_.exit.i.i.i, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not7.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtB6_6filter6FilterINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB35_6parser9validatorNtB3O_9Validator24build_conflict_err_usages2_0EINtNtB6_3map3MapIB2A_TNtNtNtB35_7builder13arg_predicate12ArgPredicateB2Z_EENCNCB3L_s3_00ENCB3L_s3_0ENCB3L_s4_0EB2z_EENtNtNtB8_6traits8iterator8Iterator9size_hintB35_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val12.i.i.i.i.i = load ptr, ptr %.sroa.556.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2259, !nonnull !11, !noundef !11
  %i.jo = ptrtoint ptr %.val12.i.i.i.i.i to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub nuw i64 %i.jo, %i.jp
  %i.jr = lshr exact i64 %i.jq, 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtB6_6filter6FilterINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB35_6parser9validatorNtB3O_9Validator24build_conflict_err_usages2_0EINtNtB6_3map3MapIB2A_TNtNtNtB35_7builder13arg_predicate12ArgPredicateB2Z_EENCNCB3L_s3_00ENCB3L_s3_0ENCB3L_s4_0EB2z_EENtNtNtB8_6traits8iterator8Iterator9size_hintB35_.exit.i.i.i

bb.ai:                                            ; preds = %bb.af
  %.val10.i.i.i.i.i = load ptr, ptr %.sroa.556.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2259, !nonnull !11, !noundef !11
  %i.js = ptrtoint ptr %.val10.i.i.i.i.i to i64
  %i.jt = ptrtoint ptr %i.jn to i64
  %i.ju = sub nuw i64 %i.js, %i.jt
  %i.jv = lshr exact i64 %i.ju, 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtB6_6filter6FilterINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB35_6parser9validatorNtB3O_9Validator24build_conflict_err_usages2_0EINtNtB6_3map3MapIB2A_TNtNtNtB35_7builder13arg_predicate12ArgPredicateB2Z_EENCNCB3L_s3_00ENCB3L_s3_0ENCB3L_s4_0EB2z_EENtNtNtB8_6traits8iterator8Iterator9size_hintB35_.exit.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtB6_6filter6FilterINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB35_6parser9validatorNtB3O_9Validator24build_conflict_err_usages2_0EINtNtB6_3map3MapIB2A_TNtNtNtB35_7builder13arg_predicate12ArgPredicateB2Z_EENCNCB3L_s3_00ENCB3L_s3_0ENCB3L_s4_0EB2z_EENtNtNtB8_6traits8iterator8Iterator9size_hintB35_.exit.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i.i.i.i.i = phi i64 [ %i.jv, %bb.ai ], [ 0, %bb.ag ], [ %i.jr, %bb.ah ], [ 0, %bb.af ] ; 2 uses
  %i.jw = call i64 @llvm.umax.i64(i64 %.sink.i.i.i.i.i, i64 3) ; 2 uses
  %..i.i.i.i = add nuw nsw i64 %i.jw, 1           ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser12add_defaults:bb.a
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 136
  %.val = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 144
  %.val5 = load i64, ptr %i.h, align 8, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %.val5, 600
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %i.j = icmp eq i64 %.val5, 0
  br i1 %i.j, label %.loopexit11, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.4.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i54.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i55.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.03.027 = phi ptr [ %.val, %.lr.ph ], [ %i.dj, %.loopexit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8063)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 408
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !8062, !noalias !8063, !noundef !11 ; 3 uses
  %i.q = icmp ult i64 %i.p, 164703072086692426
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 536
  %.val15.i = load ptr, ptr %i.k, align 8, !alias.scope !8063, !noalias !8062, !nonnull !11, !noundef !11 ; 3 uses
  %.val16.i = load i64, ptr %i.l, align 8, !alias.scope !8063, !noalias !8062, !noundef !11 ; 2 uses
  %.val17.i = load ptr, ptr %i.s, align 8, !alias.scope !8062, !noalias !8063 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 544
  %.val18.i = load i64, ptr %i.t, align 8, !alias.scope !8062, !noalias !8063 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %.val16.i, 4
  %i.u = getelementptr inbounds nuw i8, ptr %.val15.i, i64 %.idx.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i
  %.sroa.03.04.i.i.i = phi ptr [ %i.y, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %.val15.i, %bb.c ] ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.03.04.i.i.i, i64 8
  %.val5.i.i.i = load i64, ptr %i.v, align 8, !noalias !8064, !noundef !11
  %i.w = icmp eq i64 %.val5.i.i.i, %.val18.i
  br i1 %i.w, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.03.04.i.i.i, align 8, !noalias !8064, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i) ]
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val17.i, i64 %.val18.i), !noalias !8064
  %i.x = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.x, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.04.i.i.i, i64 16 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not6.i.i.i, label %.lr.ph.i, label %.lr.ph.i.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get.exit.thread.i, %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 384
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !8062, !noalias !8063, !noundef !11 ; 7 uses
  %i.ab = icmp ult i64 %i.aa, 576460752303423488
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %.loopexit, label %bb.r

.lr.ph.i:                                         ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 400
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !8062, !noalias !8063, !nonnull !11, !noundef !11 ; 2 uses
  %.idx88.i = mul nuw nsw i64 %i.p, 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx88.i
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !8063, !noalias !8062 ; 2 uses
  %i.ah = load ptr, ptr %i.n, align 8, !alias.scope !8063, !noalias !8062, !nonnull !11
  br label %.lr.ph.i.i22.preheader.i

.lr.ph.i.i22.preheader.i:                         ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get.exit.thread.i, %.lr.ph.i
  %.sroa.01.087.i = phi ptr [ %i.ai, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get.exit.thread.i ], [ %i.ae, %.lr.ph.i ] ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.01.087.i, i64 56 ; 2 uses
  %.sroa.01.0.val.i = load ptr, ptr %.sroa.01.087.i, align 8, !noalias !8064 ; 2 uses
  %i.aj = getelementptr i8, ptr %.sroa.01.087.i, i64 8
  %.sroa.01.0.val10.i = load i64, ptr %i.aj, align 8, !noalias !8064 ; 2 uses
  br label %.lr.ph.i.i22.i

.lr.ph.i.i22.i:                                   ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i, %.lr.ph.i.i22.preheader.i
  %.sroa.0.019.i.i.i = phi ptr [ %i.ak, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %.val15.i, %.lr.ph.i.i22.preheader.i ] ; 3 uses
  %.sroa.8.08.i.i.i = phi i64 [ %i.al, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %.lr.ph.i.i22.preheader.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 16 ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.8.08.i.i.i, 1
  %i.am = getelementptr i8, ptr %.sroa.0.019.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.am, align 8, !noalias !8065, !noundef !11
  %i.an = icmp eq i64 %.val7.i.i.i, %.sroa.01.0.val10.i
  br i1 %i.an, label %.split.i.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i22.i
  %.val.i.i23.i = load ptr, ptr %.sroa.0.019.i.i.i, align 8, !noalias !8065, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.val.i) ]
  %bcmp.i.i.i.i24.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i23.i, ptr nonnull readonly %.sroa.01.0.val.i, i64 %.sroa.01.0.val10.i), !noalias !8065
  %i.ao = icmp eq i32 %bcmp.i.i.i.i24.i, 0
  br i1 %i.ao, label %bb.d, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i22.i
  %i.ap = icmp eq ptr %i.ak, %i.u
  br i1 %i.ap, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get.exit.thread.i, label %.lr.ph.i.i22.i

bb.d:                                             ; preds = %.split.i.i.i
  %i.aq = icmp ult i64 %.sroa.8.08.i.i.i, %i.ag
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !8065
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.087.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !8064, !noundef !11 ; 2 uses
  %.not8.i = icmp eq ptr %i.as, null
  br i1 %.not8.i, label %_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEIB1d_B29_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB2T_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB3F_3any5checkRB29_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5N_6Parser17add_default_value0E0E0B4z_EB5R_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [104 x i8], ptr %i.ah, i64 %.sroa.8.08.i.i.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 80
  %.val19.i = load ptr, ptr %i.au, align 8, !noalias !8064, !nonnull !11, !noundef !11 ; 2 uses
  %i.av = getelementptr i8, ptr %i.at, i64 88
  %.val20.i = load i64, ptr %i.av, align 8, !noalias !8064, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val20.i, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.val19.i, i64 %.idx.i
  %.not.i.i8.i.i = icmp eq i64 %.val20.i, 0
  br i1 %.not.i.i8.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get.exit.thread.i, label %.lr.ph.i.i9.i.i

.lr.ph.i.i9.i.i:                                  ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.01.087.i, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Y_NCINvNvB3W_3any5checkRB2e_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5S_6Parser17add_default_value0E0E0E0B5W_.exit.backedge.i.i.i.i, %.lr.ph.i.i9.i.i
  %i.ay = phi ptr [ %.val19.i, %.lr.ph.i.i9.i.i ], [ %i.az, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Y_NCINvNvB3W_3any5checkRB2e_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5S_6Parser17add_default_value0E0E0E0B5W_.exit.backedge.i.i.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val6.i.i10.i.i = load ptr, ptr %i.ba, align 8, !noalias !8066, !nonnull !11, !noundef !11 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  %.val7.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !8066, !noundef !11 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.val7.i.i.i.i, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.val6.i.i10.i.i, i64 %.idx.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val7.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Y_NCINvNvB3W_3any5checkRB2e_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5S_6Parser17add_default_value0E0E0E0B5W_.exit.backedge.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h
  %i.bd = load i64, ptr %i.ax, align 8, !noalias !8067, !noundef !11 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB2A_6Parser17add_default_value0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.be = phi ptr [ %.val6.i.i10.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bf, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB2A_6Parser17add_default_value0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val6.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !noalias !8067, !noundef !11
  %i.bh = icmp eq i64 %i.bd, %.val6.i.i.i.i.i.i.i
  br i1 %i.bh, label %.split.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB2A_6Parser17add_default_value0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.i
  %i.bi = getelementptr i8, ptr %i.be, i64 8
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !8067, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.as, ptr nonnull readonly %.val5.i.i.i.i.i.i.i, i64 %i.bd), !noalias !8067
  %i.bj = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEIB1d_B29_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB2T_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB3F_3any5checkRB29_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5N_6Parser17add_default_value0E0E0B4z_EB5R_.exit.thread.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB2A_6Parser17add_default_value0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB2A_6Parser17add_default_value0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i, %bb.i
  %.not15.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bc
  br i1 %.not15.i.i.i.i.i.i.i, label %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Y_NCINvNvB3W_3any5checkRB2e_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5S_6Parser17add_default_value0E0E0E0B5W_.exit.backedge.i.i.i.i, label %bb.i

_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Y_NCINvNvB3W_3any5checkRB2e_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5S_6Parser17add_default_value0E0E0E0B5W_.exit.backedge.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB2A_6Parser17add_default_value0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i.i.i.i, %bb.h
  %.not23.i.i.i.i = icmp eq ptr %i.az, %i.aw
  br i1 %.not23.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get.exit.thread.i, label %bb.h

_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEIB1d_B29_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB2T_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB3F_3any5checkRB29_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5N_6Parser17add_default_value0E0E0B4z_EB5R_.exit.thread.i: ; preds = %bb.f, %.split.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.087.i, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !range !13, !noalias !8064, !noundef !11
  %.not9.i = icmp eq i64 %i.bl, -1
  br i1 %.not9.i, label %.loopexit, label %bb.j

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get.exit.thread.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Y_NCINvNvB3W_3any5checkRB2e_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5S_6Parser17add_default_value0E0E0E0B5W_.exit.backedge.i.i.i.i, %bb.g
  %i.bm = icmp eq ptr %i.ai, %i.af
  br i1 %i.bm, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i, label %.lr.ph.i.i22.preheader.i

bb.j:                                             ; preds = %_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEIB1d_B29_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB2T_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB3F_3any5checkRB29_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5N_6Parser17add_default_value0E0E0B4z_EB5R_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8064
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.087.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !8064, !nonnull !11, !noundef !11
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.01.087.i, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !8064, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8068)
  %i.br = mul nuw nsw i64 %i.bq, 24               ; 2 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.bq, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.l, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.k
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8069
  %i.bt = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.br, i64 noundef range(i64 1, 9) 8) #43, !noalias !8069 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.l, label %.preheader.i.i.i.i

bb.l:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.br, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.j ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #46, !noalias !8070
  unreachable

.preheader.i.i.i.i:                               ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i
  %i.bv = phi i64 [ %i.cd, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bv ; 2 uses
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !8071, !noalias !8072, !nonnull !11, !noundef !11
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !8071, !noalias !8072, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val12.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %.preheader.i.i.i.i
  %i.by = icmp eq i64 %.val12.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8073
  %i.bz = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !8073 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i) #46, !noalias !8074
  unreachable

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i, i1 false), !noalias !8074
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.m
  %i.cb = phi ptr [ %i.bz, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.m ]
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bv ; 3 uses
  store i64 %.val12.i.i.i.i.i.i.i, ptr %i.cc, align 8, !noalias !8075
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cb, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8075
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %.val12.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8075
  %i.cd = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bq
  br i1 %i.ce, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i, label %.preheader.i.i.i.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i, %bb.k
  %.sroa.10.0.i11.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.bt, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i ]
  store i64 %i.bq, ptr %i.d, align 8, !alias.scope !8068, !noalias !8064
  store ptr %.sroa.10.0.i11.i.i, ptr %.sroa.4.0..sroa_idx.i27.i, align 8, !alias.scope !8068, !noalias !8064
  store i64 %i.bq, ptr %.sroa.5.0..sroa_idx.i28.i, align 8, !alias.scope !8068, !noalias !8064
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 8 %0, i8 noundef -1, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %.sroa.03.027, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0, i64 undef, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43
  %i.cf = load i64, ptr %i.c, align 8, !range !58, !noalias !8064, !noundef !11
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !8064, !nonnull !11, !align !17, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8064
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit

bb.q:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8064
  br label %.loopexit

bb.r:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 536
  %.val11.i = load ptr, ptr %i.k, align 8, !alias.scope !8063, !noalias !8062, !nonnull !11, !noundef !11 ; 2 uses
  %.val12.i = load i64, ptr %i.l, align 8, !alias.scope !8063, !noalias !8062, !noundef !11 ; 2 uses
  %.val13.i = load ptr, ptr %i.cj, align 8, !alias.scope !8062, !noalias !8063 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 544
  %.val14.i = load i64, ptr %i.ck, align 8, !alias.scope !8062, !noalias !8063 ; 2 uses
  %.idx.i.i29.i = shl nuw nsw i64 %.val12.i, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.idx.i.i29.i
  %.not.i.i30.i = icmp eq i64 %.val12.i, 0
  br i1 %.not.i.i30.i, label %.loopexit.i, label %.lr.ph.i.i31.i

.lr.ph.i.i31.i:                                   ; preds = %bb.r, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i
  %.sroa.03.04.i.i32.i = phi ptr [ %i.cp, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i ], [ %.val11.i, %bb.r ] ; 3 uses
  %i.cm = getelementptr i8, ptr %.sroa.03.04.i.i32.i, i64 8
  %.val5.i.i33.i = load i64, ptr %i.cm, align 8, !noalias !8064, !noundef !11
  %i.cn = icmp eq i64 %.val5.i.i33.i, %.val14.i
  br i1 %i.cn, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i: ; preds = %.lr.ph.i.i31.i
  %.val.i.i38.i = load ptr, ptr %.sroa.03.04.i.i32.i, align 8, !noalias !8064, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %bcmp.i.i.i.i39.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i38.i, ptr nonnull readonly %.val13.i, i64 %.val14.i), !noalias !8064
  %i.co = icmp eq i32 %bcmp.i.i.i.i39.i, 0
  br i1 %i.co, label %.loopexit, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i, %.lr.ph.i.i31.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.04.i.i32.i, i64 16 ; 2 uses
  %.not6.i.i35.i = icmp eq ptr %i.cp, %i.cl
  br i1 %.not6.i.i35.i, label %.loopexit.i, label %.lr.ph.i.i31.i

.loopexit.i:                                      ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8064
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 376
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !8062, !noalias !8063, !nonnull !11, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8076)
  %or.cond.i.i.i41.i = icmp samesign ugt i64 %i.aa, 384307168202282325
  br i1 %or.cond.i.i.i41.i, label %bb.s, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i, !prof !21

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i: ; preds = %.loopexit.i
  %i.cs = mul nuw nsw i64 %i.aa, 24               ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8077
  %i.ct = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cs, i64 noundef range(i64 1, 9) 8) #43, !noalias !8077 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.s, label %.preheader.i.i.i46.i

bb.s:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i, %.loopexit.i
  %.sroa.10.0.ph.i.i57.i = phi i64 [ %i.cs, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i ], [ undef, %.loopexit.i ]
  %.sroa.4.0.ph.i.i58.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i ], [ 0, %.loopexit.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i58.i, i64 %.sroa.10.0.ph.i.i57.i) #46, !noalias !8078
  unreachable

.preheader.i.i.i46.i:                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i
  %i.cv = phi i64 [ %i.dd, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cv ; 2 uses
  %.val11.i.i.i.i.i.i47.i = load ptr, ptr %i.cw, align 8, !alias.scope !8079, !noalias !8080, !nonnull !11, !noundef !11
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %.val12.i.i.i.i.i.i48.i = load i64, ptr %i.cx, align 8, !alias.scope !8079, !noalias !8080, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i49.i = icmp slt i64 %.val12.i.i.i.i.i.i48.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i49.i, label %bb.u, label %bb.t, !prof !21

bb.t:                                             ; preds = %.preheader.i.i.i46.i
  %i.cy = icmp eq i64 %.val12.i.i.i.i.i.i48.i, 0
  br i1 %i.cy, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i: ; preds = %bb.t
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8081
  %i.cz = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i48.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !8081 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i, %.preheader.i.i.i46.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i56.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i ], [ 0, %.preheader.i.i.i46.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i56.i, i64 %.val12.i.i.i.i.i.i48.i) #46, !noalias !8082
  unreachable

bb.v:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i47.i, i64 %.val12.i.i.i.i.i.i48.i, i1 false), !noalias !8082
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.t
  %i.db = phi ptr [ %i.cz, %bb.v ], [ inttoptr (i64 1 to ptr), %bb.t ]
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cv ; 3 uses
  store i64 %.val12.i.i.i.i.i.i48.i, ptr %i.dc, align 8, !noalias !8083
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i51.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i51.i, align 8, !noalias !8083
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i52.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 %.val12.i.i.i.i.i.i48.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i52.i, align 8, !noalias !8083
  %i.dd = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %i.de = icmp eq i64 %i.dd, %i.aa
  br i1 %i.de, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENvMB3x_B3v_12to_os_stringEE9from_iterB3B_.exit.i, label %.preheader.i.i.i46.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENvMB3x_B3v_12to_os_stringEE9from_iterB3B_.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i
  store i64 %i.aa, ptr %i.b, align 8, !alias.scope !8076, !noalias !8064
  store ptr %i.ct, ptr %.sroa.4.0..sroa_idx.i54.i, align 8, !alias.scope !8076, !noalias !8064
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx.i55.i, align 8, !alias.scope !8076, !noalias !8064
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %0, i8 noundef -1, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %.sroa.03.027, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 undef, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43
  %i.df = load i64, ptr %i.a, align 8, !range !58, !noalias !8064, !noundef !11
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENvMB3x_B3v_12to_os_stringEE9from_iterB3B_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !8064, !nonnull !11, !align !17, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8064
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit

bb.x:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENvMB3x_B3v_12to_os_stringEE9from_iterB3B_.exit.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8064
  br label %.loopexit

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit: ; preds = %bb.p, %bb.w
  %.sroa.0.1.i = phi ptr [ %i.ci, %bb.p ], [ %i.di, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit11

.loopexit:                                        ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i, %_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEIB1d_B29_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB2T_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB3F_3any5checkRB29_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5N_6Parser17add_default_value0E0E0B4z_EB5R_.exit.thread.i, %bb.q, %bb.x, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 600 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.i
  br i1 %i.dk, label %.loopexit11, label %bb.b

.loopexit11:                                      ; preds = %.loopexit, %bb.a, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit ], [ null, %bb.a ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15match_arg_error(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree readonly captures(address) %.72.val, i64 %.80.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.47.i275 = alloca [31 x i8], align 1      ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [14 x i8], align 2                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [14 x i8], align 2                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [126 x i8], align 2              ; 36 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.9.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.9.i = alloca [16 x i8], align 8          ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [14 x i8], align 2               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 16              ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [14 x i8], align 2               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 9 uses
  %i.aq = alloca [16 x i8], align 16              ; 4 uses
  %i.ar = alloca [16 x i8], align 16              ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.418.i = alloca [31 x i8], align 1        ; 4 uses
end_hunk_1
